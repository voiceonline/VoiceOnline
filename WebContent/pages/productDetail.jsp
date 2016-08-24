<!DOCTYPE html>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="com.org.voiceonline.search.SearchProducts"%>
<%@page import="com.org.voiceonline.generic.Utils"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
<title>Product detail</title>
<link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/master.css">
<link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/fonts.css">
<link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/icons.css">
<link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/modal.css">
<link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/video.css">
<link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/pdp.css">
<link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/responsive.css">
<style type="text/css">
.zoomImgCommon .s7zoomview{background-color:transparent;}
.zoomImgCommon .s7button{display:none;}
.zoomImgCommon.s7basiczoomviewer .s7zoomview .s7iconeffect{display:none;}
.img360Common.s7spinviewer {
    width: 640px !important;
    height: 480px !important;
}
.img360Common .s7button{display:none;}
.img360Common.s7spinviewer.s7mouseinput .s7spinview .s7iconeffect{display:none;}
</style>
</head>
<body>

<%
	String productId = Utils.getString(request.getParameter("productId"));
	SearchProducts products = new SearchProducts();
	
	LinkedHashMap<String, Object> productMap = products.search(null, productId);
	LinkedHashMap<String, Object> productInfoMap = null;
	LinkedHashMap<String, String> attributeMap = null;
	
	/*if(productMap.size() > 0){
	
	 for(String key : productMap.keySet()){			
		productInfoMap = (LinkedHashMap<String, Object>)productMap.get(key);
		attributeMap = (LinkedHashMap<String, String>)productInfoMap.get(Constants.ATTRIB_MAP); */
%>

	<div class="page" id="pdp">
		<!-- header -->
		
<!-- bread crumbs -->
		<div class="subHeader withBtn hidden-xs hide">
			<div class="container-fluid">
				<div class="row">
					<div class="pull-left">
						<a href="#">Home</a><span class="Ctm_icons RightArrowBC"></span><a href="#">Pay Monthly</a>
						<span class="Ctm_icons RightArrowBC"></span><span class="currOpacity">Samsung Galaxy S5</span>
					</div>
					<div class="pull-right">
						<button type="button" class="btn btn-default no-markup btn-sm allPhones">View all phones</button>
					</div>
				</div>
			</div>
		</div>
