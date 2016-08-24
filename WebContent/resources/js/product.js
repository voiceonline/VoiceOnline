/**
 * 
 */

function productDetails(productId){
	var formObj = $(document.createElement('form'));
	formObj.attr("method", "post");
	formObj.attr("action", "/VoiceOnline/pages/productDetail.jsp");
	
	var userIdObj = $(document.createElement('input'));
	userIdObj.attr("type", "text");
	userIdObj.attr("value", productId);
	userIdObj.attr("name", "productId");
	
	formObj.submit();
}
