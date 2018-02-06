<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head> 
<title>OrderPage</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0;">

	<link id="wsite-base-style" rel="stylesheet" type="text/css" href="http://cdn2.editmysite.com/css/sites.css?buildTime=1234" />
	<link rel="stylesheet" type="text/css" href="http://cdn2.editmysite.com/css/old/fancybox.css?1234" />
	<link rel="stylesheet" type="text/css" href="http://cdn2.editmysite.com/css/social-icons.css?buildtime=1234" media="screen,projection" />
	<link rel="stylesheet" type="text/css" href="order/files/main_style.css?1517749686" title="wsite-theme-css" />
	<link rel="stylesheet" type="text/css" href="order/files/main_style.css" title="wsite-theme-csss" />
	<style type='text/css'></style>
	<script>
	var STATIC_BASE = '//cdn1.editmysite.com/';
	var ASSETS_BASE = '//cdn2.editmysite.com/';
	var STYLE_PREFIX = 'wsite';
	</script>
	<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js'></script>	
	<script type="text/javascript" src="http://cdn2.editmysite.com/js/lang/en/stl.js?buildTime=1234&"></script>
	<script src="http://cdn2.editmysite.com/js/site/main.js?buildTime=1234"></script>
	<script type="text/javascript">_W.configDomain = "www.weebly.com";</script>
	<script>_W.relinquish && _W.relinquish()</script>
	<script type="text/javascript" src="http://cdn2.editmysite.com/js/lang/en/stl.js?buildTime=1234&"></script>
	<script> _W.themePlugins = {"navpane":{"condense":1024,"forced":1}};</script>
	<script src='http://cdn2.editmysite.com/js/site/theme-plugins.js?buildTime=1234'></script>
	<script type="text/javascript"> _W.recaptchaUrl = "https://www.google.com/recaptcha/api.js"; </script>
	<script type="text/javascript"> window._W = window._W || {}; _W.showV2Footer = 0; </script>							
</head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type='text/javascript' src="/js/app.js"></script>	
	<body class="header-page  wsite-page-index  wsite-theme-light">
	<div id="header">
		<div class="container">
					<div class="icons">
						<div class="w-navpane-trigger hamburger">
							<span></span>
						</div>
					</div>
					<div class="logo">
						<span class="wsite-logo">		
							<a href="">
								<img src="order/images/logo1.jpg" alt="LOTTERIA" />
							</a>
						</span>
					</div>
					<div class="icons">
						<a href="#" class="close w-navpane-close"><span></span></a>
					</div>
				</div>
				<div id="navlist" class="w-navlist nav">
					<ul class="wsite-menu-default"></ul>
				</div>
				<div id="menu" class="slide-panel">
					<div id="nav" class="nav w-navpane">
						<div class="container"><ul class="wsite-menu-default"></ul></div>
					</div>
				</div>
	</div>

<<<<<<< HEAD
<c:choose>
	<c:when test="${empty sessionScope.user }">잘못된 접근입니다.</c:when>
	<c:otherwise>
	<div id="content">
		<div id="main">
		<div id="wsite-content" class="wsite-elements wsite-not-footer">
		<div class="wsite-section-wrap">
		<div class="wsite-section wsite-body-section wsite-section-bg-color wsite-background-11 wsite-custom-background" 
			style="height: auto;background-color: #FFFFFF;
			background-image: none;
			is_customized: 1;" >
		<div class="wsite-section-content">
		<div class="container">
		<div class="wsite-section-elements">
			<h2 style="text-align:center;"><font size="3">L.DT</font></h2>
			<h2 style="text-align:center;"><font size="3">${sessionScope.user.getUser_id() }(${sessionScope.user.getUser_name() })님 어서오세요.</font></h2>
			<h2 style="text-align:center;"><font size="6"><strong>메뉴</strong></font></h2>
		</div>
			
		<c:choose>
			<c:when test="${!empty recommend_menu }">
				<div>
				<div class="wsite-multicol"><div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
					<table class="wsite-multicol-table">
						<tbody class="wsite-multicol-tbody">
							<tr class="wsite-multicol-tr">
<<<<<<< HEAD
								<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
									<div><div class="wsite-image wsite-image-border-none " style="padding-top:0px;padding-bottom:0px;margin-left:0px;margin-right:0px;text-align:center">
										<h2 class="wsite-content-title" style="text-align:center;">
											<font size="4">${recommend_menu.getMenu_name() }</font>
										</h2>
									<a>
										<img src="${recommend_menu.getMenu_img() }" alt="${recommend_menu.getMenu_name() }" style="width:251;max-width:100%" />
									</a>
									<div class="paragraph" style="text-align:center;">
									<fmt:formatNumber value="${recommend_menu.getMenu_kcal()}" type="number"/>kcal / 
									<fmt:formatNumber value="${recommend_menu.getMenu_price() }" type="currency"/></div>
									<div style="display:block;font-size:90%"></div>
									</div></div>							
								</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