<!-- bread crumbs ends here -->
		<div class="content">
			<div class="container-fluid">
				<div class="urgencyMsg basic hide">
					<p class="pull-left RobotoRWhite18">
						<span class="icon van right25 pull-left"></span>
						<label class="msgText">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</label>
					</p>
					<span class="pull-right icons Close-2W removeUrgencyMsg"></span>
				</div>
				<div class="urgencyMsg countDownText hide">
					<p class="pull-left RobotoRWhite18">
						<span class="icon van right25 pull-left"></span>
						<label class="msgText">
							<span class="">Want it by </span><span class="RobotoBWhite18">4pm tomorrow,</span> 4 Dec and <span class="RobotoBWhite18">delivered free?</span>   
							Order within<span class="RobotoBWhite18 marginL10"> 03 hrs 23 mins</span>
						</label>
					</p>
					<span class="pull-right icons Close-2W removeUrgencyMsg"></span>
				</div>
				<div class="urgencyMsg countDownNum hide">
					<p class="pull-left RobotoRWhite18">
						<span class="icon van right25 pull-left"></span>
						<label class="msgText">
							<span class="">Time left for </span><span class="RobotoBWhite18">free 4pm delivery tomorrow</span>							
						</label>						
					</p>
					<div class="pull-left">
						<ul class="horizontal time marginT5">
							<li>
								<span class="timebox hour">01</span>HOURS
							</li>
							<li>
								<span class="timebox min">49</span>MINS
							</li>
							<li>
								<span class="timebox sec">56</span>SECS
							</li>
						</ul>
						
					</div>
					<span class="pull-right icons Close-2W removeUrgencyMsg"></span>
				</div>
				<div class="urgencyMsg mobile basic hidden-lg hide">
					<div class="row">
						<div class="col-xs-11 timeLeft">
							<p class="RobotoRGray15">Time left for <span class="RobotoBDarkGray15">free 4pm delivery tomorrow:</span></p>
							<ul class="horizontal time marginT5">
								<li>
									<span class="timebox hour">01</span>
									<label>HOURS</label>
								</li>
								<li>
									<span class="timebox min">49</span>
									<label>MINS</label>
								</li>
								<li>
									<span class="timebox sec">56</span>
									<label>SECS</label>
								</li>
							</ul>
							<img alt="" src="../images/vanMobile.png" class="urgencyVan"/>
						</div>
						<div class="col-xs-1">
							<span class="icons Close-2 pull-right removeUrgencyMsg"></span>
						</div>
					</div>
				</div>
				<div class="urgencyMsg mobile withProduct hidden-lg hide">
					<div class="row">
						<div class="col-xs-11 timeLeft">
							<p class="RobotoRGray15">Grab a <span class="RobotoBGreen15">free Samsung Galaxy Tab 3.0</span> with your Samsung Galaxy S5.</p>
							<div class="row marginT10">
								<div class="col-xs-5 RobotoBDarkGray15 marginT10">Order within:</div>
								<div class="col-xs-7">
									<ul class="horizontal time marginT5 pull-right">
										<li>
											<span class="timebox hour">01</span>
											<label>HOURS</label>
										</li>
										<li>
											<span class="timebox min">49</span>
											<label>MINS</label>
										</li>
										<li>
											<span class="timebox sec">56</span>
											<label>SECS</label>
										</li>
									</ul>
								</div>
							</div>													
						</div>
						<div class="col-xs-1">
							<span class="icons Close-2 pull-right removeUrgencyMsg"></span>
						</div>
					</div>
				</div>
				<div class="urgencyMsg mobile countDownText hidden-lg hide">
					<div class="row">
						<div class="col-xs-11 timeLeft">
							<p class="RobotoRGray15">Grab a <span class="RobotoBDarkGray15">free Samsung Galaxy Tab 3.0</span> with your Samsung Galaxy S5.</p>
							<div class="row marginT10">
								<p class="RobotoBDarkGray15 marginT10">Order within:<span class="RobotoBGreen15"> 01 hrs 59 mins 46 secs</span></p>								
							</div>													
						</div>
						<div class="col-xs-1">
							<span class="icons Close-2 pull-right removeUrgencyMsg"></span>
						</div>
					</div>
				</div>
				<div class="cTop productDisplay">
					<div class="row">
						<div class="col-lg-7 col-md-7 col-xs-12">
							<div class="view">
								<div class="typo">
									<div class="row">
										<div class="col-lg-3 col-sm-3 hidden-xs">
											<p><img alt="" src="../images/samsung_white.png"/></p>
											<span class="rating-static whiteR rating-45 marginT16"></span>
										</div>
										<div class="col-lg-9 col-sm-9 col-xs-12">
											<div class="titleDiv">
												<h1 class="phoneName RobotoBcWhite48 RobotoBcWhite27-xs">Samsung Galaxy S5</h1>
												
											</div>											
											
										</div>
									</div>
								</div>
								<div class="image marginT55 marginT30-xs ovrflwHid">
									<div class="col-lg-8 marginB25 hidden-lg">
										<div class="sliderHold">
											<ul class="sliderData phoneImages active" rel="images">
												<li class="active">
													<div class="zoomImgCommon" id="s7viewer"></div>
													<div class="interactionMsg">Tap Twice to Zoom the image</div>
												</li>
												<li class=""><img alt="" src="../images/device_upfront1.png"/></li>
												<li class=""><img alt="" src="../images/device_upfront2.png"/></li>												
											</ul>
											<ul class="sliderData phoneVideos" rel="videos">
												<li class="active">
													<div id="s7viewer3" class="videoCommon"></div>
												</li>												
											</ul>
											<ul class="sliderData img360View" rel="image360">
												<li class="active"><img alt="" src="../images/p4.png"/></li>
											</ul>
										</div>
										<div class="mSlider textCenter marginT30">
											<ul class="horizontal">
												<li class="active"><a href="javascript:void(0)"></a></li>
												<li><a href="javascript:void(0)"></a></li>
												<li><a href="javascript:void(0)"></a></li>												
											</ul>
										</div>										
									</div>
									<div class="col-lg-3">
										<div class="deviceThumbnail upfront">
																						
										</div>
									</div>
									<div class="col-lg-9 visible-lg-block">
										<div class="noFlash hide">
											<div class="flashMsg">
												<img alt="" src="../images/noflash.png"/>
												<p class="RobotoBcDarkGray24 marginT20">Oops!</p>
												<p class="RobotoRLightGray18 marginT10">To view this video, please install the latest version of Adobe Flash Player.</p>
											</div>
											<div class="getFlash">
												<button type="button" class="btn btn-primary btn-lg">Get Flash Player</button>
											</div>
										</div>
										<div class="noAssets hide">
											<img alt="" src="../images/imgPlaceHolder.png"/>
										</div>
										<div class="upfrontDataHold">
											<ul class="upfrontData phoneImg-lg active" rel="img">
												<li>
													
													<img alt="" src="../images/device_upfront.png" class="zoomMedia"/>
												</li>
												<li>
													
													<img alt="" src="../images/device_upfront1.png"/>
												</li>
												<li>
													
													<img alt="" src="../images/device_upfront2.png"/>
												</li>
											</ul>
											<ul class="upfrontData video-lg" rel="video">
												<li class="active">													
													<div id="s7viewer4" class="videoCommon" rel=""></div>
													<div class="videoLabel">
														<p class="heading RobotoBcWhite24">Samsung Galaxy S5 Expert Review</p>
														<p class="subHading RobotoRWhite18">We put Samsung’s latest phone through it’s paces</p>
													</div>
												</li>
												<li class="">
													<div id="s7viewer1" class="videoCommon"></div>
													<div class="videoLabel">
														<p class="heading RobotoBcWhite24">Samsung Galaxy S5 Expert Review</p>
														<p class="subHading RobotoRWhite18">We put Samsung’s latest phone through it’s paces</p>
													</div>
												</li>
												<li class="">
													<div id="s7viewer2" class="videoCommon"></div>
													<div class="videoLabel">
														<p class="heading RobotoBcWhite24">Samsung Galaxy S5 Expert Review</p>
														<p class="subHading RobotoRWhite18">We put Samsung’s latest phone through it’s paces</p>
													</div>
												</li>
											</ul>
											<ul class="upfrontData img360-lg" rel="img360">
												<li class="active">
													<div id="imagePdp" style="position:relative" class="img360Common"></div>
													<div class="image360"></div>
												</li>												
											</ul>
										</div>																			
									</div>
									<!--Zomm media model Start-->
										<div class="modal fade" id="zoomMediaModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											<div class="modal-dialog modal-lg">
												<div class="modal-content">													
													<div class="modal-header">
														<button class="btn btn-default backBtn RobotoRWhite15">
															<span aria-hidden="true" class="Ctm_icons"></span>
															Back to PDP Page
														</button>
														<button type="button" class="close" data-dismiss="modal" aria-label="Close">
															<span aria-hidden="true" class="icons Close-2W"></span>
														</button>
													</div>
													<div class="modal-body">
														<div class="row">
															<div class="col-lg-2 col-md-2">
																<div class="deviceThumbnail inModal">
																	<ul class="boxWithImageText">
																		<li class="active accordian" id="imgZoom">
																			<a class="btn btn-default" href="javascript:void(0)">
																				<span class="icons Color-Fill-3GL"></span>
																				<label>Images(5)</label>
																			</a>
																			<div class="roundedSlider accordianData hidden-md hidden-sm hidden-xs" id="">
																				<span class="prev icons UpW disable"></span>
																				<div class="thumbHold">
																					<ol class="slider" rel="imgThumbZoom">
																						<li class="active">
																							<img alt="" src="../images/slidephone1.png"/>
																						</li>
																						<li>
																							<img alt="" src="../images/slidephone2.png"/>
																						</li>
																						<li>
																							<img alt="" src="../images/slidephone3.png"/>
																						</li>
																						<li class="hide">
																							<img alt="" src="../images/slidephone1.png"/>
																						</li>
																						<li class="hide">
																							<img alt="" src="../images/slidephone2.png"/>
																						</li>																
																						<li class="hide">
																							<img alt="" src="../images/slidephone1.png"/>
																						</li>
																						<li class="hide">
																							<img alt="" src="../images/slidephone1.png"/>
																						</li>
																						<li class="hide">
																							<img alt="" src="../images/slidephone1.png"/>
																						</li>
																					</ol>
																				</div>
																				<span class="next icons DownW"></span>
																			</div>
																		</li>
																		<li class="accordian">
																			<a class="btn btn-default" href="javascript:void(0)">
																				<span class="icons Play-2GL"></span>
																				<label>Videos(3)</label>
																			</a>
																			<div class="roundedSlider accordianData hidden-md hidden-sm hidden-xs">
																				<span class="prev icons UpGL"></span>
																				<div class="thumbHold">
																					<ol class="slider" rel="videoThumbZoom">
																						<li class="active">
																							<img alt="" src="../images/slidephone1.png"/>
																						</li>
																						<li>
																							<img alt="" src="../images/slidephone2.png"/>
																						</li>
																						<li>
																							<img alt="" src="../images/slidephone3.png"/>
																						</li>
																						<li class="hide">
																							<img alt="" src="../images/slidephone1.png"/>
																						</li>
																						<li class="hide">
																							<img alt="" src="../images/slidephone2.png"/>
																						</li>
																						<li class="hide">
																							<img alt="" src="../images/slidephone3.png"/>
																						</li>
																					</ol>
																				</div>
																				<span class="next icons DownW"></span>
																			</div>
																		</li>
																		<li class="accordian">
																			<a class="btn btn-default" href="javascript:void(0)">
																				<span class="icons Viewer3D-GL"></span>
																				<label>360<sup>0</sup>View</label>						
																			</a>
																		</li>																
																	</ul>
																</div>
															</div>
															<div class="col-lg-8 col-md-7 textCenter">
																<div class="upfrontDataHoldZoom">
																	<ul class="upfrontData phoneImg-lg active" rel="img">
																		<li><img alt="" src="../images/mediaZoom1.png"/></li>
																		<li><img alt="" src="../images/device_upfront1.png"/></li>
																		<li><img alt="" src="../images/device_upfront2.png"/></li>
																	</ul>
																	<ul class="upfrontData video-lg" rel="video">
																		<li class="active"><img alt="" src="../images/p1.png"/></li>
																		<li><img alt="" src="../images/p2.png"/></li>
																		<li><img alt="" src="../images/p3.png"/></li>
																	</ul>
																	<ul class="upfrontData img360-lg" rel="img360">
																		<li class="active"><img alt="" src="../images/p4.png"></li>
																	</ul>
																</div>
															</div>
															<div class="col-lg-2 col-md-3">
																<div class="pull-right">
																	<label class="RobotoRWhite15">Colour</label>
																	<div class="cust-select clrInput input-group offers no-markup" id="">
																		<input type="text" class="form-control" data-bind="label" value="Red" readonly="readonly">
																		<span class="colorBox">
																			<img alt="" src="../images/black.png"/>
																		</span>
																	  <div class="input-group-btn">
																		<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
																			<span class="Ctm_icons DropDownBtn" aria-hidden="true"></span>
																		</button>
																		<ul class="dropdown-menu dropdown-menu-right pull-right" role="menu">
																			<li>
																				<a href="#" class="btn btn-default">
																					<span class="colorBox red"></span>
																					<label class="name">Red</label>
																				</a>
																			</li>
																			<li>
																				<a href="#" class="btn btn-default">
																					<span class="colorBox blue"></span>
																					<label class="name">Blue</label>
																				</a>
																			</li>
																			<li>
																				<a href="#" class="btn btn-default">
																					<span class="colorBox silver"></span>
																					<label class="name">Silver</label>
																				</a>
																			</li>
																			<li>
																				<a href="#" class="btn btn-default">
																					<span class="colorBox black"></span>
																					<label class="name">Black</label>
																				</a>
																			</li>
																			
																		</ul>
																	  </div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--Zomm media model End-->
								</div>
							</div>
						</div>
						<div class="col-lg-5 col-md-5 col-xs-12">
							<div class="details">
								<div class="usp">
									<div class="row">
										<div class="col-lg-11 col-xs-11 col-md-11">
											<div class="promotionalHeaders">
												<img alt="" src="../images/headphonesBig.png" class="pull-left"/>
												<span class="RobotoBcWhite24 RobotoBcWhite21-md RobotoBcGray27-sm RobotoRGray13-xs text pull-left">Free Samsung wireless Headphones Worth Over <span>&pound;</span>100!</span>
											</div>											
										</div>
										<div class="col-lg-1 col-xs-1 col-md-1">
											<div class="marginB40 hidden-xs hidden-md"></div>
							<span class="icon infoTransperent hidden-xs hidden-sm deviceUSp addMargin" data-toggle="popover" data-placement="bottom" data-original-title="" title=""></span>
											<span class="Ctm_icons right10 marginT10 InfoSB-Icon visible-xs-block visible-sm-inline-block deviceUSp" data-toggle="popover" data-placement="bottom" data-original-title="" title=""></span>
										</div>
									</div>
								</div>
								<div class="configuration marginT25">
									<div class="configurationsType">
										<div class="fConfiguration">
											<label class="title">Colour</label>
											<ul class="colorBoxesH horizontal" rel="clrBox">
												<li class="">
													<a href="#" class="btn btn-default">
														<span class="colorBox red">
															<!--<img alt="" src="../images/black.png">-->
														</span>
														<label class="name">Red</label>
													</a>
												</li>
												<li class="active">
													<a href="#" class="btn btn-default">
														<span class="colorBox blue"></span>
														<label class="name">Blue</label>
													</a>
												</li>
												<li>
													<a href="#" class="btn btn-default">
														<span class="colorBox silver"></span>
														<label class="name">Silver</label>
													</a>
												</li>
												<li class="">
													<a href="#" class="btn btn-default">
														<span class="colorBox black"></span>
														<label class="name">Black</label>
													</a>
												</li>
												
											</ul>
											<div class="conditionDrop hide">
												<div class="cust-select clrInput no-markup input-group offers" id="colorBox">
													<input type="text" class="form-control" data-bind="label" value="Red" readonly="readonly"/>
													<span class="colorBox inText"><img alt="" src="../images/black.png"></span>													
													<div class="input-group-btn">
														<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
															<span class="Ctm_icons DropDownBtn" aria-hidden="true"></span>
														</button>
														<ul class="dropdown-menu dropdown-menu-right pull-right" role="menu">
															
														</ul>
													</div><!-- /btn-group -->
												</div>
											</div>
										</div>
										<div class="fConfiguration">
											<label class="title">Capacity</label>
											<ul class="horizontal" rel="capacityBox">
												<li class="active">
													<a href="#" class="btn btn-default">
														<label class="name">16 GB</label>
													</a>
												</li>
												<li class="">
													<a href="#" class="btn btn-default">
														<label class="name">32 GB</label>
													</a>
												</li>
												<li class="disable">
													<a href="#" class="btn btn-default">
														<label class="name">64 GB</label>
													</a>
												</li>
											</ul>
											<div class="conditionDrop hide">
												<div class="cust-select no-markup input-group" id="capcityDrop">
													<input type="text" class="form-control" data-bind="label"  value="8 GB" readonly="readonly"/>
													<div class="input-group-btn">
														<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
															<span class="Ctm_icons DropDownBtn" aria-hidden="true"></span>
														</button>
														<ul class="dropdown-menu dropdown-menu-right pull-right" role="menu">
															
														</ul>
													</div><!-- /btn-group -->
												</div>
											</div>
										</div>
									</div>
									<div class="stockChecker">
										<div class="row">
											<div class="col-lg-6 col-md-12 col-sm-6 ">
												<div class="stockInfo">
													<label class="inStock ovrflwHid">
														<span class="pull-left Ctm_icons InStocktick right10"></span>
														<span class="title pull-left stockAvailable">In Stock Online</span>														
													</label>
													<label class="outStock ovrflwHid hide">
														<span class="pull-left icon warning right10"></span>
														<span class="title pull-left">Out of Stock Online</span>
													</label>
												</div>
												
											</div>
											<div class="col-lg-6 col-md-12 col-sm-6">
												<div class="deliveryInfo">
													<label class="ovrflwHid">
														<span class="pull-left icons Delivery-vanG right10"></span>
														<span class="title pull-left">Free next day delivery</span>
														<span class="Ctm_icons left10 InfoSB-Icon hidden-xs hidden-sm" data-toggle="modal" data-target="#delivery"></span>
														<span class="Ctm_icons left10 InfoSB-Icon visible-xs-inline-block visible-sm-inline-block" id="callDelivery"></span>
													</label>													
												</div>
											</div>											
										</div>
										
										
										<div class="marginT20">
											
											<div class="collapse marginT10" id="postcode">
												<div class="input-group custSelect hdrSearch">
												  <input type="hidden" value="Please enter valid postcode" rel="errorMsg"/>
												  <p class="RobotoRRed15 errorMsg marginB5"></p>
												  <div class="inputWrap pull-left">
													<input type="text" placeholder="Search" class="clearable form-control"/>
													<span class="input-group-btn">
														<button class="btn btn-primary" type="button" id="callStockChecker">
															<span class="Ctm_icons SearchIconH" aria-hidden="true"></span>
														</button>
													</span>
												  </div>
												  <span class="marginL15 pull-left marginT10 noIcon"></span>
												  <span class="Ctm_icons marginL15 pull-left marginT10 InStocktick"></span>
												</div>
											</div>
										</div>
										<div class="row marginT20 hide">
											<div class="promotion ovrflwHid">														
												<span class="pull-left">
													<img alt="" src="../images/phone1.png">
												</span>
												<div class="pull-left details marginL15">
													<p class="RobotoMGray18">Promotions Title</p>
													<p class="RobotoRGray15">Promotions description</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="configuration marginT25">
																	
								</div>
								<div class="buyingOption marginT25">
									<div role="tabpanel">
									  <!-- Nav tabs -->
									  
									  <!-- Tab panes -->
									  <div class="tab-content">
										
										
										<div role="tabpanel" class="tab-pane active" id="simFree">
											<div class="row">
												<div class="col-lg-7 col-sm-8 col-md-5 col-xs-5 priceInfoDiv">
													<p class="RobotoRLightGray15"><span class="cpwTRDarkGray48 cpwTRDarkGray33-xs marginR10"><span>&pound;</span>419.<span class="cpwTRDarkGray30 cpwTRDarkGray19-xs">99</span></span></p>
												</div>
												<div class="col-lg-5 col-sm-4 col-md-7 col-xs-7 actionDiv">
													
													<button type="button" class="btn btn-primary large RobotoRWhite21 RobotoRWhite15-xs">Add to basket</button>
												</div>
											</div>
										</div>
									  </div>
									</div>
								</div>
							</div>
						</div>
					</div>					
				</div>
				<div class="cBtm productKeyValues">
					
				</div>
				
			<!--PDP 2 Starts-->
				<div class="deviceFullSpecs">
					<!--Sticky Header Start-->
					
					<!--Sticky Header End-->
					<!--Device Specification Tabs Start-->
					<div class="deviceFullSpecsTabData">
						
						<!--Overview Tabs Start-->
							<div class="overViewData" id="overViewData">
							<!--Overview Tabs Short Summary Start-->
																		
							</div>
							<div class="deviceShortSummary">
								<div class="deviceReview">
									<div class="row">
										<div class="col-lg-4 col-md-4 desc">
											<div class="quick">
												<div class="descTitle">
													<h1>In a nutshell</h1>
												</div>
												<div class="descData">
													<ul>
														<li>Beautiful, large AMOLED display</li>
														<li>Water resistant design keeps your S5 working anywhere</li>
														<li>Built in fingerprint scanner keeps everything secure</li>
														<li>Powerful camera tech gives great quality photos</li>
													</ul>											
												</div>
												<div class="deviceHighSpecs lowEnd">
													<ul class="horizontal">
														<li>
															<div class="specsImg">
																<img alt="" src="../images/batteryPG.png" alt=""/>
															</div>
															<div class="specInfo">
																<p>Battery</p>
																<p>Up to 21 hours</p>
																<p>talktime</p>
															</div>
														</li>										
														<li>
															<div class="specsImg">
																<img alt="" src="../images/screensizePG.png" alt=""/>
															</div>
															<div class="specInfo">
																<p>Screen size</p>
																<p>5.2” Super</p>
																<p>AMOLED</p>
															</div>
														</li>
														<li>
															<div class="specsImg">
																<img alt="" src="../images/AndroidPG.png" alt=""/>
															</div>
															<div class="specInfo">
																<p>Operating System</p>
																<p>Android 4.4.2</p>
																<p>“KitKat”</p>
															</div>
														</li>
													</ul>
													<a href="javascript:void(0)" class="icon RobotoRBlue18 marginT40"><span class="Ctm_icons ShowMoreStore right10"></span>View full specification</a>
												</div>												
											</div>											
										</div>
										<div class="col-lg-4 col-md-4 desc">
											<div class="carphn">
												<div class="descTitle">
													<h1>What We say</h1>
												</div>
												<div class="descData">
													<img alt="" src="../images/carphnSays.png" alt="What Carphone say"/>
													<p class="RobotoIDarkGray18 marginT30">“One of the finest handsets we’ve seen this year, and certainly one that Samsung can be proud of!"</p>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-4 desc">
											<div class="user">
												<div class="descTitle">
													<h1>What users say</h1>
													<div class="descData">
														<div class="textCenter">
															<span class="rating-static rating-45"></span>
															<p class="reviewSummary">4.5 based on <a href="javascript:void(0)" class="RobotoRBlue15">143 reviews</a></p>
														</div>
														<div class="progressBarDiv">
															<ul class="compareSpecsProgress">
																<li>
																	<div class="progressSummary ovrflwHid">
																		<label class="pull-left progressTitle">Battery Life</label>
																		<label class="pull-right progressValue">3.8</label>
																	</div>
																	<div class="progressBar">
																		<div class="progress"></div>
																		<div class="steps">
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																		</div>															
																	</div>
																</li>
																<li>
																	<div class="progressSummary ovrflwHid">
																		<label class="pull-left progressTitle">Operating System</label>
																		<label class="pull-right progressValue">4.3</label>
																	</div>
																	<div class="progressBar">
																		<div class="progress"></div>
																		<div class="steps">
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="progressSummary ovrflwHid">
																		<label class="pull-left progressTitle">Camera quality</label>
																		<label class="pull-right progressValue">4.5</label>
																	</div>
																	<div class="progressBar">
																		<div class="progress"></div>
																		<div class="steps">
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="progressSummary ovrflwHid">
																		<label class="pull-left progressTitle">Screen quality</label>
																		<label class="pull-right progressValue">4.8</label>
																	</div>
																	<div class="progressBar">
																		<div class="progress"></div>
																		<div class="steps">
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="progressSummary ovrflwHid">
																		<label class="pull-left progressTitle">Memory</label>
																		<label class="pull-right progressValue">3.5</label>
																	</div>
																	<div class="progressBar">
																		<div class="progress"></div>
																		<div class="steps">
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																			<span class="tick"></span>
																		</div>
																	</div>
																</li>
															</ul>												
														</div>
														
													</div>
												</div>
											</div>
										</div>
									</div>									
								</div>
								<div class="deviceHighSpecs ovrflwHid">
									<ul class="horizontal">
										<li>
											<div class="specsImg">
												<img alt="" src="../images/batteryPG.png" alt=""/>
											</div>
											<div class="specInfo">
												<p>Battery</p>
												<p>Up to 21 hours</p>
												<p>talktime</p>
											</div>
										</li>
										<li>
											<div class="specsImg">
												<img alt="" src="../images/Camera_PG.png" alt=""/>
											</div>
											<div class="specInfo">
												<p>Camera</p>
												<p>16</p>
												<p>Mega Pixels</p>
											</div>
										</li>
										<li>
											<div class="specsImg">
												<img alt="" src="../images/InternalmemoryPG.png" alt=""/>
											</div>
											<div class="specInfo">
												<p>Internal storage</p>
												<p>16/32/128GB</p>
												<p>options</p>
											</div>
										</li>
										<li>
											<div class="specsImg">
												<img alt="" src="../images/ExternalmemoryPG.png" alt=""/>
											</div>
											<div class="specInfo">
												<p>External storage</p>
												<p>Add up to</p>
												<p>128GB</p>
											</div>
										</li>
										<li>
											<div class="specsImg">
												<img alt="" src="../images/screensizePG.png" alt=""/>
											</div>
											<div class="specInfo">
												<p>Screen size</p>
												<p>5.2” Super</p>
												<p>AMOLED</p>
											</div>
										</li>
										<li>
											<div class="specsImg">
												<img alt="" src="../images/AndroidPG.png" alt=""/>
											</div>
											<div class="specInfo">
												<p>Operating System</p>
												<p>Android 4.4.2</p>
												<p>“KitKat”</p>
											</div>
										</li>
									</ul>
									
								</div>
							</div>
							<!--Overview Tabs Short Summary End-->
							<!--Overview Tabs Accordian Start-->
							
							
							
							
							
							
													
						</div>
							
											
						<!--Overview Tabs Start-->
					</div>
					<!--Device Specification Tabs End-->
				</div>				
			<!--PDP 2 End-->
			</div>			
		</div>
		<!-- footer starts here -->
		<div class="footer">
			<div class="fTop">
				<div class="siteInfo">
					
				</div>
				
			</div>
			<div class="fBtm">
				
			</div>
		</div>
