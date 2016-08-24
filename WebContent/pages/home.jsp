<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="format-detection" content="telephone=no">
      <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
      <title>Home</title>
      <script src='https://code.responsivevoice.org/responsivevoice.js'></script>
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/bootstrap.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/icons.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/rangeSlider.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/master.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/responsive.css">
      <link rel="stylesheet" type="text/css" href="/VoiceOnline/resources/css/searchResult.css">
      <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300italic,400italic,700italic,400,300,700' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" type="text/css" href="fonts.css">
   </head>
   <body>
      <div class="page" id="phoneFinder">
         <!-- header -->
         <div class="header">
            <div class="hTop">
               <div class="container-fluid">
                  <div class="row">
                     <div class="col-lg-4 col-sm-4 col-md-4 hidden-xs">
                        <div class="topNav">                           
                        </div>
                     </div>
                     <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
                        <div class="logo">
                           <a class="brand" href="#">
                           <img src="" alt="Brand logo">
                           </a>
                        </div>
                     </div>
                     <div class="col-lg-4 col-sm-4 col-md-4 hidden-xs">
                        <div class="contact ovrflwHid">
                           <p class="pull-right">Call Us On <a href="#">1-847-555-5555</a></p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="hBtm">
               <div class="container-fluid">
                  <div class="row">
                     <div class="col-sm-2 hidden-xs hidden-md hidden-lg">
                        <div class="appNav no-markup">
                           
                        </div>
                     </div>
                     <div class="col-lg-4 hidden-xs col-md-4 hidden-sm posStatic">
                        <ul class="nav nav-tabs no-markup btmNav marginT10"></ul>
                     </div>
                     <div class="col-lg-4 col-sm-6 col-md-4 hidden-xs">
                        <div class="input-group custSelect hdrSearch">
                           <input type="text" placeholder="Search" class="clearable form-control searchterm"/>
                           <span class="input-group-btn">
                           <button class="btn btn-primary" type="button" onclick='searchitem();' value='Play'>						   
                           <span class="Ctm_icons SearchIconH" aria-hidden="true"></span>
                           </button>
                           </span>
                        </div>
                        <div class="searchResult">
                           <div class="searchCategories">
                              <label class="catTitle">RECOMENDED</label>
                              <ul class="catData">
                                 <li>See all Apple iPhones</li>
                                 <li>See all Apple tablets</li>
                              </ul>
                           </div>
                           <div class="searchCategories">
                              <label class="catTitle">SHOP</label>
                              <ul class="catData">
                                 <li>
                                    <div class="pull-left catDataImage">
                                       <img src="/VoiceOnline/resources/images/searchResult1.png"/>
                                    </div>
                                    <div class="pull-left catDataMsg">
                                       <label>Apple iPhone 6 on O2 from just <span>&euro;</span>25 a month</label>
                                       <p>
                                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                                       </p>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="pull-left catDataImage">
                                       <img src="/VoiceOnline/resources/images/searchResult2.png"/>
                                    </div>
                                    <div class="pull-left catDataMsg">
                                       <label>Apple iPhone 6 accessories</label>
                                       <p>
                                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                                       </p>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="pull-left catDataImage">
                                       <img src="/VoiceOnline/resources/images/searchResult3.png"/>
                                    </div>
                                    <div class="pull-left catDataMsg">
                                       <label>Trade in your Apple iPhone</label>
                                       <p>
                                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                                       </p>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                           <div class="searchCategories">
                              <label class="catTitle">HELP & SUPPORT</label>
                              <ul class="catData">
                                 <li>
                                    <div class="pull-left supportTitle">
                                       Not enough space to update your iPhone
                                    </div>
                                    <div class="pull-left catDataImage">
                                       <img src="/VoiceOnline/resources/images/searchResult4.png" class="pull-right"/>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="pull-left supportTitle">
                                       Remove iCloud from your iPhone
                                    </div>
                                    <div class="pull-left catDataImage">
                                       <img src="/VoiceOnline/resources/images/searchResult5.png" class="pull-right"/>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                           <div class="allResult">
                              <a href="#">View all search results</a>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
                        <div class="appNav pull-right">
                           <ul class="horizontal">
                              <li class="hidden-sm hidden-md hidden-lg"><a href="#"><span class="Ctm_icons SearchIconMH"></span></br>Search</a></li>
                              
                              <li class="hidden-xs hidden-sm"><a href="#"><span class="Ctm_icons AccountH"></span></br>Account</a></li>
                              <li><a href="#"><span class="Ctm_icons Add-to-shortlistH"></span></br>Shortlist</a></li>
                              <li><a href="#"><span class="Ctm_icons BasketH"></span></br>Basket</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="mobileSearch">
               <div class="input-group custSelect">
                  <input type="text" placeholder="Search" class="clearable form-control"/>
                  <span class="input-group-btn">
                  <button class="btn btn-primary" type="button">
                  <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                  </button>
                  </span>
               </div>
               <div class="searchResult">
                  <div class="searchCategories">
                     <label class="catTitle">RECOMENDED</label>
                     <ul class="catData">
                        <li>See all Apple iPhones</li>
                        <li>See all Apple tablets</li>
                     </ul>
                  </div>
                  <div class="searchCategories">
                     <label class="catTitle">SHOP</label>
                     <ul class="catData">
                        <li>
                           <div class="pull-left catDataImage">
                              <img src="/VoiceOnline/resources/images/searchResult1.png">
                           </div>
                           <div class="pull-left catDataMsg">
                              <label>Apple iPhone 6 on O2 from just <span>€</span>25 a month</label>
                              <p>
                                 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                              </p>
                           </div>
                        </li>
                        <li>
                           <div class="pull-left catDataImage">
                              <img src="/VoiceOnline/resources/images/searchResult2.png">
                           </div>
                           <div class="pull-left catDataMsg">
                              <label>Apple iPhone 6 accessories</label>
                              <p>
                                 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                              </p>
                           </div>
                        </li>
                        <li>
                           <div class="pull-left catDataImage">
                              <img src="/VoiceOnline/resources/images/searchResult3.png">
                           </div>
                           <div class="pull-left catDataMsg">
                              <label>Trade in your Apple iPhone</label>
                              <p>
                                 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
                              </p>
                           </div>
                        </li>
                     </ul>
                  </div>
                  <div class="searchCategories">
                     <label class="catTitle">HELP &amp; SUPPORT</label>
                     <ul class="catData">
                        <li>
                           <div class="pull-left supportTitle">
                              Not enough space to update your iPhone
                           </div>
                           <div class="pull-left catDataImage">
                              <img src="/VoiceOnline/resources/images/searchResult4.png" class="pull-right">
                           </div>
                        </li>
                        <li>
                           <div class="pull-left supportTitle">
                              Remove iCloud from your iPhone
                           </div>
                           <div class="pull-left catDataImage">
                              <img src="/VoiceOnline/resources/images/searchResult5.png" class="pull-right">
                           </div>
                        </li>
                     </ul>
                  </div>
                  <div class="allResult">
                     <a href="#">View all search results</a>
                  </div>
               </div>
            </div>
         </div>
         <!-- header ends here ->
            <!-- bread crumbs -->
         <div class="subHeader hidden-xs sHdrLGBG">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-lg-12 col-md-12">
                     <span class="Ctm_icons"></span>
                  </div>
               </div>
            </div>
         </div>
         <!-- bread crumbs ends here -->
         <div class="content">
            <div class="container-fluid">
               <div class="seachResultCntnr">
                  <div class="row">
                     
                     <div class="col-lg-9 col-md-8">
                        <div class="filterSearchResult">
                           
                           
                           
                           <div class="row hidden-md hidden-lg resultSummary">
                              <div class="col-sm-4 col-xs-6">
                                 
                              </div>
                              <div class="col-sm-4 col-xs-6  visible-xs-block">
                                 
                              </div>
                              
                           </div>
                           <div class="sRPromBanner hidden-sm hidden-xs col-md-12 col-lg-12">
                              <img alt="Promotional Banner" src="/VoiceOnline/resources/images/Promotion-banner.jpg" />
                           </div>
                           <div class="sRPromBanner hidden-md hidden-lg col-sm-12 col-xs-12">
                              <img alt="Promotional Banner" src="/VoiceOnline/resources/images/Promotion-banner-mob.jpg" />
                           </div>
                           <div class="sRShop marginB30">
                              <div class="row featrHding marginB20">
                                 <span class="cpwTradebold">SHOP</span>
                                 
                              </div>
                              <div class="row featrCntnt marginB40">
                                 <div class="img"><img src="/VoiceOnline/resources/images/sRPhone01.png" alt="Apple iPhone 6" /></div>
                                 <div class="sRShopMobInfo">
                                    <h2>Apple iPhone 6</h2>
                                    <p>Available on Pay monthly, Pay as you go, SIM free and as on upgrade</p>
                                 </div>
                              </div>
                              <div class="row featrCntnt marginB40">
                                 <div class="img"><img src="/VoiceOnline/resources/images/sRPhone02.png" alt="Apple iPhone 6" /></div>
                                 <div class="sRShopMobInfo">
                                    <h2>Apple iPhone 5S</h2>
                                    <p>Available on Pay monthly, Pay as you go, SIM free and as on upgrade</p>
                                 </div>
                              </div>
                              <div class="row featrCntnt">
                                 <div class="img"><img src="/VoiceOnline/resources/images/sRPhone01.png" alt="Apple iPhone 6" /></div>
                                 <div class="sRShopMobInfo">
                                    <h2>Apple iPhone 5c</h2>
                                    <p>Available on Pay monthly, Pay as you go, SIM free and as on upgrade</p>
                                 </div>
                              </div>
                           </div>
                           
                           
                           
                        </div>
                     </div>
                  </div>
               </div>
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
            <div class="thanksForVisit">
               <div><img class="thanksForVisitingImg" src="/VoiceOnline/resources/images/thanksForVisiting.png"/></div>
               
            </div>
         </div>
         <!-- footer ends here -->
		 <!-- https://cdep.accenture.com/cdep/ -->
		 <!-- https://cdep.accenture.com/Heckathon/ -->
		 <!-- https://locahost:8080/jenkins -->
		 <!-- https://52.220.20.62 -->
      </div>
      
      <div class="overlay hide"></div>
      <div class="dropOverlay hide"></div>
      <div class="backToTop">
         <span class="icons UpW"></span>
      </div>
	  <%@include file="speechtest.jsp" %>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
      <script src="/VoiceOnline/resources/js/effects.js"></script>
      
	  <script>
	 
	  </script>
	  
   </body>
</html>




