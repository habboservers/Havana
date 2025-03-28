
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta http-equiv="content-type" content="text/html" />
	<title>{{ site.siteName }}:  </title>

<script type="text/javascript">
var andSoItBegins = (new Date()).getTime();
</script>
    <link rel="shortcut icon" href="{{ site.staticContentPath }}/web-gallery/v2/favicon.ico" type="image/vnd.microsoft.icon" />
    <link rel="alternate" type="application/rss+xml" title="{{ site.siteName }}: RSS" href="{{ site.sitePath }}/articles/rss.xml" />
<script src="{{ site.staticContentPath }}/web-gallery/static/js/visual.js" type="text/javascript"></script>

<script src="{{ site.staticContentPath }}/web-gallery/static/js/libs.js" type="text/javascript"></script>
<script src="{{ site.staticContentPath }}/web-gallery/static/js/common.js" type="text/javascript"></script>
<script src="{{ site.staticContentPath }}/web-gallery/static/js/fullcontent.js" type="text/javascript"></script>
<script src="{{ site.staticContentPath }}/web-gallery/static/js/libs2.js" type="text/javascript"></script>
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
<body id="faq" class="plain-template">
<script src="{{ site.staticContentPath }}/web-gallery/static/js/faq.js" type="text/javascript"></script>
<div id="faq" class="clearfix">
<div id="faq-header" class="clearfix"><img src="{{ site.staticContentPath }}/web-gallery/v2/images/faq/faq_header.png" /><form method="post" action="{{ site.sitePath }}/help/faqsearch" class="search-box"><input type="text" id="faq-search" name="query" class="search-box-query search-box-onfocus" size="50" value="Search..."/><input type="submit" value="" title="Search" class="search" /></form></div>
<div id="faq-container" class="clearfix">
<div id="faq-category-list">
<ul class="faq">
<li><a href="{{ site.sitePath }}/help/1" name=""><span class="faq-link">Contáctenos</span></a></li>
</ul>
</div>
<div id="faq-category-content" class="clearfix" >
<p class="faq-category-description"></p>
<h4 id="faq-item-header-2" class="faq-item-header faq-toggle "><span class="faq-toggle selected" id="faq-header-text-2">How do I contact {{ site.siteName }}?</span></h4>
	<div id="faq-item-content-2" class="faq-item-content clearfix">
	    <div class="faq-item-content clearfix">¡Por favor use la <a href="{{ site.sitePath }}/iot/go">Herramienta de ayuda</a> para enviarnos un correo electrónico!</div>
	<div class="faq-close-container">
	<div id="faq-close-button-2" class="faq-close-button clearfix faq-toggle" style="display:none">Cerrar FAQ <img id="faq-close-image-2" class="faq-toggle" src="{{ site.staticContentPath }}/web-gallery/v2/images/faq/close_btn.png"/></div>
	</div>
	</div>

	<script type="text/javascript">
	    
	    $("faq-close-button-2").show();
	</script>
<h4 id="faq-item-header-3" class="faq-item-header faq-toggle "><span class="faq-toggle selected" id="faq-header-text-3">¿Enviar mi problema dos veces recibirá una respuesta más rápida?</span></h4>
	<div id="faq-item-content-3" class="faq-item-content clearfix">
	    <div class="faq-item-content clearfix">Enviar más de un correo electrónico ralentizará el personal de soporte de jugadores, ya que tendrán más correos electrónicos para leer.Si no ha recibido ninguna respuesta después de una semana, consulte su carpeta de correo no deseado/basura.Si todavía no hay respuesta, entonces debe haber habido una falla técnica y debe enviar su correo electrónico nuevamente.</div>
	<div class="faq-close-container">
	<div id="faq-close-button-3" class="faq-close-button clearfix faq-toggle" style="display:none">Cerrar FAQ <img id="faq-close-image-3" class="faq-toggle" src="{{ site.staticContentPath }}/web-gallery/v2/images/faq/close_btn.png"/></div>
	</div>
	</div>

	<script type="text/javascript">
	    $("faq-item-content-3").hide();
	    $("faq-close-button-3").show();
	</script>
<script type="text/javascript">
    FaqItems.init();
    SearchBoxHelper.init();
</script>
</div>

</div>

<div id="faq-footer" class="clearfix"><p><a href="http://localhost/" target="_self">Inicio</a> | <a href="http://localhost/papers/disclaimer" target="_self">Descargo de responsabilidad</a> | <a href="http://localhost/papers/privacy" target="_self">Política de privacidad</a> | <a href="http://localhost/help/1" target="_new">Contact Us</a></p>
		<p>This is an unofficial Habbo fansite to see what Habbo looked like in 2009.<br />HABBO es una marca registrada de Sulake Corporation. Todos los derechos reservados a sus respectivos propietarios).</p>
	</div>			</div>
        </div>
    </div>
	</div>
<script type="text/javascript">
HabboView.run();
</script>


</body>
</html>