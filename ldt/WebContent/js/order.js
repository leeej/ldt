var menuMap = new Map();

/*
	1->AZ버거 베이컨 세트
	2->모짜렐라 인 더 버거 베이컨 세트
	3->한우불고기세트
	4->새우버거세트
*/
menuMap.set(1, "AZ버거 베이컨 세트");
menuMap.set(2, "모짜렐라 인 더 버거 베이컨 세트");
menuMap.set(3, "한우불고기세트");
menuMap.set(4, "새우버거세트");

var priceMap = new Map();

/*
	AZ버거 베이컨 세트->9400
	모짜렐라 인 더 버거 베이컨 세트->7500
	한우불고기세트->8400
	새우버거세트->5600
*/
priceMap.set(1, "9400");
priceMap.set(2, "7500");
priceMap.set(3, "8400");
priceMap.set(4, "5600");

/* key: menuId value: order quantity
 * 유저가 추가버튼을 누를시 메뉴추가
 */
var orderMap = new Map();
function addMenu(){	
	var tarSelBox = document.getElementById("menuSelect"); //메뉴박스
	var tarQuanMenu = document.getElementById("orderQuantity"); //메뉴수량	
	orderMap.set(tarSelBox.value, tarQuanMenu.value);
	displayOrderDetail();
	cleanMenu();
    /*
	for (var [key, value] of orderMap.entries()) {
		console.log(key + " = " + value);
	}
	*/
	
}
/* ++같은 메뉴 추가 주문시 수량변화 기능*/

function displayOrderDetail(){
	var orderString="";
    for (var [key, value] of orderMap.entries()) {
    	var temp=menuMap.get(parseInt(key))+" "+value+"개"+"\n"; 
    	orderString+=temp;
    	//console.log(key + " = " + value);
    }
    document.getElementById("orderDetail").value=orderString;
}

function cleanMenu(){
	document.getElementById("menuSelect").value="메뉴";
	document.getElementById("orderQuantity").value="";
}

var orderSummary="";
var totalPrice=0;
function makeOrderSum(){
	var orderSum="";
	var orderPrice=0;
    for (var [key, value] of orderMap.entries()) {
    	var temp=menuMap.get(parseInt(key))+" "+value+"개"+"\n";
    	orderPrice+=parseInt(priceMap.get(parseInt(key)))*parseInt(value);
    	orderSum+=temp;
    	//console.log(key + " = " + value);
    }
    orderSummary=orderSum;
    totalPrice=orderPrice;
}

function submitOrder(){
	//addMenu();
	makeOrderSum();
	var finalSum=orderSummary+"주문금액: "+totalPrice+"\n주문하시겠습니까?";
	if (confirm(finalSum)) {
        console.log("You pressed OK!");
    } else {
    	console.log("You pressed Cancel!");
    }
	
}



/*
 functions
	getMenu()
	button listner for 추가
	button listner for 주문
	Displaying order details
*/