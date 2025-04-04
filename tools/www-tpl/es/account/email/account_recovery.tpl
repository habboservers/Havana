
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta http-equiv="content-type" content="text/html" />
	<title>{{ site.siteName }}: Recovery </title>

<script type="text/javascript">
var andSoItBegins = (new Date()).getTime();
</script>
    <link rel="shortcut icon" href="{{ site.staticContentPath }}/web-gallery/v2/favicon.ico" type="image/vnd.microsoft.icon" />
    <link rel="alternate" type="application/rss+xml" title="{{ site.siteName }}: RSS" href="{{ site.sitePath }}/articles/rss.xml" />

<script src="{{ site.staticContentPath }}/web-gallery/static/js/libs2.js" type="text/javascript"></script>
<script src="{{ site.staticContentPath }}/web-gallery/static/js/landing.js" type="text/javascript"></script>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/style.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/buttons.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/boxes.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/tooltips.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/styles/local/com.css" type="text/css" />

<script src="{{ site.staticContentPath }}/web-gallery/js/local/com.js" type="text/javascript"></script>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/process.css" type="text/css" />

<script type="text/javascript">
document.habboLoggedIn = false;
var habboName = null;
var ad_keywords = "";
var habboReqPath = "{{ site.sitePath }}";
var habboStaticFilePath = "{{ site.staticContentPath }}/web-gallery";
var habboImagerUrl = "{{ site.staticContentPath }}/habbo-imaging/";
var habboPartner = "";
var habboDefaultClientPopupUrl = "{{ site.sitePath }}/client";
window.name = "habboMain";
if (typeof HabboClient != "undefined") { HabboClient.windowName = "client"; }

</script>


<meta name="description" content="Join the world's largest virtual hangout where you can meet and make friends. Design your own rooms, collect cool furniture, throw parties and so much more! Create your FREE Habbo today!" />
<meta name="keywords" content="Habbo, virtual, world, join, groups, forums, play, games, online, friends, teens, collecting, social network, create, collect, connect, furniture, virtual, goods, sharing, badges, social, networking, hangout, safe, music, celebrity, celebrity visits, cele" />

<!--[if IE 8]>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/ie8.css" type="text/css" />
<![endif]-->
<!--[if lt IE 8]>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/ie.css" type="text/css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/ie6.css" type="text/css" />
<script src="{{ site.staticContentPath }}/web-gallery/static/js/pngfix.js" type="text/javascript"></script>
<script type="text/javascript">
try { document.execCommand('BackgroundImageCache', false, true); } catch(e) {}
</script>

<style type="text/css">
body { behavior: url({{ site.staticContentPath }}/web-gallery/js/csshover.htc); }
</style>
<![endif]-->
<meta name="build" content="HavanaWeb" />
</head>
<body  class="process-template">

<div id="overlay"></div>

<div id="container">
	<div class="cbb process-template-box clearfix">
		<div id="content">

			{% include "../../base/frontpage_header.tpl" %}
		<div id="process-content">
<style type="text/css">
		div.left-column { float: left; width: 65% }
		label { display: block }
		p { margin:0px }
	</style>
	<div id="process-content">
		{% if alert.hasAlert %}

		
	<div class="cbb clearfix {{ alert.colour }}">
    <h2 class="title">Account Recovery</h2>
    <div class="box-content">
        <p>{{ alert.message }}</p>
		</div>
		</div>
		
		{% else %}
		
		
		<div class="cbb clearfix green">
		<h2 class="title" style="background-color: #429B00;">Account Recovery</h2>
		<div class="box-content">
        <p>Please enter and confirm your new password below to recover your account.</p>
		<div class="clear"></div>
        <form method="post" action="recovery" id="accountlist-form">
            <p>
            <label for="password-field">Contraseña</label>
            <input type="text" name="password" id="password-field" value="" />
            </p>
			<div class="clear"></div>
			 <p>
            <label for="confirmpassword-field">Confirm password</label>
            <input type="text" name="confirmpassword" id="confirmpassword-field" value="" />
            </p>

            <p>
            <input type="submit" value="Reset password" name="actionList" class="submit process-button" id="accountlist-submit" />
            </p>
            <input type="hidden" value="{{ recoveryCode }}" name="recovery_code" />
			<input type="hidden" value="{{ userId }}" name="user_id" />
        </form>
		<!-- <a href="{{ site.sitePath }}/">Continue to {{ site.siteName }} front page.</a> -->
		
		</div>
		</div>
		
		
		{% endif %}

</div>



<!--[if lt IE 7]>
<script type="text/javascript">
Pngfix.doPngImageFix();
</script>
<![endif]-->

{% include "../../base/footer.tpl" %}

<script type="text/javascript">
HabboView.run();
</script>


</body>
</html>