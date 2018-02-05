package com.ldt.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ldt.dao.MenuDAO;
import com.ldt.dao.PaymentDAO;
import com.ldt.dao.UserDAO;
import com.ldt.vo.Menu;
import com.ldt.vo.Orderline;
import com.ldt.vo.Payment;
import com.ldt.vo.User;

@RestController
public class PaymentController {
	@Autowired
	private PaymentDAO paymentDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private MenuDAO menuDAO;
	
	@GetMapping("/order")
	public void goIndex(@RequestParam("user_id") String user_id, @RequestParam("menu_id") Integer menu_id, HttpServletRequest request, HttpServletResponse response){
		List<Menu> menus = menuDAO.selectAllMenu(); 
		String forwardURL = "/order/order.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
		HttpSession session = request.getSession();
		User user = userDAO.selectByUser_id(user_id);
		session.setAttribute("user", user);
		request.setAttribute("menus", menus);
		if(menu_id != null && !"".equals(menu_id)){
			Menu recommend_menu = menuDAO.selectByMenu_id(menu_id);
			request.setAttribute("recommend_menu", recommend_menu);
		}
		try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping("/addCart")
	public void addCart(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		HashMap<Menu, Integer> cart = (HashMap)session.getAttribute("cart");
		int menu_id = Integer.parseInt(request.getParameter("menu_id"));
		Menu menu = menuDAO.selectByMenu_id(menu_id);
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		if(cart == null){
			cart = new HashMap<Menu, Integer>();
			session.setAttribute("cart", cart);
		}
		Integer inCartQuantity = cart.get(menu);
		if(inCartQuantity != null)
			quantity += inCartQuantity;
		cart.put(menu, quantity);
	}
	
	@PostMapping("/addPayment")
	public Payment addPayment(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Payment payment = new Payment();
		User user = (User) session.getAttribute("user");
		HashMap<Menu, Integer> cart = (HashMap)session.getAttribute("cart");
		List<Menu> menus = menuDAO.selectAllMenu();
		List<Orderline> orderlines = new ArrayList<>();
		for(Menu menu:menus){
			if(cart.get(menu) != null){
				Orderline orderline = new Orderline();
				orderline.setMenu(menu);
				orderline.setQuantity(cart.get(menu));
				orderlines.add(orderline);
			}
		}
		payment.setUser(user);
		payment.setOrderline(orderlines);
		paymentDAO.insert(payment);
		payment.setResult("1");
		session.removeAttribute("cart");
		session.removeAttribute("uesr");
		return payment;
	}
	
	@GetMapping("/payment")
	public void goPayment(@RequestParam("car_number") String car_number){
		Payment payment = paymentDAO.selectByCar_number(car_number);
		paymentDAO.update(payment.getPayment_id());
		try {
			sendMesageAPI(payment);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping("/receipt")
	public void goReceipt(@RequestParam("payment_id") Integer payment_id, HttpServletRequest request, HttpServletResponse response){
		String forwardURL = "/receipt.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
		Payment payment = paymentDAO.selectByPayment_id(payment_id);
		request.setAttribute("payment", payment);
		try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @param meesagePlatformUrl
	 *            : 메시지플랫폼url
	 * @param send_phone
	 *            : 카카오 메시지를 받을 핸드폰 번호
	 * @param sender_key
	 *            : API 발송 key d6b73318d4927aa80df1022e07fecf06c55b44bf
	 * @param authKey
	 *            : 인증키
	 * @param message
	 *            : 보낼 메시지
	 * @return
	 * @throws Exception
	 */
	public int sendMesageAPI(Payment payment) throws Exception {
		User user = payment.getUser();
		String meesagePlatformUrl="http://210.93.181.229:9090/v1/send/kakao-friend";
		String authKey="Y2xhc3M6c2VjcmV0MTIhQA==";
		String sender_key = "d6b73318d4927aa80df1022e07fecf06c55b44bf";
		String receiptURL = "http://113.198.237.229:8080/receipt?payment_id="+payment.getPayment_id();
		String message = "\"[롯데리아] 결제 안내 알림\\n\\n "+user.getUser_name()+"고객님, 결제가 완료되었습니다.\\n\\n 자세한 결제 내역은 링크를 통해 확인해주세요.\\n\\n  감사합니다.(하하)\\n\\n\","
		+"\"button\" : [{\"name\":\"결제 내역 확인\",\"type\":\"WL\",\"url_mobile\":\""+receiptURL+"\"}]";
		CloseableHttpClient httpclient = HttpClients.createDefault();
		try {
			HttpPost httpPost = new HttpPost(meesagePlatformUrl);
			httpPost.setHeader("Authorization", "Basic " + authKey);
			httpPost.setHeader("Content-Type", "application/json; charset=UTF-8");
			String body2 = "{ \"msg_id\" : \"iot\", \"send_time\" : \"\",\"dest_phone\" : \"" + user.getPhone() + "\", \"send_phone\" : \""
					+ user.getPhone() + "\", \"sender_key\" : \"" + sender_key + "\", \"msg_body\" : " + message
					+ ", \"ad_flag\" : \"N\" }";

			ByteArrayEntity entity = new ByteArrayEntity(body2.getBytes("UTF-8"));

			System.out.println("TO Kakao BODY Message : " + body2);
			httpPost.setEntity(entity);

			CloseableHttpResponse res = httpclient.execute(httpPost);

			try {
				if (res.getStatusLine().getStatusCode() == 200) {
					org.apache.http.HttpEntity entity2 = (org.apache.http.HttpEntity) res.getEntity();
					System.out.println(EntityUtils.toString(entity2));
				} else {
					System.out.println(res.getStatusLine().getStatusCode());
				}
			} finally {
				res.close();
			}
		} finally {
			httpclient.close();
		}
		return 0;

	}

}