<!-- footer ends here -->
	</div>
<!-- Modal windows -->
 <!-- Delivery Modal -->
<div class="modal fade" id="delivery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="icon modal_close"></span></button>
        <h4 class="modal-title" id="myModalLabel">Delivery information</h4>
		<!-- Nav tabs -->
		  <div role="tabpanel" class="marginT25">
			  <ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#deliveryTab" aria-controls="delivery" role="tab" data-toggle="tab">Delivery to You</a></li>
				<li role="presentation"><a href="#collect" aria-controls="collect" role="tab" data-toggle="tab">Click & Collect</a></li>
				<li role="presentation"><a href="#return" aria-controls="return" role="tab" data-toggle="tab">Returns</a></li>
			  </ul>
		  </div>
		  <!-- Tab panes -->
      </div>
      <div class="modal-body">
		<div role="tabpanel">		  
		  <div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="deliveryTab">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="stockInfo">
							<label class="ovrflwHid">
								<span class="pull-left Ctm_icons InStocktick right10"></span>
								<span class="title pull-left RobotoMGreen18">In Stock Online</span>
							</label>
							<p class="RobotoRDarkGray15">
								Lorem ipsum dolor sit amet, consec tetuer adipiscing elit.
							</p>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="deliveryInfo ovrflwHid">
							<div class="pull-left">
								<label class="ovrflwHid">
									<span class="pull-left icons Delivery-vanGL right10"></span>
									<span class="title pull-left RobotoMDarkGray18">Free next day delivery</span>
								</label>
								<p class="RobotoRDarkGray15">
									Lorem ipsum dolor sit amet, consec tetuer adipiscing elit.
								</p>
							</div>
							<div class="pull-left">
								<img alt="" src="../images/dpd.png">
							</div>							
						</div>
					</div>
				</div>
				<div class="row additionalInfo">
					<div>
						<p class="RobotoMDarkGray18 marginB10">Deliver to your home</p>
						<ol>
							<li>Available on all phones, Pay monthly SIM cards, free gifts and everything else over <span>&pound;</span>50.</li>
							<li>Delivery is made by DPD.</li>
							<li>All non handset items under £50 are delivered by Royal Mail first class.</li>
							<li>If you order after 5pm, we'll process it the next working day, eg. if you order after 5pm on Monday, you'll receive your order on Wednesday.</li>
						</ol>
						<p class="RobotoRDarkGray15">This service is not available in certain remote locations. For remote locations, you should allow up to 1-2 working days and you may be charged. This service isn't available on Sundays and bank holidays</p>
					</div>
					<div>
						<p class="RobotoMDarkGray18">Free nominate your day for delivery</p>
						
						<p class="RobotoRDarkGray15 marginT15">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s<a href="#" class="RobotoRBlue15"> see more detail</a></p>
					</div>
				</div>
			</div>
			<div role="tabpanel" class="tab-pane" id="collect">
				<div class="row">
					<div class="col-lg-9 col-md-9">
						<h1 class="tabHeading">Click & Collect</h1>
						<p class="tabSubHeading">Lorem Ipsum is simply dummy text of the printing</p>
					</div>
					<div class="col-lg-3 col-md-3">
						<span class="icon collect pull-right"></span>
					</div>
				</div>
				<div class="row">
					<ul class="questions panelGroup" rel="single">
						<li class="active panels">
							<label class="heading" rel="collapse">Can I choose my order delivered to a store ?</label>							
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>
							<div class="panelBody active">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
							</div>
						</li>
						<li class="panels">
							<label class="heading" rel="collapse">How do I collect my order ?</label>
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>							
							<div class="panelBody">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
							</div>
						</li>
						<li class="panels">
							<label class="heading" rel="collapse">Lorem Ipsum is simply dummy text ?</label>
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>
							<div class="panelBody">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
							</div>
						</li>
						<li class="panels">
							<label class="heading" rel="collapse">Lorem Ipsum is simply dummy text ?</label>
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>
							<div class="panelBody">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
							</div>
						</li>
						<li class="panels">
							<label class="heading" rel="collapse">Lorem Ipsum is simply dummy text ?</label>
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>
							<div class="panelBody">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div role="tabpanel" class="tab-pane" id="return">
				<div class="row">
					<div class="col-lg-9 col-md-9">
						<h1 class="tabHeading">Returns</h1>
						<p class="tabSubHeading">Lorem Ipsum is simply dummy text of the printing</p>
					</div>
					<div class="col-lg-3 col-md-3">
						<span class="icon returns pull-right"></span>
					</div>
				</div>
				<div class="row">
					<ul class="questions panelGroup" rel="single">
						<li class="active panels">
							<label class="heading" rel="collapse">New pay monthly Phone</label>
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>
							<div class="panelBody active">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s<a href="#" class="RobotoRBlue15"> see more detail</a></p>
							</div>
						</li>
						<li class="panels">
							<label class="heading" rel="collapse">Can I swap it for a different phone?</label>
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>
							<div class="panelBody">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s<a href="#" class="RobotoRBlue15"> see more detail</a></p>
							</div>
						</li>
						<li class="panels">
							<label class="heading" rel="collapse">Can I return or exchange my upgrade Pay monthly phone?</label>
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>
							<div class="panelBody">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s<a href="#" class="RobotoRBlue15"> see more detail</a></p>
							</div>
						</li>
						<li class="panels">
							<label class="heading" rel="collapse">Lorem Ipsum is simply dummy text ?</label>
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>
							<div class="panelBody">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s<a href="#" class="RobotoRBlue15"> see more detail</a></p>
							</div>
						</li>
						<li class="panels">
							<label class="heading" rel="collapse">Lorem Ipsum is simply dummy text ?</label>
							<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
							<span class="Ctm_icons acc_close pull-right onOpen"></span>
							<div class="panelBody">
								<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s<a href="#" class="RobotoRBlue15"> see more detail</a></p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		  </div>
		</div>
      </div>
    </div>
  </div>
