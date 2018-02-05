<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>AdminPage</title>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link type="text/css" rel="stylesheet" href="http://fast.fonts.net/cssapi/b9a63dc3-765c-484e-bafe-ef372307f1b7.css"/>

		
		<link id="wsite-base-style" rel="stylesheet" type="text/css" href="http://cdn2.editmysite.com/css/sites.css?buildTime=1234" />
<link rel="stylesheet" type="text/css" href="http://cdn2.editmysite.com/css/old/fancybox.css?1234" />
<link rel="stylesheet" type="text/css" href="http://cdn2.editmysite.com/css/social-icons.css?buildtime=1234" media="screen,projection" />
<link rel="stylesheet" type="text/css" href="admin/files/main_style.css?1517743598" title="wsite-theme-css" />
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Lato:400,300,300italic,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
<style type='text/css'>
.wsite-elements.wsite-not-footer:not(.wsite-header-elements) div.paragraph, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) p, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-block .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-description, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .wsite-form-field label, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .wsite-form-field label, #wsite-content div.paragraph, #wsite-content p, #wsite-content .product-block .product-title, #wsite-content .product-description, #wsite-content .wsite-form-field label, #wsite-content .wsite-form-field label, .blog-sidebar div.paragraph, .blog-sidebar p, .blog-sidebar .wsite-form-field label, .blog-sidebar .wsite-form-field label {font-family:"Open Sans" !important;font-weight:300 !important;}
#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-block .product-title, #wsite-content .product-description, #wsite-content .wsite-form-field label, #wsite-content .wsite-form-field label, .blog-sidebar div.paragraph, .blog-sidebar p, .blog-sidebar .wsite-form-field label, .blog-sidebar .wsite-form-field label {color:#818181 !important;}
.wsite-elements.wsite-footer div.paragraph, .wsite-elements.wsite-footer p, .wsite-elements.wsite-footer .product-block .product-title, .wsite-elements.wsite-footer .product-description, .wsite-elements.wsite-footer .wsite-form-field label, .wsite-elements.wsite-footer .wsite-form-field label{}
.wsite-elements.wsite-not-footer:not(.wsite-header-elements) h2, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-long .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-large .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-small .product-title, #wsite-content h2, #wsite-content .product-long .product-title, #wsite-content .product-large .product-title, #wsite-content .product-small .product-title, .blog-sidebar h2 {font-family:"Lato" !important;}
#wsite-content h2, #wsite-content .product-long .product-title, #wsite-content .product-large .product-title, #wsite-content .product-small .product-title, .blog-sidebar h2 {color:#626262 !important;}
.wsite-elements.wsite-footer h2, .wsite-elements.wsite-footer .product-long .product-title, .wsite-elements.wsite-footer .product-large .product-title, .wsite-elements.wsite-footer .product-small .product-title{}
#wsite-title {font-family:"Playfair Display" !important;font-weight:700 !important;text-transform:  none !important;}
.wsite-menu-default a {}
.wsite-menu a {}
.wsite-image div, .wsite-caption {}
.galleryCaptionInnerText {}
.fancybox-title {}
.wslide-caption-text {}
.wsite-phone {}
.wsite-headline,.wsite-header-section .wsite-content-title {font-family:"Playfair Display" !important;font-weight:400 !important;}
.wsite-headline-paragraph,.wsite-header-section .paragraph {}
.wsite-button-inner {font-weight: bold !important;}
.wsite-not-footer blockquote {}
.wsite-footer blockquote {}
.blog-header h2 a {}
#wsite-content h2.wsite-product-title {}
.wsite-product .wsite-product-price a {}
@media screen and (min-width: 767px) {.wsite-elements.wsite-not-footer:not(.wsite-header-elements) div.paragraph, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) p, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-block .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-description, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .wsite-form-field label, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .wsite-form-field label, #wsite-content div.paragraph, #wsite-content p, #wsite-content .product-block .product-title, #wsite-content .product-description, #wsite-content .wsite-form-field label, #wsite-content .wsite-form-field label, .blog-sidebar div.paragraph, .blog-sidebar p, .blog-sidebar .wsite-form-field label, .blog-sidebar .wsite-form-field label {}
#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-block .product-title, #wsite-content .product-description, #wsite-content .wsite-form-field label, #wsite-content .wsite-form-field label, .blog-sidebar div.paragraph, .blog-sidebar p, .blog-sidebar .wsite-form-field label, .blog-sidebar .wsite-form-field label {}
.wsite-elements.wsite-footer div.paragraph, .wsite-elements.wsite-footer p, .wsite-elements.wsite-footer .product-block .product-title, .wsite-elements.wsite-footer .product-description, .wsite-elements.wsite-footer .wsite-form-field label, .wsite-elements.wsite-footer .wsite-form-field label{}
.wsite-elements.wsite-not-footer:not(.wsite-header-elements) h2, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-long .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-large .product-title, .wsite-elements.wsite-not-footer:not(.wsite-header-elements) .product-small .product-title, #wsite-content h2, #wsite-content .product-long .product-title, #wsite-content .product-large .product-title, #wsite-content .product-small .product-title, .blog-sidebar h2 {}
#wsite-content h2, #wsite-content .product-long .product-title, #wsite-content .product-large .product-title, #wsite-content .product-small .product-title, .blog-sidebar h2 {}
.wsite-elements.wsite-footer h2, .wsite-elements.wsite-footer .product-long .product-title, .wsite-elements.wsite-footer .product-large .product-title, .wsite-elements.wsite-footer .product-small .product-title{}
#wsite-title {font-size:24px !important;}
.wsite-menu-default a {}
.wsite-menu a {}
.wsite-image div, .wsite-caption {}
.galleryCaptionInnerText {}
.fancybox-title {}
.wslide-caption-text {}
.wsite-phone {}
.wsite-headline,.wsite-header-section .wsite-content-title {font-size:70px !important;}
.wsite-headline-paragraph,.wsite-header-section .paragraph {}
.wsite-button-inner {}
.wsite-not-footer blockquote {}
.wsite-footer blockquote {}
.blog-header h2 a {}
#wsite-content h2.wsite-product-title {}
.wsite-product .wsite-product-price a {}
}</style>

		<script>
