
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta http-equiv="content-type" content="text/html" />
	<title>{{ site.siteName }}: Buscar Etiquetas </title>

<script type="text/javascript">
var andSoItBegins = (new Date()).getTime();
</script>
    <link rel="shortcut icon" href="{{ site.staticContentPath }}/web-gallery/v2/favicon.ico" type="image/vnd.microsoft.icon" />
    <link rel="alternate" type="application/rss+xml" title="{{ site.siteName }}: RSS" href="{{ site.sitePath }}/articles/rss.xml" />
<script src="{{ site.staticContentPath }}/web-gallery/static/js/libs2.js" type="text/javascript"></script>
<script src="{{ site.staticContentPath }}/web-gallery/static/js/visual.js" type="text/javascript"></script>
<script src="{{ site.staticContentPath }}/web-gallery/static/js/libs.js" type="text/javascript"></script>
<script src="{{ site.staticContentPath }}/web-gallery/static/js/common.js" type="text/javascript"></script>
<script src="{{ site.staticContentPath }}/web-gallery/static/js/fullcontent.js" type="text/javascript"></script>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/style.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/buttons.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/boxes.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/tooltips.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/styles/local/com.css" type="text/css" />


<script src="{{ site.staticContentPath }}/web-gallery/js/local/com.js" type="text/javascript"></script>

<script type="text/javascript">
document.habboLoggedIn = {{ session.loggedIn }};
var habboName = "{{ session.loggedIn ? playerDetails.getName() : "" }}";
var ad_keywords = "";
var habboReqPath = "{{ site.sitePath }}";
var habboStaticFilePath = "{{ site.staticContentPath }}/web-gallery";
var habboImagerUrl = "{{ site.staticContentPath }}/habbo-imaging/";
var habboPartner = "";
window.name = "habboMain";
if (typeof HabboClient != "undefined") { HabboClient.windowName = "client"; }

</script>

<meta name="description" content="Únase al lugar de reunión virtual más grande del mundo donde pueda conocer y hacer amigos.¡Diseñe sus propias habitaciones, recolecte muebles geniales, organice fiestas y mucho más!¡Crea tu {{ site.siteName }} gratis hoy!" />
<meta name="keywords" content="{{ site.siteName }}, virtual, mundo, unirse, grupos, foros, juegos, juegos, en línea, amigos, adolescentes, coleccionar, redes sociales, crear, recopilar, conectar, muebles, virtuales, productos, compartir, insignias, sociales, redes, lugar de reunión, seguridad, música, celebridad, visitas de celebridades" />

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

{% if session.loggedIn == false %}
<body id="tags" class="anonymous ">
{% else %}
<body id="tags" class=" ">
{% endif %}
{% include "base/header.tpl" %}

<div id="content-container">

<div id="navi2-container" class="pngbg">
    <div id="navi2" class="pngbg clearfix">
		<ul>
			<li class="">
				<a href="{{ site.sitePath }}/community">Comunidad</a>    		</li>
    		<li class="">
				<a href="{{ site.sitePath }}/articles">Noticias</a>    		</li>
			<li class="selected">
				Tags			</li>
    		<li class="">
				<a href="{{ site.sitePath }}/community/events">Eventos</a>    		</li>
    		<li class=" last">
				<a href="{{ site.sitePath }}/community/fansites">Fansites</a>    		</li>
    		<!-- <li class=" last">
				<a href="{{ site.sitePath }}/events/steampunk">Steampunk</a>    		</li> -->
		</ul>
    </div>
</div>

<div id="container">
	<div id="content" style="position: relative" class="clearfix">
    <div id="column1" class="column">

			     		
				<div class="habblet-container ">		
						<div class="cbb clearfix default ">
	
							<h2 class="title">Etiquetas Populares							</h2>
						<div id="tag-related-habblet-container" class="habblet box-contents">	
						{% include "base/tag_cloud.tpl" %}
</div>
	
						
					</div>

				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 

			     		
				<div class="habblet-container ">		
						<div class="cbb clearfix default ">
	
							<h2 class="title">Pelea de etiqueta							</h2>
						<div id="tag-fight-habblet-container">
<div class="fight-process" id="fight-process">La pelea ... está en ....</div>
<div id="fightForm" class="fight-form">
    <div class="tag-field-container">Primera etiqueta<br /><input maxlength="30" type="text" class="tag-input" name="tag1" id="tag1"/></div>

    <div class="tag-field-container">Segunda etiqueta<br /><input maxlength="30" type="text" class="tag-input" name="tag2" id="tag2"/></div>
</div>
<div id="fightResults" class="fight-results">
    <div class="fight-image">
    	<img src="{{ site.staticContentPath }}/web-gallery/images/tagfight/tagfight_start.gif" alt="" name="fightanimation" id="fightanimation" />
        <a id="tag-fight-button" href="#" class="new-button" onclick="TagFight.init(); return false;"><b>Luchar</b><i></i></a>
    </div>
</div>
<div class="tagfight-preload">
	<img src="{{ site.staticContentPath }}/web-gallery/images/tagfight/tagfight_end_0.gif" width="1" height="1"/>

	<img src="{{ site.staticContentPath }}/web-gallery/images/tagfight/tagfight_end_1.gif" width="1" height="1"/>
	<img src="{{ site.staticContentPath }}/web-gallery/images/tagfight/tagfight_end_2.gif" width="1" height="1"/>
	<img src="{{ site.staticContentPath }}/web-gallery/images/tagfight/tagfight_loop.gif" width="1" height="1"/>
	<img src="{{ site.staticContentPath }}/web-gallery/images/tagfight/tagfight_start.gif" width="1" height="1"/>
</div>
</div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

{% if session.loggedIn %}
				<div class="habblet-container ">		
						<div class="cbb clearfix default ">
	
							<h2 class="title">Combinación						</h2>
						<div id="tag-match-habblet-container">
<div id="tag-match-result">
    Escriba el nombre de su amigo para ver qué tan bien coinciden ustedes dos.</div>

<div id="tag-match-form">
<input type="text" id="tag-match-friend" value=""/>
<a class="new-button" id="tag-match-send" href="#"><b>¡Combinar!</b><i></i></a>
</div>
<script type="text/javascript">
document.observe("dom:loaded", function() {
    Event.observe($('tag-match-friend'), "keypress", function(e) {
        if (e.keyCode == Event.KEY_RETURN) {
            TagHelper.matchFriend();
        }
    });
    Event.observe($('tag-match-send'), "click", function(e) { Event.stop(e); TagHelper.matchFriend(); });
});
</script>
</div>
	
						
					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
{% endif %}

</div>
<div id="column2" class="column">		     		
	<div class="habblet-container ">	
							<div class="cbb clearfix default ">
									<h2 class="title">Buscar Etiquetas							</h2>
									<div id="tag-search-habblet-container">	
	{% include "base/tag_search.tpl" %}
		
				</div>
				</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
			 

</div>
<script type="text/javascript">
HabboView.run();

</script>


<div id="column3" class="column">
				<div class="habblet-container ">
						<div class="ad-container">

						{% include "base/ads_container.tpl" %}
						</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
</div>

<!--[if lt IE 7]>
<script type="text/javascript">
Pngfix.doPngImageFix();
</script>
<![endif]-->
    </div>
{% include "base/footer.tpl" %}

<script type="text/javascript">
HabboView.run();
</script>


</body>
</html>