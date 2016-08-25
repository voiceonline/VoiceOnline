/**
 * 
 */
function updateCartValue(obj){
	//obj = [{"3":{"PRODUCT_DESC":"The smooth, continuous unibody design created for iPhone 6 comes to iPhone 6s. Its familiar form feels just right in your hand. And now there are four stunning ?nishes to choose from: gold, silver, space grey, and the new rose gold.","ATTRIB_MAP":{"Brand":"Hipster","Price":"1245","Size":"8 D","Color":"Navy","ASIN":"B01D6R0OUE"},"CATEGORY_NAME":"Shoes","PRODUCT_NAME":"Apple iPhone 6s"}}];
	
	var cartValue = localStorage.getItem('cartData');
	if(typeof cartValue != "undefied" && cartValue != null && cartValue != ""){
		var cartCount = localStorage.getItem('productCount');
		findAddTotalCount(cartCount);
		var objData = JSON.parse(cartValue);
		var addedData = [];
		//addedData.push(objData);
		
		objData.push(obj);
		cartValue = JSON.stringify(objData);
		
	}else{
		cartValue = [obj];
		findTotalCount(cartValue);
		cartValue = JSON.stringify(cartValue);
	}
	localStorage.setItem('cartData', cartValue);
}

function findTotalCount(products){
	if(products != null && typeof products != "undefined" && products != ""){
	//var data = JSON.parse(products);
	var totalCount = products.length;
	localStorage.setItem('productCount', totalCount);
	$('.BasketH').text("(" + totalCount + ")");
	}
	
}

function findAddTotalCount(count){
	var totalCount = ++count;
	localStorage.setItem('productCount', totalCount);
	$('.BasketH').text("(" + totalCount + ")");
}