</div>
<!-- Delivery Modal Ends-->
<!-- Share Modal Starts-->
<div class="modal fade" id="share" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true" class="icon modal_close"></span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Share</h4>
			</div>
			<div class="modal-body">
				<div class="RobotoBcDarkGray27 marginB30 hidden-xs hidden-sm hide" id="successMsgE">Email Success message goes here</div>
				<ul class="horizontal shareOptions boxWithImageText">
					<li class="">
						<a class="btn btn-default" href="#">
							<span class="icon twitter"></span>
							<label>Twitter</label>
						</a>
					</li>
					<li class="">
						<a class="btn btn-default" href="#">
							<span class="icon share_FB"></span>
							<label>Facebook</label>
						</a>
					</li>
					<li class="">
						<a class="btn btn-default" href="#">
							<span class="icon pintrest"></span>
							<label>Pintrest</label>						
						</a>
					</li>
					<li class="">						
						<a class="btn btn-default" href="#">
							<span class="icon share_goggle"></span>
							<label>Google +</label>								
						</a>
					</li>
					<li class="visible-xs-block visible-sm-block">						
						<a class="btn btn-default" href="#">
							<span class="icon whatsApp"></span>
							<label>Whatsapp</label>								
						</a>
					</li>
					<li class="">
						<a class="btn btn-default" href="#">
							<span class="icon share_hukd"></span>
							<label>HotUKDeals</label>							
						</a>
					</li>
					<li class="email">
						<a class="btn btn-default" href="#">
							<span class="icons EmailG"></span>
							<label>Email</label>
						</a>
					</li>					
				</ul>
				<div class="marginT30 urlBox">
					<div class="row">
						<span class="icons Link-2G right10 pull-left marginT5"></span>
						<label class="RobotoBcDarkGray24 RobotoMDarkGray16-xs pull-left">Share the link</label>
					</div>
					<div class="row marginT5">
						<div class="col-lg-9 col-md-9">
							<input type="text" id="shareLinkText" class="form-control shareLinkText" value="http://www.carphonewarehouse.com/phones/samsung-galaxy-s5/monthly"/>
						</div>
						<div class="col-lg-2 col-md-2 marginL10 hidden-xs hidden-sm">
							<button type="button" class="btn btn-primary large RobotoMWhite16 copyURl">Copy</button>
						</div>
					</div>					
				</div>
				<div class="emailForm hidden-xs hidden-sm hide">
					<div class="form marginT10">
						<div class="row">
							<div class="col-lg-9 col-md-9">
								<label class="formTitle RobotoBcDarkGray27">Email page to yourself or a friend</label>
							</div>
							<div class="col-lg-3 col-md-3 marginT15">
								<label class="helpText RobotoRRed13 pull-right"><sup class="mandatory">*</sup>Denotes mandatory field</label>
							</div>
						</div>
						<form class="marginT15">
						  <div class="form-group">
							<label for="to" class="RobotoMDarkGray16"><sup class="mandatory">*</sup>To</label>
							<div class="emailInputWrap">
								<div class="addedEmailBox"></div>
								<input type="email" autocomplete="off" class="form-control" id="to" placeholder="Press enter or use commas (,) for multiple emails"/>
								<!--<div class="emailBox ovrflwHid hide">
									<span class="name pull-left">sandeepmane123@gmail.com</span>
									<span class="icon emailClose pull-right"></span>
									<input name="to" type="hidden" value="sandeepmane123@gmail.com">
								</div>-->
							</div>
							<span id="helpBlock" class="help-block pull-right RobotoRGreen13">Up to X recipients.</span>
						  </div>
						  <div class="form-group">
							<label for="from" class="RobotoMDarkGray16"><sup class="mandatory">*</sup>From</label>
							<div class="emailInputWrap">
								<div class="addedEmailBox"></div>
								<input type="email" autocomplete="off" class="form-control" id="from" placeholder="Press enter or use commas (,) for multiple emails"/>
								<!--<div class="emailBox ovrflwHid hide">
									<span class="name pull-left">sandeepmane123@gmail.com</span>
									<span class="icon emailClose pull-right"></span>
									<input name="to" type="hidden" value="sandeepmane123@gmail.com">
								</div>-->
							</div>
						  </div>
						  <div class="form-group">
							<label for="notes" class="RobotoMDarkGray16">Notes</label>
							<textarea class="form-control" rows="3" id="notes"></textarea>
							<div class="ovrflwHid">
								<span id="copiedUrl" class="help-block pull-left RobotoRGray13">URL:http://www.carphonewarehouse.com/phones/samsung-galaxy-s5/monthlyt</span>
								<span id="helpBlock" class="help-block pull-right RobotoRGreen13"><label class="charCount">250</label> characters left</span>
							</div>
						  </div>
						  <div class="form-action">
							<button class="btn btn-primary btn-lg no-markup pull-left marginT30 back RobotoMBlue16" type="button" aria-expanded="false" id="backToShare">Back</button>
							<button type="submit" class="btn btn-primary pull-right btn-lg marginT30 RobotoMWhite16">Send</button>
						  </div>						  
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Share Modal Starts-->
<!-- Notify Modal Starts-->
<div class="modal fade" id="notify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true" class="icon modal_close"></span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Get notified</h4>
			</div>
			<div class="modal-body">				
				<div class="notifyForm">
					<p class="RobotoRGray18">Get notified when product is ...text goes here</p>
					<div class="form marginT10">
						<form class="marginT15">
						  <div class="form-group">
							<label for="email" class="RobotoMDarkGray16"><sup class="mandatory">*</sup>Email</label>
							<label class="helpText RobotoRRed13 pull-right"><sup class="mandatory">*</sup>Denotes mandatory field</label>
							<input type="email" class="form-control" id="email" placeholder="Enter Email address"/>
							<span iconfor="emailAddress" class="Ctm_icons marginL15 pull-left marginT10 "></span>
						  </div>
						  <div class="row marginT10">
							<div class="col-lg-9 col-md-9">
								<p class="RobotoRGray15">
									By pressing submit... terms and condition for notify me goes here e.g Your
									email will only be used to stiffly you when the product is back in stock.
								</p>
							</div>
							<div class="col-lg-3 col-md-3">
								<button type="submit" class="btn btn-primary pull-right btn-lg RobotoMWhite16">Submit</button>
							</div>
						  </div>						  
						</form>					
					</div>
				</div>
				<div class="soryMsg hide">
					<div class="RobotoBcDarkGray24 marginB20">Sorry message</div>
					<p class="RobotoRGray18 marginB30">
						Fusce pretium elit in nulla facilisis rutrum. Cras a ex luctus, lobortis arcu ut, varius urna. Ut quis est eu ipsum dignissim bibendum. Sed tincidunt scelerisque pretium. Mauris interdum, odio in volutpat porttitor.
					</p>
					<a href="#" class="RobotoMBlue18">Find out more</a>
				</div>
				<div class="successMsg hide">
					<div class="RobotoBcDarkGray24 marginB20">Confirmation message goes here</div>
					<p class="RobotoRGray18 marginB30">
						Fusce pretium elit in nulla facilisis rutrum. Cras a ex luctus, lobortis arcu ut, varius urna. Ut quis est eu ipsum dignissim bibendum. Sed tincidunt scelerisque pretium. Mauris interdum, odio in volutpat porttitor.
					</p>
					<p class="RobotoBcDarkGray24 marginB20">Why buy from Carphone Warehouse?</p>
					<ul class="horizontal ovrflwHid promotionsWrap inModal">								
						<li class="">
							<div class="promotions">
								<div class="adTop">
									<h2 class=""><span class="Ctm_icons PricePromiseBG"><span class="Ctm_icons TradeInPromise"></span></span><label>PRISE<br>PROMISE</label></h2>
								</div>
								<div class="adBtm">
									<p class="hidden-xs">If you find cheper deal than ours,We'll match it and pay your first monthly bill.</p>
								</div>
							</div>
						</li>
						<li class="">
							<div class="promotions">
								<div class="adTop">
									<h2 class=""><span class="Ctm_icons TradeInPromiseBG"><span class="Ctm_icons TradeInPromise"></span></span><label>TRADE-IN<br>PROMISE</label></h2>
								</div>
								<div class="adBtm">
									<p class="hidden-xs">If you find better trade in price when getting any new  smartphones, we will bring it and give you 
									<span>&pound;</span>20</p>
								</div>
							</div>
						</li>
						<li class="">
							<div class="promotions">
								<div class="adTop">
									<h2 class=""><span class="rounded delivery"><span class="Ctm_icons FreeNextDD"></span></span><label>FREE NEXT<br>DAY DELIVERY</label></h2>
								</div>
								<div class="adBtm">
									<p class=" hidden-xs">We offer FREE next day delivery with a 1 hour timeslot,so you wont wait in all day.</p>
								</div>
							</div>
						</li>
						<li class="">
							<div class="promotions">
								<div class="adTop">
									<h2 class=""><span class="rounded pinpt"><span class="Ctm_icons PinPoint"></span></span><label>PINPOINT</label></h2>
								</div>
								<div class="adBtm">
									<p class=" hidden-xs">Pin Point will help you compare your needs to 1000s deal to find the one that right for you.</p>
								</div>
							</div>
						</li>
						<li class="">
							<div class="promotions">
								<div class="adTop">
									<h2 class=""><span class="rounded network"><span class="Ctm_icons ItPaysToCompare"></span></span><label>IT PAYS TO <br>COMPARE</label></h2>
								</div>
								<div class="adBtm">
									<p class=" hidden-xs">We have the widest range of networks on the high streets so you can compare more deals</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Notify Modal Ends-->
