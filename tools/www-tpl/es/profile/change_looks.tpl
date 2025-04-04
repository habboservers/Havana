
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta http-equiv="content-type" content="text/html" />
	<title>{{ site.siteName }}: Mis detalles </title>

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

<script src="{{ site.staticContentPath }}/web-gallery/static/js/settings.js?{{ randomNumber }}" type="text/javascript"></script>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/settings.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/friendmanagement.css" type="text/css" />


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

{% include "../base/header.tpl" %}

<div id="content-container">

	<div id="navi2-container" class="pngbg">
    <div id="navi2" class="pngbg clearfix">
		<ul>
			<li class="">
				<a href="{{ site.sitePath }}/me">Inicio</a>			</li>
    		<li class="">
				<a href="{{ site.sitePath }}/home/{{ playerDetails.getName() }}">Mi Página</a>    		</li>
    		<li class="selected">
				Configuraciones de la cuenta    		</li>			
			<li class="{% if gameConfig.getInteger('guides.group.id') == 0 %} last{% endif %}">
				<a href="{{ site.sitePath }}/club">{{ site.siteName }} Club</a>
			</li>
			{% if gameConfig.getInteger('guides.group.id') > 0 %}
			<li class=" last">
				<a href="{{ site.sitePath }}/groups/officialhabboguides">Guías de Habbo</a>
			</li>
			{% endif %}
		</ul>
    </div>
</div>
	
<div id="container">
	<div id="content" style="position: relative" class="clearfix">
    <div>
<div class="content">
<div class="habblet-container" style="float:left; width:210px;">
<div class="cbb settings">

<h2 class="title">Cuenta</h2>
<div class="box-content">
            <div id="settingsNavigation">
            <ul>
		<li class="selected">Mi Ropa
                </li><li><a href="{{ site.sitePath }}/profile?tab=2">Mis Preferencias</a>
				{% if accountActivated %}
                </li><li><a href="{{ site.sitePath }}/profile?tab=3">Mi Email</a>
				{% else %}
				</li><li><a href="{{ site.sitePath }}/profile/verify">Cambio y verificación de correo electrónico</a>
				{% endif %}
                </li><li><a href="{{ site.sitePath }}/profile?tab=4">Mi Contraseña</a>
                </li><li><a href="{{ site.sitePath }}/profile?tab=5">Gestión de Amigos</a>
								</li><li><a href="{{ site.sitePath }}/profile?tab=6">Configuración Comercial</a>
                </li>            </ul>
            </div>
</div></div>
    {% include "profile/profile_widgets/join_club.tpl" %}
</div>

<div class="habblet-container" style="float:left; width: 560px;">
<div class="cbb clearfix settings">

<h2 class="title">Cambia tu apariencia</h2>
<div class="box-content">

{% if settingsSavedAlert %}
<div class="rounded rounded-green">configuracionesDeLaCuentaUpdatedSuccessfully.<br />	</div><br />
{% endif %}
	<div>&nbsp;</div>

<div id="settings-editor">
Debe tener un reproductor de flash instalado en su computadora antes de poder editar su {{ site.siteName }}. Puedes descargar el reproductor desde aquí: <a target="_blank" href="http://www.adobe.com/go/getflashplayer">http://www.adobe.com/go/getflashplayer</a>
</div>

{% if playerDetails.hasClubSubscription() %}
<div id="settings-wardrobe" style="display: none">
<ol id="wardrobe-slots">
	<li>
		<p id="wardrobe-slot-1" style="background-image: url({{ wardrobeUrl1 }})">
	   		<span id="wardrobe-store-1" class="wardrobe-store"></span>
	   		<span id="wardrobe-dress-1" class="wardrobe-dress"></span>
   		</p>
    </li>
	<li>
		<p id="wardrobe-slot-2" style="background-image: url({{ wardrobeUrl2 }})">
	   		<span id="wardrobe-store-2" class="wardrobe-store"></span>
	   		<span id="wardrobe-dress-2" class="wardrobe-dress"></span>
   		</p>
    </li>
	<li>
		<p id="wardrobe-slot-3" style="background-image: url({{ wardrobeUrl3 }})">
	   		<span id="wardrobe-store-3" class="wardrobe-store"></span>
	   		<span id="wardrobe-dress-3" class="wardrobe-dress"></span>
   		</p>
    </li>
	<li>
		<p id="wardrobe-slot-4" style="background-image: url({{ wardrobeUrl4 }})">
	   		<span id="wardrobe-store-4" class="wardrobe-store"></span>
	   		<span id="wardrobe-dress-4" class="wardrobe-dress"></span>
   		</p>
    </li>
	<li>
		<p id="wardrobe-slot-5" style="background-image: url({{ wardrobeUrl5 }})">
	   		<span id="wardrobe-store-5" class="wardrobe-store"></span>
	   		<span id="wardrobe-dress-5" class="wardrobe-dress"></span>
   		</p>
    </li>
</ol>

