<!doctype html>
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">

	<!-- Use the .htaccess and remove these lines to avoid edge case issues.
	   More info: h5bp.com/i/378 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="description" content="Cork Stone Mason - Conor Kelleher" />
	<meta name="keywords" content="Cork,Stone,Mason,Conor,Kelleher,stonemasonry" />
	<meta name="author" content="Ian O'Sullivan" />

	<title>Cork Stone Mason - Conor Kelleher</title>

	<!-- Mobile viewport optimized: h5bp.com/viewport -->
	<!---<meta name="viewport" content="width=device-width">--->

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory: mathiasbynens.be/notes/touch-icons -->

	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/picasa.css">
	<link rel="stylesheet" href="css/jquery.lightbox-0.5.css">
	<!--- <link rel="stylesheet" href="css/fullcalendar.css"> --->
	<!---<link rel="stylesheet" href="css/le-frog/jquery-ui-1.8.23.custom.css">--->
	<link rel="stylesheet" href="css/redmond/jquery-ui-1.9.2.custom.css">
	<link rel="shortcut icon" href="img/shortcut_icon.png" type="image/x-icon" />
	<link href='http://fonts.googleapis.com/css?family=Parisienne' rel='stylesheet' type='text/css'>
	<!--- <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'> --->
	<!--- <link rel="stylesheet" type="text/css" href="css/header.css" /> --->
	<!-- <link href='http://fonts.googleapis.com/css?family=Fascinate' rel='stylesheet' type='text/css' /> -->
	<!-- Another nice hand scripting font
	<link href='http://fonts.googleapis.com/css?family=Berkshire+Swash' rel='stylesheet' type='text/css'> -->
	<!--- <link href='http://fonts.googleapis.com/css?family=Merienda+One' rel='stylesheet' type='text/css'> --->

	<!-- More ideas for your <head> here: h5bp.com/d/head-Tips -->

	<!-- All JavaScript at the bottom, except this Modernizr build.
	   Modernizr enables HTML5 elements & feature detects for optimal performance.
	   Create your own custom Modernizr build: www.modernizr.com/download/ -->
	<script src="js/libs/modernizr-2.5.3.min.js"></script>

	<!--- Google Analytics // START --->
	<script type="text/javascript">
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-XXXXXXXXX']);
	  _gaq.push(['_trackPageview']);
	
	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	</script>
	<!--- Google Analytics // End --->
</head>
<body>
	<cfsilent>
		<!--- Get the feed of all available albums --->
		<!--- See here for more about the feed source.... 
			https://developers.google.com/picasa-web/docs/2.0/developers_guide_protocol#ListAlbums 
			https://developers.google.com/picasa-web/docs/2.0/reference#Parameters
			https://developers.google.com/gdata/docs/2.0/reference#fields 
		--->
		<!--- <cffeed name="gallery_RSS" source="https://picasaweb.google.com/data/feed/api/user/corkstonemason?fields=author,entry"> --->
		<cfset picasa_username = "corkstonemason">
		<cffeed name="gallery_RSS" source="https://picasaweb.google.com/data/feed/api/user/#picasa_username#">
	</cfsilent>

	<div id="main">
		<header style="position:relative">
			<!---<h3>Vincent Manning Photography</h3>--->
			<img id="title" src="img/title.png"/>
			<span id="right_side">
				<!---<span>Weely good photos n stuff</span>--->
				<a style="display:block" title="Send an email" href="javascript:ContactMe()">Contact Me</a>
				<a style="display:block" title="Send an email" href="javascript:ContactMe()">Conor Kelleher</a>
				<!--- <div class="fb-like" data-href="http://vincentmanning.net/" data-send="true" data-layout="button_count" data-width="90" data-show-faces="true" data-font="arial"></div> --->
			</span>

		</header>

		<!-- section container contains the lot -->
		<section>

			<aside>

				<!--- Menu marker --->
				<img id="menu_highlight" src="img/menu_icon.png">

				<ul class="bmenu">
					<li data-article="home"><a href="#">Home</a></li>
					<!--- Loop through all available albums and output the title --->
					<cfset count = 1>
					<cfloop array="#gallery_RSS.entry#" index="album">
						<cfoutput>
							<!--- #gallery_RSS.entry[count].id[2]# is the album id... this is used in AJAX reloads later --->
							<li data-article="pic_style_#count#" data-username="#picasa_username#" data-gallery="#gallery_RSS.entry[count].id[2]#" class="gallery"><a>#album.title.value#</a></li>
						</cfoutput>
						<cfset count ++>
					</cfloop>

					<li data-article="contact"><a>Contact Me</a></li>
				</ul>
	      	</aside>

			<!--- Separate articles for each page --->
			<article id="home" class="article">
				<cfinclude template="pages/intro.cfm">
			</article>
			
			<!--- <cfdump var="#gallery_RSS.entry[1].link[1].href #"> --->
			
			<!--- Loop through each album --->
			<!--- <cfset count = 1>
			<!--- <cfset album = gallery_RSS.entry[1]>
			<cfinclude template="pages/picasa_album.cfm"> --->

			<cfloop array="#gallery_RSS.entry#" index="album">
				<cfoutput>
					<article id="pic_style_#count#" class="article photos">
						<cfinclude template="pages/picasa_album.cfm">
					</article>				
				</cfoutput>
				
				<cfset count ++>
				
			</cfloop> --->			

			<article id="gallery" class="article">
				<!--- AJAX Populated upon menu click --->
			</article>

			<article id="contact" class="article">
				<cfinclude template="pages/contact_me.cfm">
			</article>
			
		</section>

	</div>

	<!-- JavaScript at the bottom for fast page loading -->

	<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/libs/jquery-1.8.0.min.js"><\/script>')</script>
	<!---<script src="js/libs/jquery-ui-1.8.23.custom.min.js"></script>--->
	<script src="js/libs/jquery-ui-1.9.2.custom.min.js"></script>

	<!-- scripts concatenated and minified via build script -->
	<script src="js/jquery.lightbox-0.5.min.js"></script>
	<!--- <script src="js/fullcalendar.js"></script> --->
	<!--- <script src="js/gcal.js"></script> --->
	<script src="js/plugins.js"></script>
	<script src="js/script.js"></script>
	<!-- end scripts -->

	<!--- Facebook stuff --->
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
</body>
</html>

<cfinclude template="pages/dialog/dialog.cfm">
<!--- <cfinclude template="pages/action/dynamicBackground.cfm"> --->