<!-- Store Checker Modal Starts-->
<div class="modal fade" id="storeStock" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true" class="icon modal_close"></span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Store Stock Checker</h4>
			</div>
			<div class="modal-body">
				<div class="locationInput">
					<div class="row">
						<div class="col-lg-6 col-md-6">
							<label class="RobotoBcDarkGray27">Find a store</label>
							<div class="input-group marginT15 custSelect hdrSearch postCodeInput">
							  <input type="hidden" value="Please enter valid postcode" rel="errorMsg"/>
							  <p class="RobotoRRed15 errorMsg marginB5">
								
							  </p>
							  <div class="inputWrap pull-left">
								  <input type="text" placeholder="Search" class="clearable form-control"/>
								  <span class="input-group-btn">
									<button class="btn btn-primary" type="button">
										<span class="Ctm_icons SearchIconH" aria-hidden="true"></span>
									</button>
								  </span>								  
							  </div>
								<span class="marginL15 pull-left marginT10 noIcon"></span>
								<span class="Ctm_icons marginL15 pull-left marginT10 InStocktick"></span>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 marginT25">
							<div class="row">
								<div class="col-lg-9 col-md-9">
									<p class="deviceName RobotoBcDarkGray21">Samsung Galaxy S5</p>
									<p class="deviceConfg RobotoRGray15">Black 16BG</p>
									<p class="update RobotoRGray15">Last updated: <span class="RobotoBDarkGray15">10:21 AM</span></p>
								</div>
								<div class="col-lg-3 col-md-3">
									<img alt="" src="../images/phone1.png"/>
								</div>							
							</div>						
						</div>					
					</div>					
				</div>
				<div class="locResultsDiv">					
					<div class="resultOnload textCenter hide">
						<p class="RobotoBLightGray18">Enter place or postcode to view stock in store</p>
						<img alt="" src="../images/footerLogo.png" class="marginT15">
					</div>
					<div class="resultloaded">						
						<div class="defaultStoreOther hide">
							<table class="fourColumnList">
								<tr>
									<td class="storeDetail">										
										<p class="defaultStore RobotoBDarkGray15 ovrflwHid">
											<span class="icon default right10 pull-left"></span>
											<label class="pull-left">Your default store</label> 
											<a href="javascript:void(0)" class="RobotoRBlue13 pull-left removeStore">Remove</a>
										</p>
										<p class="title RobotoBcDarkGray21">Peckham</p>
										<address class="RobotoRGray15">											
											<p>5 Rye Lane</p>
											<p>Peckham</p>
											<p>SE15 5BS</p>
											<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
										</address>
									</td>
									<td class="storeDistance RobotoRGray13 textCenter">
										<p>1.8 miles</p>
										<p><img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"> </p>
									</td>
									<td class="proAvailibility">
										<div class="stockInfo">
											<label class="ovrflwHid">
												<span class="pull-left icons Time-ClockG right10"></span>
												<span class="title outStock pull-left RobotoRDarkGray15">Out of stock in store</span>
											</label>
											<p class="RobotoRGray15">
												Order online within <span class="RobotoBGreen15">24hr 22mins</span>
												and collect from <span class="RobotoBGray15">4pm tomorrow</span>
												in store
											</p>
										</div>
									</td>
									<td class="setDefault textCenter">
										<button class="btn btn-primary btn-sm no-markup RobotoRBlue13" type="button" aria-expanded="false" id="">
												<span class="Ctm_icons OK-SLSD-Contacts right10 pull-left defaultStore"></span> My default store
										</button>
									</td>
								</tr>
							</table>
						</div>
						<p class="resultsSummary RobotoBLightGray18">Nearest <span class="count RobotoBDarkGray18">5</span> 
							stores to <span class="postLoc RobotoBDarkGray18">London SE15 5DZ, UK</span>
						</p>
						<div class="storesults marginT20">
							<p class="defaultStore RobotoBDarkGray15 ovrflwHid">
								<span class="icon default right10 pull-left"></span>
								<label class="pull-left">Your default store</label> 
								<a href="#" class="RobotoRBlue13 pull-left removeStore">Remove</a>
							</p>
							<table class="fourColumnList storeStockResults">
								<tr rel="0" class="defaultStoreRow">
									<td class="storeDetail">																				
										<p class="title RobotoBcDarkGray21">Peckham</p>
										<address class="RobotoRGray15">											
											<p>5 Rye Lane</p>
											<p>Peckham</p>
											<p>SE15 5BS</p>
											<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
										</address>
									</td>
									<td class="storeDistance RobotoRGray13 textCenter">
										<p>1.8 miles</p>
										<p><img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"> </p>
									</td>
									<td class="proAvailibility">
										<div class="stockInfo">
											<label class="ovrflwHid">
												<span class="pull-left icons Time-ClockG right10"></span>
												<span class="title outStock pull-left RobotoRDarkGray15">Out of stock in store</span>
											</label>
											<p class="RobotoRGray15">
												Order online within <span class="RobotoBGreen15">24hr 22mins</span>
												and collect from <span class="RobotoBGray15">4pm tomorrow</span>
												in store
											</p>
										</div>
									</td>
									<td class="setDefault textCenter">
										<button class="btn  btn-sm no-markup RobotoRBlue13 setDefaultBtn" type="button" aria-expanded="false" id="">
										 Set as default store
										</button>
									</td>
								</tr>
								<tr rel="1">
									<td class="storeDetail">										
										<p class="title RobotoBcDarkGray21">Old Kent Road</p>
										<address class="RobotoRGray15">											
											<p>777/787 Old Kent Road</p>
											<p>London</p>
											<p>SE15 1NZ</p>
											<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
										</address>
									</td>
									<td class="storeDistance RobotoRGray13 textCenter">
										<p>1.8 miles</p>
										<p><img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"></p>
										<p><img alt="" src="../images/currys.png" alt="Currys"></p>
									</td>
									<td class="proAvailibility">
										<div class="stockInfo">
											<label class="ovrflwHid">
												<span class="pull-left Ctm_icons InStocktick right10"></span>
												<span class="title pull-left RobotoRDarkGray15">In stock in store</span>
											</label>											
										</div>
									</td>
									<td class="setDefault textCenter">
										<button class="btn btn-sm no-markup setDefaultBtn" type="button" aria-expanded="false" id="">
											<span class="Ctm_icons OK-SLSD-Contacts right10 pull-left"></span>Set as default store
										</button>
									</td>
								</tr>
								<tr rel="2">
									<td class="storeDetail">										
										<p class="title RobotoBcDarkGray21">Walworth Road</p>
										<address class="RobotoRGray15">											
											<p>239 Walworth Road</p>
											<p>Peckham</p>
											<p>SE15 5BS</p>
											<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
										</address>
									</td>
									<td class="storeDistance RobotoRGray13 textCenter">
										<p>2.3 miles</p>
										<img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"> 
									</td>
									<td class="proAvailibility">
										<div class="stockInfo">
											<label class="ovrflwHid">
												<span class="pull-left Ctm_icons InStocktick right10"></span>
												<span class="title pull-left RobotoRDarkGray15">In stock in store</span>
											</label>											
										</div>
									</td>
									<td class="setDefault textCenter">
										<button class="btn  btn-sm no-markup RobotoRBlue13 setDefaultBtn" type="button" aria-expanded="false" id="">
										 Set as default store
										</button>
									</td>
								</tr>
								<tr rel="3">
									<td class="storeDetail">										
										<p class="title RobotoBcDarkGray21">4th Road</p>
										<address class="RobotoRGray15">											
											<p>239 Walworth Road</p>
											<p>Peckham</p>
											<p>SE15 5BS</p>
											<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
										</address>
									</td>
									<td class="storeDistance RobotoRGray13 textCenter">
										<p>2.3 miles</p>
										<img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"> 
									</td>
									<td class="proAvailibility">
										<div class="stockInfo">
											<label class="ovrflwHid">
												<span class="pull-left Ctm_icons InStocktick right10"></span>
												<span class="title pull-left RobotoRDarkGray15">In stock in store</span>
											</label>											
										</div>
									</td>
									<td class="setDefault textCenter">
										<button class="btn  btn-sm no-markup RobotoRBlue13 setDefaultBtn" type="button" aria-expanded="false" id="">
										 Set as default store
										</button>
									</td>
								</tr>
								<tr rel="4">
									<td class="storeDetail">										
										<p class="title RobotoBcDarkGray21">5th Road</p>
										<address class="RobotoRGray15">											
											<p>239 Walworth Road</p>
											<p>Peckham</p>
											<p>SE15 5BS</p>
											<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
										</address>
									</td>
									<td class="storeDistance RobotoRGray13 textCenter">
										<p>2.3 miles</p>
										<img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"> 
									</td>
									<td class="proAvailibility">
										<div class="stockInfo">
											<label class="ovrflwHid">
												<span class="pull-left Ctm_icons InStocktick right10"></span>
												<span class="title pull-left RobotoRDarkGray15">In stock in store</span>
											</label>											
										</div>
									</td>
									<td class="setDefault textCenter">
										<button class="btn  btn-sm no-markup RobotoRBlue13 setDefaultBtn" type="button" aria-expanded="false" id="">
										 Set as default store
										</button>
									</td>
								</tr>
								<tr class="inStockResults">
									<td colspan="4">
										<p class="RobotoBLightGray18">Your nearest store with item <span class="RobotoBDarkGray18">In stock</span></p>
									</td>
								</tr>
							</table>
							<div class="inStockResults hide">
								<p class="RobotoBLightGray18">Your nearest store with item <span class="RobotoBDarkGray18">In stock</span></p>
								<table class="fourColumnList marginT10">
									<tr>									
										<td class="storeDetail">										
											<p class="title RobotoBcDarkGray21">Rye Lane</p>
											<address class="RobotoRGray15">											
												<p>777/787 Old Kent Road</p>
												<p>London</p>
												<p>SE15 1NZ</p>
												<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
											</address>
										</td>
										<td class="storeDistance RobotoRGray13 textCenter">
											<p>1.8 miles</p>
											<p><img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"></p>
											<p><img alt="" src="../images/currys.png" alt="Currys"></p>
										</td>
										<td class="proAvailibility">
											<div class="stockInfo">
												<label class="ovrflwHid">
													<span class="pull-left Ctm_icons InStocktick right10"></span>
													<span class="title pull-left RobotoRDarkGray15">In stock in store</span>
												</label>											
											</div>
										</td>
										<td class="setDefault textCenter">
											<button class="btn btn-sm no-markup setDefaultBtn" type="button" aria-expanded="false" id="">
												<span class="Ctm_icons OK-SLSD-Contacts right10 pull-left"></span>Set as default store
											</button>
										</td>
									</tr>
								</table>
							</div>
							<div class="showOtherStores textCenter marginT20">
								<button class="btn btn-primary" id="showMore"><span class="btn-txt">Show more Stores</span></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Store Checker Modal Ends-->