var STATIC_BASE = '//cdn1.editmysite.com/';
var ASSETS_BASE = '//cdn2.editmysite.com/';
var STYLE_PREFIX = 'wsite';
</script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js'></script>

<script type="text/javascript" src="http://cdn2.editmysite.com/js/lang/en/stl.js?buildTime=1234&"></script>
<script src="http://cdn2.editmysite.com/js/site/main.js?buildTime=1234"></script><script type="text/javascript">_W.configDomain = "www.weebly.com";</script><script>_W.relinquish && _W.relinquish()</script>
<script type="text/javascript" src="http://cdn2.editmysite.com/js/lang/en/stl.js?buildTime=1234&"></script><script> _W.themePlugins = [];</script><script type="text/javascript"> _W.recaptchaUrl = "https://www.google.com/recaptcha/api.js"; </script><script type="text/javascript"> window._W = window._W || {}; _W.showV2Footer = 0; </script><script type="text/javascript"><!--
	var IS_ARCHIVE = 1;
	
	function initFlyouts(){
		initPublishedFlyoutMenus(
			[{"id":"286195793459059658","title":"Home","url":"/admin","target":"","nav_menu":false,"nonclickable":false}],
			"286195793459059658",
			'',
			'active',
			false,
			{"navigation\/item":"<li {{#id}}id=\"{{id}}\"{{\/id}} class=\"wsite-menu-item-wrap\">\n\t<a\n\t\t{{^nonclickable}}\n\t\t\t{{^nav_menu}}\n\t\t\t\thref=\"{{url}}\"\n\t\t\t{{\/nav_menu}}\n\t\t{{\/nonclickable}}\n\t\t{{#target}}\n\t\t\ttarget=\"{{target}}\"\n\t\t{{\/target}}\n\t\t{{#membership_required}}\n\t\t\tdata-membership-required=\"{{.}}\"\n\t\t{{\/membership_required}}\n\t\tclass=\"wsite-menu-item\"\n\t\t>\n\t\t{{{title_html}}}\n\t<\/a>\n\t{{#has_children}}{{> navigation\/flyout\/list}}{{\/has_children}}\n<\/li>\n","navigation\/flyout\/list":"<div class=\"wsite-menu-wrap\" style=\"display:none\">\n\t<ul class=\"wsite-menu\">\n\t\t{{#children}}{{> navigation\/flyout\/item}}{{\/children}}\n\t<\/ul>\n<\/div>\n","navigation\/flyout\/item":"<li {{#id}}id=\"{{id}}\"{{\/id}}\n\tclass=\"wsite-menu-subitem-wrap {{#is_current}}wsite-nav-current{{\/is_current}}\"\n\t>\n\t<a\n\t\t{{^nonclickable}}\n\t\t\t{{^nav_menu}}\n\t\t\t\thref=\"{{url}}\"\n\t\t\t{{\/nav_menu}}\n\t\t{{\/nonclickable}}\n\t\t{{#target}}\n\t\t\ttarget=\"{{target}}\"\n\t\t{{\/target}}\n\t\tclass=\"wsite-menu-subitem\"\n\t\t>\n\t\t<span class=\"wsite-menu-title\">\n\t\t\t{{{title_html}}}\n\t\t<\/span>{{#has_children}}<span class=\"wsite-menu-arrow\">&gt;<\/span>{{\/has_children}}\n\t<\/a>\n\t{{#has_children}}{{> navigation\/flyout\/list}}{{\/has_children}}\n<\/li>\n"},
			{}
		)
	}
