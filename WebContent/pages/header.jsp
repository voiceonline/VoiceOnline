<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
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
                     <form action="/searchResults.jsp" id="search-form" method="post">
                        <div class="input-group custSelect hdrSearch">
                           <input type="text" id="search_box" name="searchterm" placeholder="Search" class="clearable form-control searchterm"/>
                           <span class="input-group-btn">
                           <button class="btn btn-primary" type="button" onclick='searchitem();' value='Play'>						   
                           <span class="Ctm_icons SearchIconH" aria-hidden="true"></span>
                           </button>
                           </span>
                        </div>
                        
                        </form>
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
         <!-- header ends here -->