<!-- Gifts Modal Starts-->
<div class="modal fade" id="giftDetails" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true" class="icon modal_close"></span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Gifts</h4>
			</div>
			<div class="modal-body">
				<div class="heading">
					<p class="title RobotoBcDarkGray27">With Samsung Galaxy Tab 4 7" Wi-Fi</p>
					<p class="capacity RobotoRGray18 marginT10">White 16GB 
						<a href="#changeClrCap" data-toggle="collapse" class="RobotoRBlue15 marginL10" aria-expanded="false" aria-controls="collapseExample">Change</a>
					</p>
					<div class="row marginT25 collapse" id="changeClrCap">
						<div class="col-lg-3 col-md-3">
							<label class="RobotoMDarkGray16">Colour</label>
							<div class="cust-select clrInput input-group offers" id="">							  							  
								<input type="text" class="form-control" data-bind="label" value="Red"/>
								<span class="colorBox red inText"></span>							  	
							  <div class="input-group-btn">
								<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<span class="Ctm_icons DropDownBtnW" aria-hidden="true"></span>
								</button>
								<ul class="dropdown-menu dropdown-menu-right pull-right" role="menu">														
									<li>
										<a href="#" class="btn btn-default">
											<span class="colorBox red"></span>
											<label class="name">Red</label>
										</a>
									</li>
									<li>
										<a href="#" class="btn btn-default">
											<span class="colorBox blue"></span>
											<label class="name">Blue</label>
										</a>
									</li>
									<li>
										<a href="#" class="btn btn-default">
											<span class="colorBox silver"></span>
											<label class="name">Silver</label>
										</a>
									</li>
									<li>
										<a href="#" class="btn btn-default">
											<span class="colorBox black"></span>
											<label class="name">Black</label>
										</a>
									</li>
									<li>
										<a href="#" class="btn btn-default">
											<span class="colorBox yellow"></span>
											<label class="name">Yellow</label>
										</a>
									</li>
								</ul>
							  </div><!-- /btn-group -->
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-lg-offset-1 col-md-offset-1">
							<label class="RobotoMDarkGray16">Capacity</label>
							<div class="cust-select input-group offers" id="">
							  <input type="text" class="form-control" data-bind="label" value="Please Select.."/>
							  <div class="input-group-btn">
								<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<span class="Ctm_icons DropDownBtnW" aria-hidden="true"></span>
								</button>
								<ul class="dropdown-menu dropdown-menu-right pull-right" role="menu">
								  <li><a href="#">Show all</a></li>
								  <li><a href="#">Apple iPad Mini</a></li>
								  <li><a href="#">Apple iPod Shuffle</a></li>												  
								  <li><a href="#">Sony Playstation 4</a></li>
								  <li><a href="#">Samsung Galaxy Tab 3</a></li>
								  <li><a href="#">Xbox one</a></li>												  												  
								</ul>
							  </div><!-- /btn-group -->
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-lg-offset-2 col-md-offset-2 paddingT25">
							<a href="#" class="RobotoRBlue16">Cancel</a>
							<button type="button" class="btn btn-primary btn-lg marginL15 medium">Apply</button>
						</div>
					</div>
				</div>				
				<div class="features">
					<div class="fTop">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<img alt="" src="../images/giftImage1.png"/>
							</div>
							<div class="col-lg-8 col-md-8">
								<p class="RobotoRGray15">
									Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
									ligula eget dolor. Aenean massa. Cum socis natoque penati
									bus et magnis dis parturient monte.																						
								</p>
								<ul class="upFrontFeatues marginT30">
									<li>Beautiful 1280 x 800 Display</li>
									<li>Multi User Mode</li>
									<li>Use Two Apps at Once</li>
									<li>Expand Memory up to 32GB with microSD™ Card</li>
								</ul>
							</div>
						</div>						
					</div>
					<div class="fBtm">
						<p class="RobotoBDarkGray18">Top features</p>
						<div class="row otherFeatures">
							<div class="col-lg-4 col-md-4">
								<div class="features">
									<p><img alt="" src="../images/giftImage2.png"/></p>
									<p>Lorem ipsum dolor sit amet 
										consectetuer adipiscing elit.
										Aenean commodo ligula eget
										dolor. Aenean massa.
									</p>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div class="features">
									<p><img alt="" src="../images/giftImage3.png"/></p>
									<p>Lorem ipsum dolor sit amet 
										consectetuer adipiscing elit.
										Aenean commodo ligula eget
										dolor. Aenean massa.
									</p>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div class="features">
									<p><img alt="" src="../images/giftImage4.png"/></p>
									<p>Lorem ipsum dolor sit amet 
										consectetuer adipiscing elit.
										Aenean commodo ligula eget
										dolor. Aenean massa.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Gifts Modal ends-->
