<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head> <title>OrderPage</title>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0;">
	
		<link id="wsite-base-style" rel="stylesheet" type="text/css" href="http://cdn2.editmysite.com/css/sites.css?buildTime=1234" />
		<link rel="stylesheet" type="text/css" href="http://cdn2.editmysite.com/css/old/fancybox.css?1234" />
		<link rel="stylesheet" type="text/css" href="http://cdn2.editmysite.com/css/social-icons.css?buildtime=1234" media="screen,projection" />
		<link rel="stylesheet" type="text/css" href="files/main_style.css?1517749686" title="wsite-theme-css" />
		<link href='http://fonts.googleapis.com/css?family=Lato:400,300,300italic,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		
		<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Coustard&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
		<style type='text/css'>
		.wsite-elements.wsite-not-footer:not(.wsite-header-elements) div.paragraph, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) p, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-block .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-description, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .wsite-form-field label, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .wsite-form-field label, #wsite-content div.paragraph, #wsite-content p, #wsite-content .product-block .product-title, #wsite-content .product-description, #wsite-content .wsite-form-field label, #wsite-content .wsite-form-field label, .blog-sidebar div.paragraph, .blog-sidebar p, .blog-sidebar .wsite-form-field label, .blog-sidebar .wsite-form-field label {font-family:"Droid Sans" !important;}
		#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-block .product-title, #wsite-content .product-description, #wsite-content .wsite-form-field label, #wsite-content .wsite-form-field label, .blog-sidebar div.paragraph, .blog-sidebar p, .blog-sidebar .wsite-form-field label, .blog-sidebar .wsite-form-field label {color:#818181 !important;}
		.wsite-elements.wsite-footer div.paragraph, .wsite-elements.wsite-footer p, .wsite-elements.wsite-footer .product-block .product-title, .wsite-elements.wsite-footer .product-description, .wsite-elements.wsite-footer .wsite-form-field label, .wsite-elements.wsite-footer .wsite-form-field label{}
		.wsite-elements.wsite-not-footer:not(.wsite-header-elements) h2, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-long .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-large .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-small .product-title, #wsite-content h2, #wsite-content .product-long .product-title, #wsite-content .product-large .product-title, #wsite-content .product-small .product-title, .blog-sidebar h2 {font-family:"Droid Serif" !important;font-style:normal !important;letter-spacing: 0px !important;}
		#wsite-content h2, #wsite-content .product-long .product-title, #wsite-content .product-large .product-title, #wsite-content .product-small .product-title, .blog-sidebar h2 {color:#2a2a2a !important;}
		.wsite-elements.wsite-footer h2, .wsite-elements.wsite-footer .product-long .product-title, .wsite-elements.wsite-footer .product-large .product-title, .wsite-elements.wsite-footer .product-small .product-title{font-family:"Coustard" !important;color:#513c2d !important;letter-spacing: 1px !important;}
		#wsite-title {font-family:"Droid Serif" !important;font-weight:700 !important;font-style:normal !important;text-transform:  uppercase !important;}
		.wsite-not-footer h2.wsite-content-title a, .wsite-not-footer .paragraph a, .wsite-not-footer blockquote a, #blogTable .blog-sidebar a, #blogTable .blog-comments a, #blogTable .blog-comments-bottom a, #wsite-com-store a, #wsite-com-product-gen a {color:#2a2a2a !important;}
		.wsite-menu-default a {}
		.wsite-menu a {}
		.wsite-image div, .wsite-caption {}
		.galleryCaptionInnerText {}
		.fancybox-title {}
		.wslide-caption-text {}
		.wsite-phone {}
		.wsite-headline,.wsite-header-section .wsite-content-title {font-family:"Droid Serif" !important;font-weight:700 !important;color:#fff !important;font-style:normal !important;text-transform:  uppercase !important;letter-spacing: 4px !important;}
		.wsite-headline-paragraph,.wsite-header-section .paragraph {font-family:"Open Sans" !important;color:#fdf9f9 !important;}
		.wsite-button-inner {font-family:"Droid Serif" !important;}
		.wsite-not-footer blockquote {}
		.wsite-footer blockquote {}
		.blog-header h2 a {}
		#wsite-content h2.wsite-product-title {}
		.wsite-product .wsite-product-price a {}
		.wsite-not-footer h2.wsite-content-title a:hover, .wsite-not-footer .paragraph a:hover, .wsite-not-footer blockquote a:hover, #blogTable .blog-sidebar a:hover, #blogTable .blog-comments a:hover, #blogTable .blog-comments-bottom a:hover, #wsite-com-store a:hover, #wsite-com-product-gen a:hover {color:#8d5024 !important;}
		@media screen and (min-width: 767px) {.wsite-elements.wsite-not-footer:not(.wsite-header-elements) div.paragraph, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) p, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-block .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-description, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .wsite-form-field label, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .wsite-form-field label, #wsite-content div.paragraph, #wsite-content p, #wsite-content .product-block .product-title, #wsite-content .product-description, #wsite-content .wsite-form-field label, #wsite-content .wsite-form-field label, .blog-sidebar div.paragraph, .blog-sidebar p, .blog-sidebar .wsite-form-field label, .blog-sidebar .wsite-form-field label {font-size:17px !important;line-height:33px !important;}
		#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-block .product-title, #wsite-content .product-description, #wsite-content .wsite-form-field label, #wsite-content .wsite-form-field label, .blog-sidebar div.paragraph, .blog-sidebar p, .blog-sidebar .wsite-form-field label, .blog-sidebar .wsite-form-field label {}
		.wsite-elements.wsite-footer div.paragraph, .wsite-elements.wsite-footer p, .wsite-elements.wsite-footer .product-block .product-title, .wsite-elements.wsite-footer .product-description, .wsite-elements.wsite-footer .wsite-form-field label, .wsite-elements.wsite-footer .wsite-form-field label{}
		.wsite-elements.wsite-not-footer:not(.wsite-header-elements) h2, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-long .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-large .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-small .product-title, #wsite-content h2, #wsite-content .product-long .product-title, #wsite-content .product-large .product-title, #wsite-content .product-small .product-title, .blog-sidebar h2 {line-height:23px !important;}
		#wsite-content h2, #wsite-content .product-long .product-title, #wsite-content .product-large .product-title, #wsite-content .product-small .product-title, .blog-sidebar h2 {}
		.wsite-elements.wsite-footer h2, .wsite-elements.wsite-footer .product-long .product-title, .wsite-elements.wsite-footer .product-large .product-title, .wsite-elements.wsite-footer .product-small .product-title{font-size:13px !important;}
		#wsite-title {font-size:22px !important;}
		.wsite-menu-default a {}
		.wsite-menu a {}
		.wsite-image div, .wsite-caption {}
		.galleryCaptionInnerText {}
		.fancybox-title {}
		.wslide-caption-text {}
		.wsite-phone {}
		.wsite-headline,.wsite-header-section .wsite-content-title {font-size:58px !important;line-height:60px !important;}
		.wsite-headline-paragraph,.wsite-header-section .paragraph {font-size:18px !important;}
		.wsite-button-inner {}
		.wsite-not-footer blockquote {}
		.wsite-footer blockquote {}
		.blog-header h2 a {}
		#wsite-content h2.wsite-product-title {}
		.wsite-product .wsite-product-price a {}
		}</style>
		<style>
			.wsite-background {background-image: url("images/Store1.jpg") !important;background-repeat: no-repeat !important;background-position: 50% 50% !important;background-size: 100% !important;background-color: transparent !important;background: inherit;}
			body.wsite-background {background-attachment: fixed !important;}.wsite-background.wsite-custom-background{ background-size: cover !important}
		</style>
		<script>
		var STATIC_BASE = '//cdn1.editmysite.com/';
		var ASSETS_BASE = '//cdn2.editmysite.com/';
		var STYLE_PREFIX = 'wsite';
		</script>
		<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js'></script>
		
		<script type="text/javascript" src="http://cdn2.editmysite.com/js/lang/en/stl.js?buildTime=1234&"></script>
		<script src="http://cdn2.editmysite.com/js/site/main.js?buildTime=1234"></script><script type="text/javascript">_W.configDomain = "www.weebly.com";</script><script>_W.relinquish && _W.relinquish()</script>
		<script type="text/javascript" src="http://cdn2.editmysite.com/js/lang/en/stl.js?buildTime=1234&"></script><script> _W.themePlugins = {"navpane":{"condense":1024,"forced":1}};</script><script src='http://cdn2.editmysite.com/js/site/theme-plugins.js?buildTime=1234'></script><script type="text/javascript"> _W.recaptchaUrl = "https://www.google.com/recaptcha/api.js"; </script><script type="text/javascript"> window._W = window._W || {}; _W.showV2Footer = 0; </script>
				
				
			</head>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
			<script type='text/javascript' src="/ldt/js/order.js"></script>	
			<body class="header-page  wsite-page-index  wsite-theme-light"><div id="header">
				<div class="container">
					<div class="icons">
						<div class="w-navpane-trigger hamburger">
							<span></span>
						</div>
					</div>
					<div class="logo"><span class="wsite-logo">
		
			<a href="">
				<img src="images/logo1.jpg" alt="BARNEY'S" />
			</a>
		</span></div>
		<div class="icons">
			<a href="#" class="close w-navpane-close"><span></span></a>
		</div>
		</div>
		<div id="navlist" class="w-navlist nav"><ul class="wsite-menu-default"></ul></div>
		<div id="menu" class="slide-panel">
			<div id="nav" class="nav w-navpane">
				<div class="container"><ul class="wsite-menu-default"></ul></div>
			</div>
		</div>
		<div id="search" class="slide-panel">
			<div class="container">Search by typing &amp; pressing enter</div>
		</div>
		<div id="cart" class="slide-panel">
			<div class="container"><h2>YOUR CART</h2></div>
		</div>
	</div>

	<div id="content">
		<div id="banner">
			<div class="wsite-elements wsite-not-footer wsite-header-elements">
	<div class="wsite-section-wrap">
	<div  class="wsite-section wsite-header-section wsite-section-bg-image wsite-section-effect-parallax" style="height: 417px;background-image: url(&quot;images/Store1.jpg&quot;) ;background-repeat: no-repeat ;background-position: 50% 50% ;background-size: 100% ;background-color: transparent ;background-size: cover;background-attachment: fixed;" >
		<div class="wsite-section-content">
			
				<div class="banner-content">
					<div class="container">
				<div class="wsite-section-elements">
					
				</div>
			</div>
				</div>
			
		</div>
		<div class=""></div>
	</div>
</div>

	</div>
</div>
			<div id="main">
			<div id="wsite-content" class="wsite-elements wsite-not-footer">
			<div class="wsite-section-wrap">
			<div class="wsite-section wsite-body-section wsite-section-bg-color wsite-background-11 wsite-custom-background" style="height: auto;background-color: #FFFFFF;background-image: none;is_customized: 1;" >
			<div class="wsite-section-content">
			<div class="container">
			<div class="wsite-section-elements">
				<h2 class="wsite-content-title" style="text-align:center;"><font size="6"><strong>&#47700;&#45684;</strong></font></h2>
				<div>
					<div class="wsite-multicol"><div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
						<table class="wsite-multicol-table">
							<tbody class="wsite-multicol-tbody">
								<tr class="wsite-multicol-tr">
									<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
									<!--  
										<h2 class="wsite-content-title" style="text-align:center;">
											<font size="4">&#47700;&#45684;1. AZ&#48260;&#44144; &#48288;&#51060;&#52968; &#49464;&#53944;</font>
										</h2>
									-->
									</td>				
									<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
									<!-- 
										<h2 class="wsite-content-title" style="text-align:center;">
											<font size="4">&#47700;&#45684;2. &#47784;&#51676;&#47120;&#46972; &#51064; &#45908; &#48260;&#44144; &#48288;&#51060;&#52968; &#49464;&#53944;</font>
										</h2>
									 -->
										</td>			
									</tr>
								</tbody>
							</table>
						</div>
					</div>
			</div>

			<div>
				<div class="wsite-multicol"><div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
					<table class="wsite-multicol-table">
						<tbody class="wsite-multicol-tbody">
							<tr class="wsite-multicol-tr">
							<!-- AZ버거 베이컨세트 -->
								<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
									<div><div class="wsite-image wsite-image-border-none " style="padding-top:0px;padding-bottom:0px;margin-left:0px;margin-right:0px;text-align:center">
									<!-- 테스트 시작 -->		
										<h2 class="wsite-content-title" style="text-align:center;">
											<font size="4">&#47700;&#45684;1. AZ&#48260;&#44144; &#48288;&#51060;&#52968; &#49464;&#53944;</font>
										</h2>
									<!-- 마감 -->	
									<a>
									<img src="images/azburger_2.jpg?1517625852" alt="Picture" style="width:251;max-width:100%" />
									</a>
									<div class="paragraph" style="text-align:center;">1,059 Kcal / 9,400&#50896;</div>
									<div style="display:block;font-size:90%"></div>
									</div></div>									
								</td>	
							<!-- 모짜렐라 인 더 버거 베이컨 세트 -->			
								<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
									<div><div class="wsite-image wsite-image-border-none " style="padding-top:0px;padding-bottom:0px;margin-left:0px;margin-right:0px;text-align:center">
									<h2 class="wsite-content-title" style="text-align:center;">
										<font size="4">&#47700;&#45684;2. &#47784;&#51676;&#47120;&#46972; &#51064; &#45908; &#48260;&#44144; &#48288;&#51060;&#52968; &#49464;&#53944;</font>
									</h2>
									<a>
									<img src="images/mozzbaconburger_2.jpg" alt="Picture" style="width:auto;max-width:100%" />
									</a>
									<div class="paragraph" style="text-align:center;">1,070 Kcal / 7,500&#50896;</div>
									<div style="display:block;font-size:90%"></div>
									</div></div>					
								</td>			
								
								</tr>
											</tbody>
										</table>
						</div>
					</div>
				</div>

<div><div class="wsite-multicol"><div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
	<table class="wsite-multicol-table">
		<tbody class="wsite-multicol-tbody">
			<tr class="wsite-multicol-tr">
				<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
					
						

<!-- <div class="paragraph" style="text-align:center;">1,059 Kcal / 9,400&#50896;</div>  -->


					
				</td>				<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
					
						

<!-- <div class="paragraph" style="text-align:center;">1,070 Kcal / 7,500&#50896;</div>  -->


					
				</td>			</tr>
		</tbody>
	</table>
</div></div></div>

<div><div class="wsite-multicol"><div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
	<table class="wsite-multicol-table">
		<tbody class="wsite-multicol-tbody">
			<tr class="wsite-multicol-tr">
				<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
				<!-- 
					<h2 class="wsite-content-title" style="text-align:center;">
						<font size="4">&#47700;&#45684;3. &#54620;&#50864;&#48520;&#44256;&#44592;&#49464;&#53944;</font>
					</h2>
				 -->
				</td>				
				<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
				<!-- 
					<h2 class="wsite-content-title" style="text-align:center;">
						<font size="4">&#8203;&#47700;&#45684;4.</font>&nbsp;<font size="4">&#49352;&#50864;&#48260;&#44144;&#49464;&#53944;</font>
					</h2>
				 -->					
				</td>			</tr>
		</tbody>
	</table>
</div></div></div>

<div><div class="wsite-multicol"><div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
	<table class="wsite-multicol-table">
		<tbody class="wsite-multicol-tbody">
			<tr class="wsite-multicol-tr">
				<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
					<div><div class="wsite-image wsite-image-border-none " style="padding-top:0px;padding-bottom:0px;margin-left:0px;margin-right:0px;text-align:center">
					<!-- 한우불고기 -->
					<h2 class="wsite-content-title" style="text-align:center;">
						<font size="4">&#47700;&#45684;3. &#54620;&#50864;&#48520;&#44256;&#44592;&#49464;&#53944;</font>
					</h2>
					<a>
						<img src="images/hanwooburger_2.jpg" alt="Picture" style="width:251;max-width:100%" />
					</a>
					<div class="paragraph" style="text-align:center;">
						<em>
							<font color="#999999"></font></em><font size="3">944 Kcal / 8,400&#50896;</font><em><font color="#999999"><strong></strong></font>
						</em>
					</div>
					<div style="display:block;font-size:90%"></div>
					</div></div>
					</td>	
					
					<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
						<div><div class="wsite-image wsite-image-border-none " style="padding-top:0px;padding-bottom:0px;margin-left:0px;margin-right:0px;text-align:center">
						<!-- 새우버거 -->
						<h2 class="wsite-content-title" style="text-align:center;">
							<font size="4">&#8203;&#47700;&#45684;4.</font>&nbsp;<font size="4">&#49352;&#50864;&#48260;&#44144;&#49464;&#53944;</font>
						</h2>
						<a>
						<img src="images/shrimpburger_2.jpg" alt="Picture" style="width:260;max-width:100%" />
						</a>
						<div class="paragraph" style="text-align:center;">844 Kcal / 5,600&#50896;</div>
						<div style="display:block;font-size:90%"></div>
						</div></div>
					</td>			
					
					</tr>
		</tbody>
	</table>
</div></div></div>

<div><div class="wsite-multicol"><div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
	<table class="wsite-multicol-table">
		<tbody class="wsite-multicol-tbody">
			<tr class="wsite-multicol-tr">
				<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
					
						

<!-- <div class="paragraph" style="text-align:center;"><em><font color="#999999"></font></em><font size="3">944 Kcal / 8,400&#50896;</font> 
<em><font color="#999999"><strong></strong></font></em></div> -->


					
				</td>
				<td class="wsite-multicol-col" style="width:50%; padding:0 15px;">
					<!-- <div class="paragraph" style="text-align:center;">844 Kcal / 5,600&#50896;</div>  -->
				</td>			
				</tr>
		</tbody>
	</table>
</div></div></div>

		<div>
			<!-- Unlinking -->
			<!--<form enctype="multipart/form-data" action="//www.weebly.com/weebly/apps/formSubmit.php" method="POST" id="form-646132443274734859">-->
				<form id="form-646132443274734859">
					<div id="646132443274734859-form-parent" class="wsite-form-container" style="margin-top:0px;">
						<ul class="formlist" id="646132443274734859-form-list">
											<h2 class="wsite-content-title" style="text-align:center;"><strong><font size="4">&#51452;&#47928;&#49436; &#51089;&#49457;</font></strong></h2>
											<div><div style="height: 0px; overflow: hidden; width: 0px;"></div>
											<hr class="styled-hr" style="width:0px;"></hr>
											<div style="height: 0px; overflow: hidden; width: 0px;"></div></div>
											<div><div class="wsite-multicol"><div class="wsite-multicol-table-wrap" style="margin:0 -15px;">
											<table class="wsite-multicol-table">
												<tbody class="wsite-multicol-tbody">
													<tr class="wsite-multicol-tr">	
														<td class="wsite-multicol-col" style="width:34.377097748978%; padding:0 15px;">
															<!--<label class="wsite-form-label wsite-form-fields-required-label"><span class="form-required">*</span> Indicates required field</label>-->
															<div>
																<div class="wsite-form-field" style="margin:0px 0px 0px 0px;">
												  				<label class="wsite-form-label" for="input-598954364540785139">메뉴선택 <span class="form-required">*</span></label>
												  				<div class="wsite-form-radio-container">
															    <select id='menuSelect' class='form-select' aria-required="true">
																	<option value='메뉴'>메뉴</option>
																	<option value='1'>AZ버거 베이컨 세트</option>
																	<option value='2'>모짜렐라 인 더 버거 베이컨 세트</option>
																	<option value='3'>한우불고기세트</option>
																	<option value='4'>새우버거세트</option>
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
																	<input aria-required="true" id="orderQuantity" class="wsite-form-input wsite-input wsite-input-width-100px" type="number" name="_u615700272928674583" />
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
																		  <button type='button' id='btnAdd' onclick="addMenu()">추가</button>
																		  <!--<label for='btnAdd'>추가</label>-->
																	  </span>
																	</div>
																	<div id="instructions-메뉴추가" class="wsite-form-instructions" style="display:none;"></div>
																</div>
															</div>	
														</td>
<!-- 편집시작 -->
			<td class="wsite-multicol-col" style="width:32.011166387729%; padding:0 15px;">
			<div><div class="wsite-form-field" style="margin:0px 0px 10px 0px;">
			<label class="wsite-form-label" for="orderDetail">주문내역 <span class="form-not-required">*</span></label>
			<div class="wsite-form-input-container">
			<textarea id="orderDetail" class="wsite-form-input wsite-input wsite-input-width-285px" name="_u249932526256207960" style="height: 50px"></textarea>
			</div>
			<div id="instructions-249932526256207960" class="wsite-form-instructions" style="display:none;"></div>
			</div></div>
<!-- 편집 끝 -->	
														</td>				
													</tr>
											</tbody>
									</table>
							</div>
						</div>
					</div>
				</ul>
			</div>
					<div style="display:none; visibility:hidden;">
						<input type="text" name="wsite_subject" />
					</div>
					<div style="text-align:right; margin-top:10px; margin-bottom:0px;">
					<!--  
						<input type="hidden" name="form_version" value="2" />
						<input type="hidden" name="wsite_approved" id="wsite-approved" value="approved" />
						<input type="hidden" name="ucfid" value="646132443274734859" />
						<input type="hidden" name="recaptcha_token"/>
						<input type="hidden" name="opted_in" value="0" />
						<input type="submit" style="position:absolute;top:0;left:-9999px;width:1px;height:1px" />
					-->
						<a class="wsite-button">
							<!--<span class="wsite-button-inner">주문</span>-->
							<button class="wsite-button" type="button" id="btnOrder" onclick="submitOrder()">주문</button>
						</a>
					</div>
				</form>
				<div id="g-recaptcha-646132443274734859" class="recaptcha" data-size="invisible" data-recaptcha="0" data-sitekey="6Ldf5h8UAAAAAJFJhN6x2OfZqBvANPQcnPa8eb1C"></div>
			</div>
			</div>
		</div>
			</div>
	</div>
</div>
</div>
		</div>
	</div>
	<div class="overlay w-navpane-close"></div>
	<script type="text/javascript" src="files/theme/plugins.js"></script>
	<script type="text/javascript" src="files/theme/custom.js"></script>
	</body>
</html>
