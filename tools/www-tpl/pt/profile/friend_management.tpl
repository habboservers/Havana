
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head>
	<meta http-equiv="content-type" content="text/html" />
	<title>{{ site.siteName }}: Minhas Configurações </title>

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

<script src="{{ site.staticContentPath }}/web-gallery/static/js/settings.js" type="text/javascript"></script>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/settings.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/friendmanagement.css" type="text/css" />


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

{% include "../base/header.tpl" %}

<div id="content-container">

	<div id="navi2-container" class="pngbg">
    <div id="navi2" class="pngbg clearfix">
		<ul>
			<li class="">
				<a href="{{ site.sitePath }}/me">Home</a>			</li>
    		<li class="">
				<a href="{{ site.sitePath }}/home/{{ playerDetails.getName() }}">Minha Página</a>    		</li>
    		<li class="selected">
				Configurações de conta    		</li>
			<li class=" last">
				<a href="{{ site.sitePath }}/club">{{ site.siteName }} Club</a>
			</li>
		</ul>
    </div>
</div>
	
<div id="container">
	<div id="content" style="position: relative" class="clearfix">
<div class="content">
<div class="habblet-container" style="float:left; width:210px;">
<div class="cbb settings">

<h2 class="title">Minha Conta</h2>
<div class="box-content">
            <div id="settingsNavigation">
            <ul>
				<li><a href="{{ site.sitePath }}/profile?tab=1">Meus Visuais</a>
                </li><li><a href="{{ site.sitePath }}/profile?tab=2">Minhas Configurações</a>
				{% if accountActivated %}
                </li><li><a href="{{ site.sitePath }}/profile?tab=3">Meu Email</a>
				{% else %}
				</li><li><a href="{{ site.sitePath }}/profile/verify">Mudança de email & Verificação</a>
				{% endif %}
                </li><li><a href="{{ site.sitePath }}/profile?tab=4">Minha Senha</a>
                </li><li class="selected">Configurações de Amigos
				</li><li><a href="{{ site.sitePath }}/profile?tab=6">Configurações de Trocas</a>
                </li></ul>
            </div>
</div></div>
    {% include "profile/profile_widgets/join_club.tpl" %}
</div>

<div id="friend-management" class="habblet-container">
{% autoescape 'html' %}
                <div class="cbb clearfix settings">
                    <h2 class="title">Configurações de Amigos</h2>
                    <div id="friend-management-container" class="box-content">
<!-- <div class="rounded" style="background-color: orange; color: white">
<strong>Attention!</strong><br />
This is not functional as of this moment!<br />
</div>
<br /> -->
                        <div id="category-view" class="clearfix">
                            <div id="search-view">
                                Procure por alguém abaixo:
				                <div id="friend-search" class="friendlist-search">
					                <input type="text" maxlength="32" id="friend_query" class="friend-search-query" />
					                <a class="friendlist-search new-button search-icon" id="friend-search-button"><b><span></span></b><i></i></a>
					            </div>
                            </div>
							<div id="category-list">
								<div id="friends-category-title">
								Categorias de amigos
								</div>
								<div class="category-default category-item selected-category" id="category-item-0">Amigos</div>
								{% for category in categories %}
								<div id="category-item-{{ category.getId() }}" class="category-item ">
										<div class="category-name" id="category-{{ category.getId() }}">
												<span class="open-category" id="category-name-{{ category.getId() }}">{{ category.getName() }}</span>
												<span id="category-field-{{ category.getId() }}" style="display:none"><input class="edit-category-name" maxlength="32" id="category-input-{{ category.getId() }}" type="text" value="{{ category.getName() }}"/></span>
										</div>
										<div id="category-button-delete-{{ category.getId() }}" class="friendmanagement-small-icons friendmanagement-remove delete-category-tip"></div>
										<div id="category-button-edit-{{ category.getId() }}" class="friendmanagement-small-icons edit-category"></div>

										<div id="category-button-cancel-{{ category.getId() }}" style="display:none" class="friendmanagement-small-icons friendmanagement-remove cancel-edit-category"></div>
										<div id="category-button-save-{{ category.getId() }}" style="display:none" class="friendmanagement-small-icons friendmanagement-save save-category"></div>
								</div>
								{% endfor %}
								<input type="text" maxlength="32" id="category-name" class="create-category" />
								<div id="add-category-button" class="friendmanagement-small-icons add-category-item add-category"></div>
							</div>
						</div>
                        <div id="friend-list" class="clearfix">
{% include "profile/profile_widgets/friend_view_category.tpl" %}
  </div>
</div>
</div>
{% endautoescape %}
</div>
  </div>
<script type="text/javascript">
				L10N.put("friendmanagement.tooltip.deletefriends", "<p>Tem certeza que quer apagar os amigos selecionados?</p><div class=\"friendmanagement-small-icons friendmanagement-save friendmanagement-tip-delete\"\>\n    <a class=\"friends-delete-button\" id=\"delete-friends-button\"\>Deletar</a\>\n</div\>\n<div class=\"friendmanagement-small-icons friendmanagement-remove friendmanagement-tip-cancel\"\>\n    <a id=\"cancel-delete-friends\"\>Cancelar</a\>\n</div\>\n\n");
        L10N.put("friendmanagement.tooltip.deletefriend", "<p>Tem ceteza que quer apagar este amigo selecionado?</p><div class=\"friendmanagement-small-icons friendmanagement-save friendmanagement-tip-delete\"\>\n    <a id=\"delete-friend-%friend_id%\"\>Deletar</a\>\n</div\>\n<div class=\"friendmanagement-small-icons friendmanagement-remove friendmanagement-tip-cancel\"\>\n    <a id=\"remove-friend-can-%friend_id%\"\>Cancelar</a\>\n</div\>");
        L10N.put("friendmanagement.tooltip.deletecategory", "<p>Tem certeza que quer apagar esta categoria?</p><div class=\"friendmanagement-small-icons friendmanagement-save friendmanagement-tip-delete\"\>\n    <a class=\"delete-category-button\" id=\"delete-category-%category_id%\"\>Deletar</a\>\n</div\>\n<div class=\"friendmanagement-small-icons friendmanagement-remove friendmanagement-tip-cancel\"\>\n    <a id=\"cancel-cat-delete-%category_id%\"\>Cancelar</a\>\n</div\>");
  new FriendManagement({ currentCategoryId: 0, pageListLimit: 30, pageNumber: 1});
</script>


<script type="text/javascript">
HabboView.run();

</script>


<div id="column3" class="column">
				<div class="habblet-container ">
						<div class="ad-container">
						{% include "../base/ads_container.tpl" %}
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