<!-- Modals ends-->
<!-- side Moblie menu -->
	
	<!--Start store Checker sideMenu-->
	<div class="sidemenu right" id="storeCheck">
		<div class="menuHead ovrflwHid">
			<h2 class="pull-left">STORE STOCK CHECKER</h2>
			<span class="Ctm_icons closeMenu pull-right"></span>
		</div>
		<div class="menuContent ovrflwHid">
			<div class="locationInput">
				<div class="row">
					<div class="deviceThumbnail">
						<div class="row">
							<div class="col-xs-2">
								<img alt="" src="../images/phone1.png">
							</div>
							<div class="col-xs-10">
								<p class="deviceName RobotoBcDarkGray21">Samsung Galaxy S5</p>
								<p class="deviceConfg RobotoRGray15">Black 16BG</p>
								<p class="update RobotoRGray15">Last updated: <span class="RobotoBDarkGray15">10:21 AM</span></p>
							</div>													
						</div>						
					</div>					
					<div class="deviceStoreLoc">
						<label class="RobotoBcDarkGray27">Find a store</label>
						<div class="input-group custSelect hdrSearch postCodeInput">
						  <input type="hidden" value="Please enter valid postcode" rel="errorMsg"/>
						  <p class="RobotoRRed15 errorMsg marginB5"></p>
						  <div class="inputWrap pull-left">
							<input type="text" placeholder="Search" class="clearable form-control"/>
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button">
									<span class="Ctm_icons SearchIconH" aria-hidden="true"></span>
								</button>
							</span>
						  </div>
						  <span class="marginL15 pull-left marginT10 noIcon"></span>
						  <span class="Ctm_icons marginL15 pull-left marginT10 InStocktick"></span>
						</div>						
					</div>					
				</div>				
			</div>
			<div class="storesults">
				<p class="resultsSummary RobotoBLightGray18 marginT20">Nearest <span class="count RobotoBDarkGray18">5</span> 
					stores to <span class="postLoc RobotoBDarkGray18">London SE15 5DZ, UK</span>
				</p>
				<p class="defaultStore RobotoBDarkGray15 ovrflwHid marginT20">
					<span class="icon default right10 pull-left"></span>
					<label class="pull-left">Your default store</label> 
					<a href="#" class="RobotoRBlue13 pull-right removeStore">Remove</a>
				</p>
				<ul class="fourColumnList storesultsMobile">
					<li rel="0" class="defaultStoreRow">						
						<div class="row">
							<div class="col-xs-9">
								<div class="storeDetail">																	
									<p class="title RobotoBcDarkGray21">Peckham</p>
									<address class="RobotoRGray15">											
										<p>5 Rye Lane</p>
										<p>Peckham</p>
										<p>SE15 5BS</p>
										<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
									</address>
								</div>
							</div>
							<div class="col-xs-3">
								<div class="storeDistance RobotoRGray13">
									<p>1.8 miles</p>
									<p><img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"> </p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="setDefault marginT15">
								<button class="btn btn-sm no-markup defaultStoreBtn" type="button" aria-expanded="false" id="">
										<span class="Ctm_icons OK-SLSD-Contacts right10 pull-left defaultStore"></span> My default store
								</button>
							</div>
							<div class="proAvailibility marginT15">
								<div class="stockInfo">
									<label class="ovrflwHid">
										<span class="pull-left icons Time-ClockG right10"></span>
										<span class="title outStock pull-left RobotoRDarkGray15">Out of stock in store</span>
									</label>
									<p class="RobotoRGray15">
										Order online within <span class="RobotoBGreen15">24hr 22mins</span>
										and collect from <span class="RobotoBGray15">4pm tomorrow</span>
										in store
									</p>
								</div>
							</div>
						</div>											
					</li>
					<li rel="1">
						<div class="row">
							<div class="col-xs-9">
								<div class="storeDetail">										
									<p class="title RobotoBcDarkGray21">Old Kent Road</p>
									<address class="RobotoRGray15">											
										<p>777/787 Old Kent Road</p>
										<p>London</p>
										<p>SE15 1NZ</p>
										<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
									</address>
								</div>
							</div>
							<div class="col-xs-3">
								<div class="storeDistance RobotoRGray13">
									<p>1.8 miles</p>
									<p><img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"></p>
									<p><img alt="" src="../images/currys.png" alt="Currys"></p>
								</div>
							</div>
						</div>
						<div class="row">						
							<div class="proAvailibility">
								<div class="stockInfo marginT15">
									<label class="ovrflwHid">
										<span class="pull-left Ctm_icons InStocktick right10"></span>
										<span class="title pull-left RobotoRDarkGray15">In stock in store</span>
									</label>											
								</div>
							</div>
							<div class="setDefault marginT15">
								<button class="btn btn-sm no-markup setDefaultBtn RobotoRBlue13" type="button" aria-expanded="false" id="">
										Set as default store
								</button>
							</div>
						</div>
					</li>
					<li rel="2">
						<div class="row">
							<div class="col-xs-9">
								<div class="storeDetail">										
									<p class="title RobotoBcDarkGray21">Walworth Road</p>
									<address class="RobotoRGray15">											
										<p>239 Walworth Road</p>
										<p>Peckham</p>
										<p>SE15 5BS</p>
										<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
									</address>
								</div>
							</div>
							<div class="col-xs-3">
								<div class="storeDistance RobotoRGray13">
									<p>2.3 miles</p>
									<img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"> 
								</div>
							</div>
						</div>												
						<div class="row">
							<div class="proAvailibility marginT15">
								<div class="stockInfo">
									<label class="ovrflwHid">
										<span class="pull-left Ctm_icons InStocktick right10"></span>
										<span class="title pull-left RobotoRDarkGray15">In stock in store</span>
									</label>											
								</div>
							</div>
							<div class="setDefault marginT15">
								<button class="btn btn-sm no-markup setDefaultBtn RobotoRBlue13" type="button" aria-expanded="false" id="">
										Set as default store
								</button>
							</div>
						</div>						
					</li>
				</ul>
				<ul class="inStockResults">
					<p class="RobotoBLightGray18">Your nearest store with item <span class="RobotoBDarkGray18">In stock</span></p>
					<li>
						<div class="row">
							<div class="col-xs-9">
								<div class="storeDetail">										
									<p class="title RobotoBcDarkGray21">Rye lane</p>
									<address class="RobotoRGray15">											
										<p>239 Walworth Road</p>
										<p>Peckham</p>
										<p>SE15 5BS</p>
										<a href="#" class="RobotoRBlue15 marginT15 otherDetails">Store Details</a>
									</address>
								</div>
							</div>
							<div class="col-xs-3">
								<div class="storeDistance RobotoRGray13">
									<p>2.3 miles</p>
									<img alt="" src="../images/CWLogo.jpg" alt="Carphone Warehouse"> 
								</div>
							</div>
						</div>												
						<div class="row">
							<div class="proAvailibility marginT15">
								<div class="stockInfo">
									<label class="ovrflwHid">
										<span class="pull-left Ctm_icons InStocktick right10"></span>
										<span class="title pull-left RobotoRDarkGray15">In stock in store</span>
									</label>											
								</div>
							</div>
							<div class="setDefault marginT15">
								<button class="btn btn-sm no-markup setDefaultBtn RobotoRBlue13" type="button" aria-expanded="false" id="">
										Set as default store
								</button>
							</div>
						</div>						
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!--End store Checker sideMenu-->
	<!--Start notify Me sideMenu-->
	<div class="sidemenu right" id="notifyMenu">
		<div class="menuHead ovrflwHid">
			<h2 class="pull-left">NOTIFY</h2>
			<span class="Ctm_icons closeMenu pull-right"></span>
		</div>
		<div class="menuContent ovrflwHid">			
			<div class="notifyForm">
				<p class="menuTitle">Get notified</p>
				<p class="RobotoRGray15 marginT20">Lorem ipsum dolor sit amet, conse
					ctetuer adipiscing elit. Aenean
					commodo ligula eget dolor. 
				</p>
				<div class="form marginT10">
					<label class="helpText RobotoRGray15"><sup class="mandatory">*</sup>Denotes mandatory field</label>
					<form class="marginT15">
					  <div class="form-group">
						<label for="email" class="RobotoMDarkGray16"><sup class="mandatory">*</sup>Email</label>						
						<input type="email" class="form-control" id="email" placeholder="Enter Email address">							
					  </div>
					  <div class="row marginT10">
						<button type="submit" class="btn btn-primary btn-lg RobotoMWhite16">Submit</button>
						<p class="RobotoRGray13 marginT20">
							By pressing submit... terms and condition for notify me goes here e.g Your
							email will only be used to stiffly you when the product is back in stock.
						</p>					
					  </div>						  
					</form>					
				</div>
			</div>
			<div class="soryMsg hide">
				<p class="menuTitle">Sorry!</p>
				<p class="RobotoRGray15 marginB25">
					Fusce pretium elit in nulla facilisis rutrum. Cras a ex luctus, lobortis arcu ut, varius urna. Ut quis est eu ipsum dignissim bibendum. Sed tincidunt scelerisque pretium. Mauris interdum, odio in volutpat porttitor.
				</p>
				<a href="#" class="RobotoRBlue15">Find out more</a>
			</div>
			<div class="successMsg hide">
				<p class="menuTitle marginB20">Thank you!</p>
				<p class="RobotoRGray15 marginB25">
					Fusce pretium elit in nulla facilisis rutrum. Cras a ex luctus, 
				</p>
				<p class="RobotoBcDarkGray21 marginB20">Why buy from Carphone Warehouse?</p>
				<ul class="promotionsWrap inMenu">								
					<li class="">
						<div class="promotions">
							<div class="adTop">
								<h2 class=""><span class="Ctm_icons PricePromiseBG"><span class="Ctm_icons TradeInPromise"></span></span><label>PRISE PROMISE</label></h2>
							</div>
							<div class="adBtm">
								<p class="">If you find cheper deal than ours,We'll match it and pay your first monthly bill.</p>
							</div>
						</div>
					</li>
					<li class="">
						<div class="promotions">
							<div class="adTop">
								<h2 class=""><span class="Ctm_icons TradeInPromiseBG"><span class="Ctm_icons TradeInPromise"></span></span><label>TRADE-IN PROMISE</label></h2>
							</div>
							<div class="adBtm">
								<p class="">If you find better trade in price when getting any new  smartphones, we will bring it and give you 
								<span>£</span>20</p>
							</div>
						</div>
					</li>
					<li class="">
						<div class="promotions">
							<div class="adTop">
								<h2 class=""><span class="rounded delivery"><span class="Ctm_icons FreeNextDD"></span></span><label>FREE NEXT DAY DELIVERY</label></h2>
							</div>
							<div class="adBtm">
								<p class="">We offer FREE next day delivery with a 1 hour timeslot,so you wont wait in all day.</p>
							</div>
						</div>
					</li>
					<li class="">
						<div class="promotions">
							<div class="adTop">
								<h2 class=""><span class="rounded pinpt"><span class="Ctm_icons PinPoint"></span></span><label>PINPOINT</label></h2>
							</div>
							<div class="adBtm">
								<p class="">Pin Point will help you compare your needs to 1000s deal to find the one that right for you.</p>
							</div>
						</div>
					</li>
					<li class="">
						<div class="promotions">
							<div class="adTop">
								<h2 class=""><span class="rounded network"><span class="Ctm_icons ItPaysToCompare"></span></span><label>IT PAYS TO COMPARE</label></h2>
							</div>
							<div class="adBtm">
								<p class="">We have the widest range of networks on the high streets so you can compare more deals</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
