/**
 * 
 */
function updateCartValue(obj){
	
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

 var productNumber = 0;
function speakOutProduct(productList) {

	var keys = [];
	var productId, productName, productDesc, productCat;
	console.log("product number  " + productNumber);
	if(productList &&  productNumber < productList.length) {
		product = productList[productNumber];
	}
	
	/*for ( var productId in product) {
		// for(var productProp in product[productId]) {

		productName = product[productId]['PRODUCT_NAME'];
		productDesc = product[productId]['PRODUCT_DESC'];
		productCat = product[productId]['CATEGORY_NAME'];
		productAttributes = product[productId]['ATTRIB_MAP'];
		console.log(productName + ", " + productDesc + ", " + productCat);
		var price;
		for ( var productAttr in productAttributes) {

			if (productAttr == 'Price') {
				price = productAttributes[productAttr];
				break;
			}

		}
		voiceOnlineSpeak("Product Number " + productNumber);
		voiceOnlineSpeak("Product Name " + productName);
		//voiceOnlineSpeak("Product description " + productDesc);
		//voiceOnlineSpeak("Product price in " + price);
		
		
	}*/
	
	//for ( var productId in product) {
	// for(var productProp in product[productId]) {
	console.log("Id " + product.id);
	productName = product.name;
	productDesc = product.desc;
	productCat = product.category;
	productAttributes = product.attributes;
	console.log(productName + ", " + productDesc + ", " + productCat);
	var price;
	for ( var productAttr in productAttributes) {

		if (productAttr == 'Price') {
			price = productAttributes[productAttr];
			break;
		}

	}
	voiceOnlineSpeak("Product Name " + productName);
	//voiceOnlineSpeak("Product description " + productDesc);
	voiceOnlineSpeak("Product price in " + price);

	confirmProductToCart(product);
}

function speakNoOfProducts() {

	if (productList && productList.length > 0) {
		voiceOnlineSpeak(productList.length + " products found for "
				+ searchterm);
	} else {
		voiceOnlineSpeak("No products found");
	}

}

function confirmProductToCart(product) {
	
	console.log('confirmProductToCart');
	voiceOnlineSpeak("Say \"Yes\" to checkout this product,  or say \"no\" to move to next product ");
	startRecognizing(checkIfCart);
	
}

function checkIfCart(spokenWord) {
	
	console.log('checkIfCart' + spokenWord);
	
	if(spokenWord && spokenWord.trim().toLowerCase() === "yes" ) {
		addToCart();
	} else if(spokenWord && spokenWord.trim().toLowerCase() === "no"){
		voiceOnlineSpeak("Moving to next product");
		productNumber++;
		speakOutProduct(productList);
		
	}else{
		confirmProductToCart();
	}
	return false;	
	
}

function addToCart() {
	
	voiceOnlineSpeak(productList[productNumber].name + " has been addded to your shopping cart");
	updateCartValue(productList[productNumber]);
	console.log(JSON.stringify(localStorage.getItem('cartData')));
	
	
}

$(document).ready(function() {
	console.log("doc loaded");

	responsiveVoice.OnVoiceReady = function() {
		speakNoOfProducts();
		voiceOnlineSpeak("Listing searched products ....");
		
		
		//for ( var product in productList) {
	
			 speakOutProduct(productList);
		//}
	}
	// _.each(productList, speakOutProduct);
});

function run(){
	console.log("Call Run" + pause);
	if(pause){
		return false;
	}else{
		return true;
	}
}
