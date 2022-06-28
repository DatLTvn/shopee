
<!DOCTYPE HTML>
<head>
<title> Home Shoppe Website Template | Home :: Isource</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="{{asset('public/web/css/style.css')}}" rel="stylesheet" type="text/css" media="all"/>
<link href="{{asset('public/web/css/main.css')}}" rel="stylesheet" type="text/css" media="all"/>
<link href="{{asset('public/web/css/slider.css')}}" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="{{asset('public/web/js/jquery-1.7.2.min.js')}}"></script> 
<script type="text/javascript" src="{{asset('public/web/js/move-top.js')}}"></script>
<script type="text/javascript" src="{{asset('public/web/js/easing.js')}}"></script>
<script type="text/javascript" src="{{asset('public/web/js/startstop-slider.js')}}"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
  <div class="wrap">
	<div class="header">
		<div class="headertop_desc">
			<div class="call">
				 <p><span>Need help?</span> call us <span class="number">1-22-3456789</span></span></p>
			</div>
			<div class="account_desc">
				<ul>
					<li><a href="#">Register</a></li>
					<li><a href="{{URL::to('/login')}}">Login</a></li>
					<li><a href="#">Delivery</a></li>
					<li><a href="#">Checkout</a></li>
					<li><a href="#">My Account</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="header_top">
			<div class="logo">
				<a href="{{URL::to('/')}}"><img src="{{asset('public/web/images/logo.png')}}" alt="" /></a>
			</div>
			  <div class="cart">
			  	   <p>Welcome to our Online Store! <span>Cart:</span><div id="dd" class="wrapper-dropdown-2"> 0 item(s) - $0.00
			  	   	<ul class="dropdown">
							<li>you have no items in your Shopping cart</li>
					</ul></div></p>
			  </div>
			  <script type="text/javascript">
			function DropDown(el) {
				this.dd = el;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.dd.on('click', function(event){
						$(this).toggleClass('active');
						event.stopPropagation();
					});	
				}
			}
			$(function() {
				var dd = new DropDown( $('#dd') );
				$(document).click(function() {
					// all dropdowns
					$('.wrapper-dropdown-2').removeClass('active');
				});
			});
		</script>
	 <div class="clear"></div>
  </div>
	<div class="header_bottom">
	     	<div class="menu">
	     		<ul style="margin-bottom: 0;">
			    	<li class="active"><a href="{{URL::to('/')}}">Home</a></li>
			    	<li><a href="{{URL::to('/web-about')}}">About</a></li>
			    	<li><a href="{{URL::to('/web-delivery')}}">Delivery</a></li>
			    	<li><a href="{{URL::to('/web-news')}}">News</a></li>
			    	<li><a href="{{URL::to('/web-contact')}}">Contact</a></li>
			    	<div class="clear"></div>
     			</ul>
	     	</div>
			 <div class="search_box">
				<form action="{{URL::to('/search-product') }}">
					<input type="text" name= "product_name">
					<input type="submit" value="">
				</form>
			</div>
	     	<div class="clear"></div>
	     </div>	 
		 <br>    
	<div class="header_slide">
			<div class="header_bottom_left">				
				<div class="categories">
				  <ul>
				  	<h3>Categories</h3>
					  @foreach ($categoryGlobal as $item)
				      <li><a href="{{route('category',$item->category_slug)}}">{{$item->category_name}}</a></li>
					  @endforeach
				    
				  </ul>
				</div>					
	  	     </div>
					 <div class="header_bottom_right">					 
					 	 <div class="slider">					     
							 <div id="slider">
			                    <div id="mover">
			                    	<div id="slide-1" class="slide">			                    
									 <div class="slider-img">
									     <a href="preview.html"><img src="{{asset('public/web/images/slide-1-image.png')}}" alt="learn more" /></a>									    
										</div>
						             	<div class="slider-text">
		                                 <h1>Clearance<br><span>SALE</span></h1>
		                                 <h2>UPTo 20% OFF</h2>
									   <div class="features_list">
									   	<h4>Get to Know More About Our Memorable Services Lorem Ipsum is simply dummy text</h4>							               
							            </div>
							             <a href="preview.html" class="button">Shop Now</a>
					                   </div>			               
									  <div class="clear"></div>				
				                  </div>	
						             	<div class="slide">
						             		<div class="slider-text">
		                                 <h1>Clearance<br><span>SALE</span></h1>
		                                 <h2>UPTo 40% OFF</h2>
									   <div class="features_list">
									   	<h4>Get to Know More About Our Memorable Services</h4>							               
							            </div>
							             <a href="preview.html" class="button">Shop Now</a>
					                   </div>		
						             	 <div class="slider-img">
									     <a href="preview.html"><img src="{{asset('public/web/images/slide-3-image.jpg')}}" alt="learn more" /></a>
									  </div>						             					                 
									  <div class="clear"></div>				
				                  </div>
				                  <div class="slide">						             	
					                  <div class="slider-img">
									     <a href="preview.html"><img src="{{asset('public/web/images/slide-2-image.jpg')}}" alt="learn more" /></a>
									  </div>
									  <div class="slider-text">
		                                 <h1>Clearance<br><span>SALE</span></h1>
		                                 <h2>UPTo 10% OFF</h2>
									   <div class="features_list">
									   	<h4>Get to Know More About Our Memorable Services Lorem Ipsum is simply dummy text</h4>							               
							            </div>
							             <a href="preview.html" class="button">Shop Now</a>
					                   </div>	
									  <div class="clear"></div>				
				                  </div>												
			                 </div>		
		                </div>
					 <div class="clear"></div>					       
		         </div>
		      </div>
		   <div class="clear"></div>
		</div>
   </div>	
   <section id="main-content">
    <section class="wrapper">
        @yield('admin_content')
    </section>

    <div class="footer">
		<div class="wrap">	
		<div class="section group">
			   <div class="col_1_of_4 span_1_of_4">
					   <h4>Information</h4>
					   <ul>
					   <li><a href="about.html">About Us</a></li>
					   <li><a href="contact.html">Customer Service</a></li>
					   <li><a href="#">Advanced Search</a></li>
					   <li><a href="delivery.html">Orders and Returns</a></li>
					   <li><a href="contact.html">Contact Us</a></li>
					   </ul>
				   </div>
				   
			   <div class="col_1_of_4 span_1_of_4">
				   <h4>Why buy from us</h4>
					   <ul>
					   <li><a href="about.html">About Us</a></li>
					   <li><a href="contact.html">Customer Service</a></li>
					   <li><a href="#">Privacy Policy</a></li>
					   <li><a href="contact.html">Site Map</a></li>
					   <li><a href="#">Search Terms</a></li>
					   </ul>
			   </div>
			   <div class="col_1_of_4 span_1_of_4">
				   <h4>My account</h4>
					   <ul>
						   <li><a href="contact.html">Sign In</a></li>
						   <li><a href="{{URL::to('/index-sp')}}">View Cart</a></li>
						   <li><a href="#">My Wishlist</a></li>
						   <li><a href="#">Track My Order</a></li>
						   <li><a href="contact.html">Help</a></li>
					   </ul>
			   </div>
			   <div class="col_1_of_4 span_1_of_4">
				   <h4>Contact</h4>
					   <ul>
						   <li><span>+91-123-456789</span></li>
						   <li><span>+00-123-000000</span></li>
					   </ul>
					   <div class="social-icons">
						   <h4>Follow Us</h4>
								<ul>
								 <li><a href="#" target="_blank"><img src="{{asset('public/smartphone/images/facebook.png')}}" alt="" /></a></li>
								 <li><a href="#" target="_blank"><img src="{{asset('public/smartphone/images/twitter.png')}}" alt="" /></a></li>
								 <li><a href="#" target="_blank"><img src="{{asset('public/smartphone/images/skype.png')}}" alt="" /> </a></li>
								 <li><a href="#" target="_blank"> <img src="{{asset('public/smartphone/images/dribbble.png')}}" alt="" /></a></li>
								 <li><a href="#" target="_blank"> <img src="{{asset('public/smartphone/images/linkedin.png')}}" alt="" /></a></li>
								 <div class="clear"></div>
							</ul>
						   </div>
			   </div>
		   </div>			
	   </div>
	   <div class="copy_right">
			   <p>Company Name © All rights Reseverd | Design by  <a href="http://isource.vn">Isource</a> </p>
		  </div>
   </div>
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>