<script type="text/javascript">
{% if wardrobe1 %}
Wardrobe.add(1, "{{ wardrobeFigure1 }}", "{{ wardrobeSex1 }}", true);
$("wardrobe-dress-1").show();
{% endif %}
{% if wardrobe2 %}
Wardrobe.add(2, "{{ wardrobeFigure2 }}", "{{ wardrobeSex2 }}", true);
$("wardrobe-dress-2").show();
{% endif %}
{% if wardrobe3 %}
Wardrobe.add(3, "{{ wardrobeFigure3 }}", "{{ wardrobeSex3 }}", true);
$("wardrobe-dress-3").show();
{% endif %}
{% if wardrobe4 %}
Wardrobe.add(4, "{{ wardrobeFigure4 }}", "{{ wardrobeSex4 }}", true);
$("wardrobe-dress-4").show();
{% endif %}
{% if wardrobe5 %}
Wardrobe.add(5, "{{ wardrobeFigure5 }}", "{{ wardrobeSex5 }}", true);
$("wardrobe-dress-5").show();
{% endif %}
L10N.put("profile.figure.wardrobe_replace.title", "¿Reemplazar?");
L10N.put("profile.figure.wardrobe_replace.dialog", "<p\>\n¿Estás seguro de que quieres reemplazar el atuendo almacenado por el nuevo?\n</p\>\n\n<p\>\n<a href=\"#\" class=\"new-button\" id=\"wardrobe-replace-cancel\"\><b\>Cancelar</b\><i\></i\></a\>\n<a href=\"#\" class=\"new-button\" id=\"wardrobe-replace-ok\"\><b\>OK</b\><i\></i\></a\>\n</p\>\n\n<div class=\"clear\"\></div\>\n");
L10N.put("profile.figure.wardrobe_invalid_data", "¡Error!Este atuendo no se puede guardar.");
L10N.put("profile.figure.wardrobe_instructions", "Presione las flechas rojas para guardar hasta 5 conjuntos en su guardarropa. Presione Green Arrow para seleccionar un atuendo y guarde los cambios para tomarla en uso.");
Wardrobe.init();
</script>
</div>
{% endif %}

<div id="settings-hc" style="display: none">
	<div class="rounded rounded-hcred clearfix">
<a href="{{ site.sitePath }}/club" id="settings-hc-logo"></a>
Items marked with the {{ site.siteName }} Club symbol <img src="{{ site.staticContentPath }}/web-gallery/v2/images/habboclub/hc_mini.png" /> están disponibles solo para {{ site.siteName }} Miembros del club. <a href="{{ site.sitePath }}/club">¡Únete ahora!</a>
	</div>
</div>

<div id="settings-oldfigure" style="display: none">
	<div class="rounded rounded-lightbrown clearfix">
Your {{ site.siteName }} Tenía ropa o colores que ya no son seleccionables.Por favor guarde sus nuevos looks aquí.	</div>
</div>

<form method="post" action="{{ site.sitePath }}/profile/characterupdate" id="settings-form" style="display: none">
<input type="hidden" name="tab" value="1" />
<input type="hidden" name="__app_key" value="KeplerWeb" />
<input type="hidden" name="figureData" id="settings-figure" value="{{ playerDetails.figure }}" />
<input type="hidden" name="newGender" id="settings-gender" value="{{ playerDetails.gender }}" />
<input type="hidden" name="editorState" id="settings-state" value="" />
<a href="#" id="settings-submit" class="new-button disabled-button"><b>Guardar cambios</b><i></i></a>

<script type="text/javascript" language="JavaScript">
var swfobj = new SWFObject("{{ site.sitePath }}/flash/HabboRegistration.swf", "habboreg", "435", "400", "8");
swfobj.addParam("base", "{{ site.sitePath }}/flash/");
swfobj.addParam("wmode", "opaque");
swfobj.addParam("AllowScriptAccess", "always");
swfobj.addVariable("figuredata_url", "{{ site.sitePath }}/xml/figuredata.xml");
swfobj.addVariable("draworder_url", "{{ site.sitePath }}/xml/draworder.xml");
swfobj.addVariable("localization_url", "{{ site.sitePath }}/xml/figure_editor.xml");
swfobj.addVariable("figure", "{{ playerDetails.figure }}");
swfobj.addVariable("gender", "{{ playerDetails.sex }}");

swfobj.addVariable("showClubSelections", "1");

{% if playerDetails.hasClubSubscription() %}
swfobj.addVariable("userHasClub", "1");
{% endif %}

if (deconcept.SWFObjectUtil.getPlayerVersion()["major"] >= 8) {
	$("settings-editor").setStyle({ textAlign: "center"});	swfobj.write("settings-editor");
	$("settings-form").show();
	
	{% if playerDetails.hasClubSubscription() %}
		$("settings-wardrobe").show();}
	{% else %}
		}
	{% endif %}
</script>

</form>

</div>

</div>
</div>
</div>
</div>

<script type="text/javascript">
HabboView.run();

</script>


<div id="column3" class="column">
				<div class="habblet-container ">
						<div class="ad-container">
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

{% include "../base/footer.tpl" %}
	
<script type="text/javascript">
HabboView.run();
</script>


</body>
</html>