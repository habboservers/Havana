
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head>
	<meta http-equiv="content-type" content="text/html" />
	<title>{{ site.siteName }}: Colecionáveis </title>

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

<script src="{{ site.staticContentPath }}/web-gallery/static/js/credits.js" type="text/javascript"></script>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/collectibles.css" type="text/css" />


<meta name="description" content="Participe do maior ponto de encontro virtual do mundo onde você pode conhecer e fazer amigos. Projete seus próprios quartos, colecione móveis legais, dê festas e muito mais! Crie o seu {{ site.siteName }} GRÁTIS hoje!" />
<meta name="keywords" content="{{ site.siteName }}, virtual, mundo, participar, grupos, fóruns, brincar, jogos, on-line, amigos, adolescentes, colecionar, rede social, criar, colecionar, conectar, móveis, virtual, mercadorias, compartilhamento, emblemas, social, networking, hangout, seguro, música , celebridade, visitas de celebridades" />


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
<body id="home" class="anonymous ">
{% else %}
<body id="home" class=" ">
{% endif %}

{% include "base/header.tpl" %}

<div id="content-container">

<div id="navi2-container" class="pngbg">
    <div id="navi2" class="pngbg clearfix">
		<ul>
			<li class="">
				<a href="{{ site.sitePath }}/credits">Coins</a>			</li>
			<li class="">
				<a href="{{ site.sitePath }}/credits/club">{{ site.siteName }} Club</a>			</li>
			<li class="selected">
				Colecionáveis			</li>
    		<li class=" last">
				<a href="{{ site.sitePath }}/credits/pixels">Pixels</a>    		</li>
		</ul>
    </div>
</div>
<div id="container">
	<div id="content" style="position: relative" class="clearfix">
    <div id="column1" class="column">
				<div class="habblet-container " id="collectible-current">
						<div class="cbb clearfix gray ">

							<h2 class="title">Colecionável atual							</h2>

						<div id="collectible-current-content" class="clearfix">
{% if hasCollectable %}
		<div id="collectibles-current-img" style="background-image: url({{ site.sitePath }}/habbo-imaging/furni?sprite={{ collectableSprite }}&direction=2&canvas=transparent)"></div>
		<h4>{{ collectableName }}</h4>
		<p>March 2019</p>
			<p class="last">{{ collectableDescription }}</p>
						<p id="collectibles-purchase">

{% if session.loggedIn %}
				<a href="#" class="new-button collectibles-purchase-current"><b>Comprar</b><i></i></a>
{% endif %}
				<span class="collectibles-timeleft">Available Until: <span id="collectibles-timeleft-value"></span></span>
			</p>
{% else %}
		<div id="collectibles-current-img" style="background-image: url()"></div>
		<h4>No collectable</h4>
		<p>March 2019</p>
			<p class="last">There is currently no collectable</p>
						<p id="collectibles-purchase">

			</p>
{% endif %}
				</div>



					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>


				<div class="habblet-container ">
						<div class="cbb clearfix red ">

							<h2 class="title">Colecionáveis disponíveis							</h2>
						<ul id="collectibles-list">
{% set num = 0 %}
{% for entry in collectablesShowroom %}
	{% if num % 2 == 0 %}
	<li class="even clearfix">
	{% else %}
	<li class="odd clearfix">
	{% endif %}
	
	<div class="collectibles-prodimg" style="background-image: url({{ site.sitePath }}/habbo-imaging/furni?sprite={{ entry.getSprite() }}&direction=2&icon=1&canvas=transparent);"></div>
	<h4>{{ entry.getName() }}</h4>
	<p class="collectibles-proddesc last">{{ entry.getDescription() }}</p>
	
	</li>
{% set num = num + 1 %}
{% endfor %}
		</ul>

{% if hasCollectable %}
<script type="text/javascript">
L10N.put("collectibles.purchase.title", "Confirm purchase");
L10N.put("time.days", "{0}d");
L10N.put("time.hours", "{0}h");
L10N.put("time.minutes", "{0}min");
L10N.put("time.seconds", "{0}s");
Collectibles.init({{ expireSeconds }});
</script>
{% endif %}

					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

</div>
<div id="column2" class="column">
				<div class="habblet-container ">
						<div class="cbb clearfix red ">

							<h2 class="title">O que são Colecionáveis?							</h2>

						<div id="collectibles-instructions" class="box-content">

Colecionáveis são móveis especiais vendidos apenas por um período de tempo limitado e definido. {{ site.siteName }}s experientes os conhecem como raros. Eles sempre custam o mesmo valor - 200 Moedas.
</div>


					</div>
				</div>
				<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>

				<div class="habblet-container ">
						<div class="cbb clearfix red ">

							<h2 class="title">Invista em colecionáveis							</h2>

						<div class="box-content">

<p class="collectibles-value-intro">
	<img src="{{ site.staticContentPath }}/web-gallery/v2/images/collectibles/ukplane.png" alt="" width="79" height="47" />
	Recolha o seu caminho para a riqueza! Os itens colecionáveis não apenas constituem uma ótima peça de Mobi, mas também têm um valor comercial incrível. Como os itens colecionáveis nunca mais serão vendidos por um bom tempo (isso é uma promessa), o valor continuará aumentando com o tempo.</p>

<p class="clear last">
	<img src="{{ site.staticContentPath }}/web-gallery/v2/images/collectibles/chart.png" alt="" width="272" height="117" />
</p>

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