<!--End notify Me sideMenu-->
<!--Start delivery Me sideMenu-->
	<div class="sidemenu right" id="deliveryMenu">
		<div class="menuHead ovrflwHid">
			<h2 class="pull-left">DELIVERY</h2>
			<span class="Ctm_icons closeMenu pull-right"></span>
		</div>
		<div class="menuContent ovrflwHid">
			<div role="tabpanel" class="marginT25 inMenu">
			  <ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#deliveryMenuTab" aria-controls="delivery" role="tab" data-toggle="tab">Delivery to You</a></li>
				<li role="presentation"><a href="#collectMenu" aria-controls="collect" role="tab" data-toggle="tab">Click &amp; Collect</a></li>
				<li role="presentation"><a href="#returnMenu" aria-controls="return" role="tab" data-toggle="tab">Returns</a></li>
			  </ul>
			  <div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="deliveryMenuTab">
					<div class="row">
						<div class="stockInfo">
							<label class="ovrflwHid">
								<span class="pull-left Ctm_icons InStocktick marginR20"></span>
								<span class="title pull-left RobotoBGreen18">In Stock Online</span>
							</label>
							<p class="RobotoRGray13">
								Lorem ipsum dolor sit amet, consec tetuer adipiscing elit.
							</p>
						</div>
						<div class="deliveryInfo ovrflwHid marginT40">
							<div class="pull-left">
								<label class="ovrflwHid">
									<span class="pull-left icons Delivery-vanGL right10"></span>
									<span class="title pull-left RobotoMDarkGray15">Free next day delivery</span>
								</label>							
								<p class="RobotoRGray13">
									Lorem ipsum dolor sit amet, consec tetuer adipiscing elit.
								</p>
							</div>
							<div class="pull-left">
								<img alt="" src="../images/dpd.png">
							</div>
						</div>						
					</div>
					<div class="row additionalInfo">
						<div>
							<p class="RobotoMDarkGray16 marginB10">Deliver to your home</p>
							<ol>
								<li>Available on all phones, Pay monthly SIM cards, free gifts and everything else over <span>£</span>50.</li>
								<li>Delivery is made by DPD.</li>
								<li>All non handset items under £50 are delivered by Royal Mail first class.</li>
								<li>If you order after 5pm, we'll process it the next working day, eg. if you order after 5pm on Monday, you'll receive your order on Wednesday.</li>
							</ol>
							<p class="RobotoRGray13">This service is not available in certain remote locations. For remote locations, you should allow up to 1-2 working days and you may be charged. This service isn't available on Sundays and bank holidays</p>
						</div>
						<div>
							<p class="RobotoMDarkGray16">Free nominate your day for delivery</p>
							
							<p class="RobotoRGray13 marginT15">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s<a href="#" class="RobotoRBlue15"> see more detail</a></p>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="collectMenu">
					<div class="row">
						<div class="col-xs-9">
							<h1 class="tabHeading">Click &amp; Collect</h1>							
						</div>
						<div class="col-xs-3">
							<span class="icon collect pull-right"></span>
						</div>
						<p class="tabSubHeading">Lorem Ipsum is simply dummy text of the printing</p>
					</div>
					<div class="row">						
						<ul rel="single" class="questions panelGroup">
							<li class="active panels">
								<label class="heading"  rel="collapse">Can I choose my order delivered to a store ?</label>
								<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
								<span class="Ctm_icons acc_close pull-right onOpen"></span>
								<div class="panelBody active">
									<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
								</div>
							</li>
							<li class="panels">
								<label class="heading"  rel="collapse">How do I collect my order ?</label>
								<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
								<span class="Ctm_icons acc_close pull-right onOpen"></span>
								<div class="panelBody">
									<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
								</div>
							</li>
							<li class="panels">
								<label class="heading"  rel="collapse">Lorem Ipsum is simply dummy text ?</label>
								<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
								<span class="Ctm_icons acc_close pull-right onOpen"></span>
								<div class="panelBody">
									<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="returnMenu">
					<div class="row">
						<div class="col-xs-9">
							<h1 class="tabHeading">Returns</h1>							
						</div>
						<div class="col-xs-3">
							<span class="icon returns pull-right"></span>
						</div>
						<p class="tabSubHeading">Lorem Ipsum is simply dummy text of the printing</p>
					</div>					
					<div class="row">
						<ul rel="single" class="questions panelGroup">
							<li class="active panels">
								<label class="heading" rel="collapse">New pay monthly Phone</label>
								<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
								<span class="Ctm_icons acc_close pull-right onOpen"></span>
								<div class="panelBody active">
									<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s<a href="#" class="RobotoRBlue15"> see more detail</a></p>
								</div>
							</li>
							<li class="panels">
								<label class="heading" rel="collapse">Can I swap it for a different phone?</label>
								<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
								<span class="Ctm_icons acc_close pull-right onOpen"></span>
								<div class="panelBody">
									<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
								</div>
							</li>
							<li class="panels">
								<label class="heading" rel="collapse">Can I return or exchange my upgrade Pay monthly phone?</label>
								<span class="Ctm_icons DropDownBtn pull-right onClose"></span>
								<span class="Ctm_icons acc_close pull-right onOpen"></span>
								<div class="panelBody">
									<p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
								</div>
							</li>							
						</ul>
					</div>
				</div>
			</div>
		  </div>
		</div>
	</div>
<!--End delivery Me sideMenu-->
<!--Start Gift sideMenu-->
	<div class="sidemenu right" id="giftMenu">
		<div class="menuHead ovrflwHid">
			<h2 class="pull-left">YOUR GIFT</h2>
			<span class="Ctm_icons closeMenu pull-right"></span>
		</div>
		<div class="menuContent ovrflwHid">
			<div class="heading">
				<p class="title RobotoBcDarkGray27">With Samsung Galaxy Tab 4 7" Wi-Fi</p>
				<p class="capacity RobotoMGray16 marginT10">White 16GB 
					<a href="#changeConfigurtn" class="RobotoRBlue13 pull-right" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">Change</a>
				</p>
				<div class="row marginT25 collapse" id="changeConfigurtn">
					<div class="">
						<label class="RobotoMGray16">Colour</label>
						<div class="cust-select clrInput input-group no-markup  marginT10" id="">							  						  
							<input type="text" class="form-control" data-bind="label" value="Red" readonly="readonly">
							<span class="colorBox red inText"></span>						  
						  <div class="input-group-btn">
							<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<span class="Ctm_icons DropDownBtn" aria-hidden="true"></span>
							</button>
							<ul class="dropdown-menu dropdown-menu-right pull-right" role="menu">														
								<li>
									<a href="#" class="btn btn-default">
										<span class="colorBox red"></span>
										<label class="name">Red</label>
									</a>
								</li>
								<li>
									<a href="#" class="btn btn-default">
										<span class="colorBox blue"></span>
										<label class="name">Blue</label>
									</a>
								</li>
								<li>
									<a href="#" class="btn btn-default">
										<span class="colorBox silver"></span>
										<label class="name">Silver</label>
									</a>
								</li>
								<li>
									<a href="#" class="btn btn-default">
										<span class="colorBox black"></span>
										<label class="name">Black</label>
									</a>
								</li>
								<li>
									<a href="#" class="btn btn-default">
										<span class="colorBox yellow"></span>
										<label class="name">Yellow</label>
									</a>
								</li>
							</ul>
						  </div><!-- /btn-group -->
						</div>
					</div>
					<div class="marginT25">
						<label class="RobotoMGray16">Capacity</label>
						<div class="cust-select input-group no-markup  marginT10" id="">
						  <input type="text" class="form-control" data-bind="label" value="Please Select.." readonly="readonly">
						  <div class="input-group-btn">
							<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<span class="Ctm_icons DropDownBtn" aria-hidden="true"></span>
							</button>
							<ul class="dropdown-menu dropdown-menu-right pull-right" role="menu">
							  <li><a href="#">Show all</a></li>
							  <li><a href="#">Apple iPad Mini</a></li>
							  <li><a href="#">Apple iPod Shuffle</a></li>												  
							  <li><a href="#">Sony Playstation 4</a></li>
							  <li><a href="#">Samsung Galaxy Tab 3</a></li>
							  <li><a href="#">Xbox one</a></li>												  												  
							</ul>
						  </div><!-- /btn-group -->
						</div>
					</div>
					<div class="paddingT25 textRight">							
						<a href="#" class="RobotoRBlue16">Cancel</a>
						<button type="button" class="btn btn-primary  btn-lg marginL15 width45 RobotoMWhite16">Apply</button>
					</div>
				</div>
			</div>
			<div class="features">
				<div class="fTop">
					<div class="row">
						<div class="textCenter">
							<img alt="" src="../images/giftImage1.png">
						</div>
						<div class="marginT25">
							<p class="RobotoRGray15">
								Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean
								ligula eget dolor. Aenean massa.																						
							</p>
							<ul class="upFrontFeatues marginT20">
								<li>Beautiful 1280 x 800 Display</li>
								<li>Multi User Mode</li>
								<li>Use Two Apps at Once</li>
								<li>Expand Memory up to 32GB with microSD™ Card</li>
							</ul>
						</div>
					</div>						
				</div>
				<div class="fBtm marginT40">
					<p class="RobotoBcDarkGray21">Top features</p>
					<div class="row otherFeatures">
						<div class="">
							<div class="features">
								<p><img alt="" src="../images/giftImage2.png"></p>
								<p>Lorem ipsum dolor sit amet 
									consectetuer adipiscing elit.
									Aenean commodo ligula eget
									dolor. Aenean massa.
								</p>
							</div>
						</div>
						<div class="">
							<div class="features">
								<p><img alt="" src="../images/giftImage3.png"></p>
								<p>Lorem ipsum dolor sit amet 
									consectetuer adipiscing elit.
									Aenean commodo ligula eget
									dolor. Aenean massa.
								</p>
							</div>
						</div>
						<div class="">
							<div class="features">
								<p><img alt="" src="../images/giftImage4.png"></p>
								<p>Lorem ipsum dolor sit amet 
									consectetuer adipiscing elit.
									Aenean commodo ligula eget
									dolor. Aenean massa.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!--End Gift sideMenu-->	
	<div class="sidemenu right" id="hotSpotMenu">
		<div class="menuHead ovrflwHid">
			<h2 class="pull-left">DESIGN & DISPLAY</h2>
			<span class="Ctm_icons closeMenu pull-right"></span>
		</div>
		<div class="menuContent ovrflwHid">			
			<h1 class="hSpotTitle"></h1>	
			<div class="hSpotImg">
				<img src="" alt="image">
			</div>
			<div class="hSpotData">
				<p></p>
			</div>
			<div class="hSpotActions"> 
				<button type="button" class="btn btn-primary no-markup" id="prevHot">Prev</button>
				<div class="hSpotIndicators">
					<span class="currentH"></span>
					of
					<span class="totlH"></span>
				</div>
				<button type="button" class="btn btn-primary no-markup" id="nextHot">Next</button>
			</div>
		</div>
	</div>
<!-- side Moblie menu ends-->
	<div class="overlay hide"></div>
	<div class="dropOverlay hide"></div>
	<div class="backToTop">
		<span class="icons UpW"></span>
	</div>
	
	

	
</body>
</html>