//-->
</script>
		
		
	</head>
	<!-- Script Inserted -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type='text/javascript' src="/js/login.js"></script>
	
	<body class="header-page  wsite-page-index  full-width-body-off header-overlay-off alt-nav-off  wsite-theme-light"><div class="wrapper">
    <div class="birdseye-header">
      <div class="nav-wrap">
        <div class="container">
          <div class="logo"><span class="wsite-logo">

	<a href="">
		<img src="admin/images/logo1.jpg" alt="Oikos" />
	</a>

</span></div>
          <div class="nav desktop-nav"><ul class="wsite-menu-default">
		<li id="active" class="wsite-menu-item-wrap">
			<a
						href="/admin"
				class="wsite-menu-item"
				>
				Home
			</a>
			
		</li>
</ul>
</div>
          <label class="hamburger"><span></span></label>
        </div>
      </div>
    </div>

    <div class="banner-wrap">
      <div class="wsite-elements wsite-not-footer wsite-header-elements">
	<div class="wsite-section-wrap">
	<div  class="wsite-section wsite-header-section wsite-section-bg-image" style="height: 721px;background-image: url(&quot;admin/images/admin_background.jpg&quot;) ;background-repeat: no-repeat ;background-position: 50.00% 100.00% ;background-size: 100% ;background-color: transparent ;background-size: cover;" >
		<div class="wsite-section-content">
			
          <div class="container">
            <div class="banner">
				<div class="wsite-section-elements">
					<div class="paragraph"><font color="#3f3f3f" size="4">LOTTE GRS</font></div>

<h2 class="wsite-content-title"><strong><font color="#3f3f3f">LOTTE RIA</font></strong></h2>

<div><div id="756977728388425340" align="center" style="width: 100%; overflow-y: hidden;" class="wcustomhtml">
	<input type="text" id="loginId" placeholder=" ID" style="line-height:40px;">
	<input type="password" id="loginPassword" placeholder=" Password" style="line-height:40px;">
</div>



</div>

<div style="text-align:center;"><div style="height: 10px; overflow: hidden;"></div>
<a class="wsite-button wsite-button-large wsite-button-highlight">
<!-- <span class="wsite-button-inner">Log in</span> -->
<button class="wsite-button-inner" type="submit" id="btnLogin">Log in</button>
</a>
<div style="height: 10px; overflow: hidden;"></div></div>
				</div>
			</div>
          </div>
      
		</div>
		<div class=""></div>
	</div>
</div>

</div>

    </div>

    <div class="main-wrap">
      <div id="wsite-content" class="wsite-elements wsite-not-footer">
	<div class="wsite-section-wrap">
	<div class="wsite-section wsite-body-section wsite-background-3"  >
		<div class="wsite-section-content">
          <div class="container">
			<div class="wsite-section-elements">
				
			</div>
		</div>
      </div>

	</div>
</div>

</div>

    </div>
  </div><!-- /.wrapper -->

  <div id="navMobile" class="nav mobile-nav">
    <label class="hamburger"><span></span></label>
    <ul class="wsite-menu-default">
    		<li id="active" class="wsite-menu-item-wrap">
    			<a
    						href="index.html"
    				class="wsite-menu-item"
    				>
    				Home
    			</a>
    			
    		</li>
    </ul>
  </div>

	<script type="text/javascript" src="admin/files/theme/plugins.js"></script>
  <script type="text/javascript" src="admin/files/theme/custom.js"></script>

		
	</body>
</html>