<<<<<<< HEAD
				</div>
			</c:when>
			<c:otherwise>
				<c:forEach var="menu" items="${menus}">
					<div>
					<div class="wsite-multicol">
						<div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
							<table class="wsite-multicol-table">
								<tbody class="wsite-multicol-tbody">
									<tr class="wsite-multicol-tr">
									<!-- AZ버거 베이컨세트 -->
										<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
											<div><div class="wsite-image wsite-image-border-none " style="padding-top:0px;padding-bottom:0px;margin-left:0px;margin-right:0px;text-align:center">
												<h2 class="wsite-content-title" style="text-align:center;">
													<font size="4">${menu.getMenu_name()}</font>
												</h2>
											<a>
											<img src="${menu.getMenu_img()}" alt="${menu.getMenu_name()}" style="width:251;max-width:100%" />
											</a>
											<div class="paragraph" style="text-align:center;">
											<fmt:formatNumber value="${menu.getMenu_kcal()}" type="number"/>kcal / 
											<fmt:formatNumber value="${menu.getMenu_price() }" type="currency"/>
											</div>
											<div style="display:block;font-size:90%"></div>
											</div></div>									
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					</div>
				</c:forEach>
				
			</c:otherwise>
		</c:choose>
		<div>
			<form id="form-646132443274734859">
				<div id="646132443274734859-form-parent" class="wsite-form-container" style="margin-top:0px;">
					<ul class="formlist" id="646132443274734859-form-list">
						<h2 class="wsite-content-title" style="text-align:center;"><strong><font size="4">주문서 작성</font></strong></h2>
							<div><div style="height: 0px; overflow: hidden; width: 0px;"></div>
							<hr class="styled-hr" style="width:0px;"></hr>
							<div style="height: 0px; overflow: hidden; width: 0px;"></div></div>
										<div><div class="wsite-multicol"><div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
										<table class="wsite-multicol-table">
											<tbody class="wsite-multicol-tbody">
												<tr class="wsite-multicol-tr">	
													<td class="wsite-multicol-col" style="width:34.377097748978%; padding:0 15px;">
														<div>
															<div class="wsite-form-field" style="margin:0px 0px 0px 0px;">
											  				<label class="wsite-form-label" for="input-598954364540785139">메뉴선택 <span class="form-required">*</span></label>
											  				<div class="wsite-form-radio-container">
														    <select id="selected_menu">
																<option value='메뉴'>메뉴</option>
															<c:forEach var="menu" items="${menus}">
																<option value="${menu.getMenu_id() }">${menu.getMenu_name() }</option>
															</c:forEach>
															</select>
												  			</div>
												  			<div id="instructions-메뉴선택" class="wsite-form-instructions" style="display:none;"></div>
												  			</div>
												  		</div>
													</td>				
													<td class="wsite-multicol-col" style="width:16.62199059602%; padding:0 15px;">
													<div>
														<div class="wsite-form-field" style="margin:0px 0px 0px 0px;">
															<label class="wsite-form-label" for="orderQuantity">개수 <span class="form-required">*</span></label>
															<div class="wsite-form-input-container">
																<!-- 개수 타입 -->
																<input aria-required="true" id="quantity" class="wsite-form-input wsite-input wsite-input-width-100px" type="number" name="_u615700272928674583" />
															</div>
															<div id="instructions-615700272928674583" class="wsite-form-instructions" style="display:none;"></div>
														</div>
													</div>					
													</td>				
													<td class="wsite-multicol-col" style="width:16.989745267273%; padding:0 15px;">
														<div>
															<div class="wsite-form-field" style="margin:0px 0px 0px 0px;">
																<label class="wsite-form-label" for="input-846695881457546274">메뉴추가 <span class="form-not-required">*</span></label>
																<div class="wsite-form-radio-container">
																  <span class='form-radio-container'>
																	  <button type='button' id='btnAdd'>추가</button>
																  </span>
																</div>
																<div id="instructions-메뉴추가" class="wsite-form-instructions" style="display:none;"></div>
															</div>
														</div>
													</td>
										<c:if test="${!empty sessionScope.cart }">
													<td class="wsite-multicol-col" style="width:32.011166387729%; padding:0 15px;">
													<div><div class="wsite-form-field" style="margin:0px 0px 10px 0px;">
													<label class="wsite-form-label" for="orderDetail">주문내역 <span class="form-not-required">*</span></label>
													<div class="wsite-form-input-container">
<textarea id="orderDetail" class="wsite-form-input wsite-input wsite-input-width-285px" name="_u249932526256207960" style="height: 50px"><c:forEach var="menu" items="${menus }"><c:if test="${!empty sessionScope.cart.get(menu) }">${menu.getMenu_name() } - ${sessionScope.cart.get(menu) }개</c:if></c:forEach></textarea>
													</div>
													<div id="instructions-249932526256207960" class="wsite-form-instructions" style="display:none;"></div>
													</div></div>
													</td>
										</c:if>			
												</tr>
										</tbody>
								</table>
						</div>
					</div>
				</div>
			</ul>
		</div>
		
				<c:if test="${!empty sessionScope.cart }">
				<div style="display:none; visibility:hidden;">
					<input type="text" name="wsite_subject" />
				</div>
				<div style="text-align:right; margin-top:10px; margin-bottom:0px;">
					<a class="wsite-button">
						<button class="wsite-button" type="button" id="btnOrder">주문</button>
					</a>
				</div>
				</c:if>
				</form>
				</div>
			</div>
		</div>
			</div>
	</div>
</div>
</div>
		</div>
	</c:otherwise>
</c:choose>
	<div class="overlay w-navpane-close"></div>
	<script type="text/javascript" src="order/files/theme/plugins.js"></script>
	<script type="text/javascript" src="order/files/theme/custom.js"></script>

	</body>
</html>
