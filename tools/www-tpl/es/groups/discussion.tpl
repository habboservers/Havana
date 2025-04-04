
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
	<meta http-equiv="content-type" content="text/html" />
	<title>{{ site.siteName }}: Group Home: {% autoescape 'html' %}{{ group.getName }}{% endautoescape %} </title>

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

<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/styles/myhabbo/myhabbo.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/styles/myhabbo/skins.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/styles/myhabbo/dialogs.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/styles/myhabbo/buttons.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/styles/myhabbo/control.textarea.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/styles/myhabbo/boxes.css" type="text/css" />
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/myhabbo.css" type="text/css" />
	<link href="{{ site.staticContentPath }}/web-gallery/styles/myhabbo/assets.css" type="text/css" rel="stylesheet" />

<script src="{{ site.staticContentPath }}/web-gallery/static/js/homeview.js" type="text/javascript"></script>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/lightwindow.css" type="text/css" />

<script src="{{ site.staticContentPath }}/web-gallery/static/js/homeauth.js" type="text/javascript"></script>
<link rel="stylesheet" href="{{ site.staticContentPath }}/web-gallery/v2/styles/group.css" type="text/css" />

<style type="text/css">
    #playground, #playground-outer {
	    width: 922px;
	    height: 1360px;
    }
</style>

<script type="text/javascript">
document.observe("dom:loaded", function() { initView({{ group.id }}, {% if session.loggedIn == false %}-1{% else %}{{ playerDetails.id }}{% endif %}); });
</script>

<link href="{{ site.staticContentPath }}/web-gallery/styles/discussions.css" type="text/css" rel="stylesheet"/>
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
<body id=" " class=" anonymous ">
{% else %}
<body id=" " class=" ">
{% endif %}
{% include "../base/header.tpl" %}

<div id="content-container">

<div id="navi2-container" class="pngbg">
    <div id="navi2" class="pngbg clearfix">
		<ul>
    		<li class="">
				<a href="{{ site.sitePath }}/community">Comunidad</a>    		</li>
    		<li class="">
				<a href="{{ site.sitePath }}/articles">Noticias</a>    		</li>
    		<li class=" last">
				<a href="{{ site.sitePath }}/tag">Etiquetas</a>    		</li>
		</ul>
    </div>
</div>
</div>

<div id="container">
	<div id="content" style="position: relative" class="clearfix">
    <div id="mypage-wrapper" class="cbb blue">
<div class="box-tabs-container box-tabs-left clearfix">
	{% if editMode %}

	{% else %}
		{% if (session.loggedIn) and (group.hasAdministrator(playerDetails.getId())) %}
		<a href="#" id="myhabbo-group-tools-button" class="new-button dark-button edit-icon" style="float:left"><b><span></span>Editar</b><i></i></a>	
		{% endif %}
		<div class="myhabbo-view-tools">
		{% if session.loggedIn == false %}
		<a href="#" id="reporting-button" style="display: none;">Show report buttons</a>
  	<a href="#" id="stop-reporting-button" style="display: none;">Cancelar informe</a>  
		{% else %}
			{% if (group.isPendingMember(playerDetails.getId()) == false) %}
				{% if (group.isMember(playerDetails.getId()) == false) %}
					{% if group.getGroupType() == 0 or group.getGroupType() == 3 %}
					<a href="{{ site.sitePath }}/groups/actions/join?groupId=101" id="join-group-button">Join</a>
					{% elseif group.getGroupType() == 1 %}
					<a href="{{ site.sitePath }}/groups/actions/join?groupId=101" id="join-group-button">Request membership</a>	
					{% endif %}
					<a href="#" id="reporting-button" style="display: none;">Show report buttons</a>
          <a href="#" id="stop-reporting-button" style="display: none;">Cancelar informe</a>  
				{% else %}
					{% if group.getOwnerId() != playerDetails.getId() %}
					<a href="{{ site.sitePath }}/groups/actions/leave?groupId=101" id="leave-group-button">Leave group</a>
					{% endif %}
					
					{% if groupMember.isFavourite(group.id) %}
					<a href="#" id="deselect-favorite-button">Remove favorite</a>
					{% else %}
					<a href="#" id="select-favorite-button">Make favorite</a>
					{% endif %}
				{% endif %}
			{% endif %}
		{% endif %}
	</div>
	{% endif %}

    <h2 class="page-owner">
		{% autoescape 'html' %}
    	{{ group.getName }} 
		{% endautoescape %}
		{% if group.getGroupType() == 1 %}<img src="{{ site.staticContentPath }}/web-gallery/images/groups/status_exclusive_big.gif" width="18" height="16" alt="Exclusive group" title="Exclusive group" class="header-bar-group-status" />{% elseif group.getGroupType() == 2%}<img src="{{ site.staticContentPath }}/web-gallery/images/groups/status_closed_big.gif" width="18" height="16" alt="myhabbo.headerbar.closed_group" title="myhabbo.headerbar.closed_group" class="header-bar-group-status" />{% endif %}   				    </h2>
    <ul class="box-tabs">
        <li><a href="{{ group.generateClickLink() }}">Front Page</a><span class="tab-spacer"></span></li>
        <li class="selected"><a href="{{ group.generateClickLink() }}/discussions">Discussion Forum {% if ((group.getForumType().getId() == 1) or (group.getForumPermission().getId() >= 1)) %}<img src="{{ site.staticContentPath }}/web-gallery/images/grouptabs/privatekey.png" title="Private Forum" alt="Private Forum" />{% endif %}</a><span class="tab-spacer"></span></li>
    </ul>
</div>
	<div id="mypage-content">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" class="content-1col">
            <tr>
                <td valign="top" style="width: 750px;" class="habboPage-col rightmost">
                    <div id="discussionbox">
                        <div id="group-postlist-container">

{% include "groups/discussion_replies.tpl" %}
</div>
                    </div>
					
                </td>
                <td style="width: 4px;"></td>

                <td valign="top" style="width: 164px;">


    <div class="habblet ">
		    </div>
                </td>
            </tr>
        </table>

  </div>

<script type="text/javascript">
	Event.observe(window, "load", observeAnim);
	document.observe("dom:loaded", function() {
		initDraggableDialogs();
	});
</script>

    </div>
{% include "../base/footer.tpl" %}
</div>

</div>


<div class="cbb topdialog" id="guestbook-form-dialog">
	<h2 class="title dialog-handle">Editar entrada del libro de visitas</h2>
	
	<a class="topdialog-exit" href="#" id="guestbook-form-dialog-exit">X</a>
	<div class="topdialog-body" id="guestbook-form-dialog-body">

<div id="guestbook-form-tab">
<form method="post" id="guestbook-form">
    <p>
        Note: the message length must not exceed 200 characters        <input type="hidden" name="ownerId" value="1" />
	</p>
	<div>
	    <textarea cols="15" rows="5" name="message" id="guestbook-message"></textarea>
    <script type="text/javascript">
        bbcodeToolbar = new Control.TextArea.ToolBar.BBCode("guestbook-message");
        bbcodeToolbar.toolbar.toolbar.id = "bbcode_toolbar";
		        var colors = { "red" : ["#d80000", "Red"],
            "orange" : ["#fe6301", "Orange"],
            "yellow" : ["#ffce00", "Yellow"],
            "green" : ["#6cc800", "Green"],
            "cyan" : ["#00c6c4", "Cyan"],
            "blue" : ["#0070d7", "Blue"],
            "gray" : ["#828282", "Gray"],
            "black" : ["#000000", "Black"]
        };
        bbcodeToolbar.addColorSelect("Color", colors, true);
    </script>

<div id="linktool">
    <div id="linktool-scope">
        <label for="linktool-query-input">Create link:</label>
        <input type="radio" name="scope" class="linktool-scope" value="1" checked="checked"/>Habbos        <input type="radio" name="scope" class="linktool-scope" value="2"/>Rooms        <input type="radio" name="scope" class="linktool-scope" value="3"/>Grupos    </div>
    <input id="linktool-query" type="text" name="query" value=""/>
    <a href="#" class="new-button" id="linktool-find"><b>Find</b><i></i></a>
    <div class="clear" style="height: 0;"><!-- --></div>

    <div id="linktool-results" style="display: none">
    </div>
    <script type="text/javascript">
        linkTool = new LinkTool(bbcodeToolbar.textarea);
    </script>
</div>
    </div>

	<div class="guestbook-toolbar clearfix">
		<a href="#" class="new-button" id="guestbook-form-cancel"><b>Cancelar</b><i></i></a>
		<a href="#" class="new-button" id="guestbook-form-preview"><b>Preview</b><i></i></a>	
	</div>

</form>
</div>
<div id="guestbook-preview-tab">&nbsp;</div>
	</div>
</div>	
<div class="cbb topdialog" id="guestbook-delete-dialog">
	<h2 class="title dialog-handle">Delete entry</h2>
	
	<a class="topdialog-exit" href="#" id="guestbook-delete-dialog-exit">X</a>
	<div class="topdialog-body" id="guestbook-delete-dialog-body">
<form method="post" id="guestbook-delete-form">
	<input type="hidden" name="entryId" id="guestbook-delete-id" value="" />

	<p>Are you sure you want to delete this entry?</p>
	<p>
		<a href="#" id="guestbook-delete-cancel" class="new-button"><b>Cancelar</b><i></i></a>
		<a href="#" id="guestbook-delete" class="new-button"><b>Delete</b><i></i></a>
	</p>
</form>
	</div>
</div>
<div id="group-tools" class="bottom-bubble">
	<div class="bottom-bubble-t"><div></div></div>
	<div class="bottom-bubble-c">
<h3>Editar grupo</h3>

<ul>
	{% if (hasMember and groupMember.getMemberRank().getRankId() >= 2) %}
	<li><a href="{{ site.sitePath }}/groups/actions/startEditingSession/{{ group.id }}" id="group-tools-style">Modify page</a></li>
	{% endif %}
	{% if (hasMember and groupMember.getMemberRank().getRankId() == 3) %}
	<li><a href="#" id="group-tools-settings">Settings</a></li>	<li><a href="#" id="group-tools-badge">Badge</a></li>
	{% endif %}
	{% if (group.getGroupType() != 3) and (hasMember and groupMember.getMemberRank().getRankId() >= 2) %}
	<li><a href="#" id="group-tools-members">Members</a></li>
	{% endif %}
</ul>

	</div>
	<div class="bottom-bubble-b"><div></div></div>
</div>

<div class="cbb topdialog black" id="dialog-group-settings">
	
	<div class="box-tabs-container">
<ul class="box-tabs">
	<li class="selected" id="group-settings-link-group"><a href="#">Group settings</a><span class="tab-spacer"></span></li>
	<li id="group-settings-link-forum"><a href="#">Configuración del foro</a><span class="tab-spacer"></span></li>
	<li id="group-settings-link-room"><a href="#">Configuración de habitación</a><span class="tab-spacer"></span></li>
</ul>
</div>

	<a class="topdialog-exit" href="#" id="dialog-group-settings-exit">X</a>
	<div class="topdialog-body" id="dialog-group-settings-body">
<p style="text-align:center"><img src="{{ site.staticContentPath }}/web-gallery/images/progress_bubbles.gif" alt="" width="29" height="6" /></p>
	</div>
</div>	

<script language="JavaScript" type="text/javascript">
Event.observe("dialog-group-settings-exit", "click", function(e) {
    Event.stop(e);
    closeGroupSettings();
}, false);
</script><div class="cbb topdialog black" id="group-memberlist">
	
	<div class="box-tabs-container">
<ul class="box-tabs">
	<li class="selected" id="group-memberlist-link-members"><a href="#">Members</a><span class="tab-spacer"></span></li>
	<li id="group-memberlist-link-pending"><a href="#">Pending members</a><span class="tab-spacer"></span></li>
</ul>
</div>

	<a class="topdialog-exit" href="#" id="group-memberlist-exit">X</a>
	<div class="topdialog-body" id="group-memberlist-body">
<div id="group-memberlist-members-search" class="clearfix">
    
    <a id="group-memberlist-members-search-button" href="#" class="new-button"><b>Buscar</b><i></i></a>
    <input type="text" id="group-memberlist-members-search-string"/>
</div>
<div id="group-memberlist-members" style="clear: both"></div>

<div id="group-memberlist-members-buttons" class="clearfix">
	{% if (hasMember and groupMember.getMemberRank().getRankId() == 3) %}
	<a href="#" class="new-button group-memberlist-button-disabled" id="group-memberlist-button-give-rights"><b>Give rights</b><i></i></a>
	<a href="#" class="new-button group-memberlist-button-disabled" id="group-memberlist-button-revoke-rights"><b>Revoke rights</b><i></i></a>{% endif %}
	<a href="#" class="new-button group-memberlist-button-disabled" id="group-memberlist-button-remove"><b>Remove</b><i></i></a>
	<a href="#" class="new-button group-memberlist-button" id="group-memberlist-button-close"><b>Close</b><i></i></a>
</div> 
<div id="group-memberlist-pending" style="clear: both"></div>
<div id="group-memberlist-pending-buttons" class="clearfix">
	<a href="#" class="new-button group-memberlist-button-disabled" id="group-memberlist-button-accept"><b>Accept</b><i></i></a>
	<a href="#" class="new-button group-memberlist-button-disabled" id="group-memberlist-button-decline"><b>Reject</b><i></i></a>
	<a href="#" class="new-button group-memberlist-button" id="group-memberlist-button-close2"><b>Close</b><i></i></a>
</div>
	</div>
</div>
<div class="cbb topdialog" id="postentry-verifyemail-dialog">
	<h2 class="title dialog-handle">Confirm email address</h2>

	
	<a class="topdialog-exit" href="#" id="postentry-verifyemail-dialog-exit">X</a>
	<div class="topdialog-body" id="postentry-verifyemail-dialog-body">
	<p>You need to confirm your email before you can post new messages.</p>
	<p><a href="{{ site.sitePath }}/profile/profile?tab=3">Activate your email</a></p>
	<p class="clearfix">
		<a href="#" id="postentry-verifyemail-ok" class="new-button"><b>OK</b><i></i></a>
	</p>

	</div>
</div>
<div class="cbb topdialog" id="postentry-delete-dialog">
	<h2 class="title dialog-handle">Delete discussion</h2>
	
	<a class="topdialog-exit" href="#" id="postentry-delete-dialog-exit">X</a>
	<div class="topdialog-body" id="postentry-delete-dialog-body">
<form method="post" id="postentry-delete-form">
	<input type="hidden" name="entryId" id="postentry-delete-id" value="" />
	<p>Are you sure you want to delete this post?</p>
	<p class="clearfix">
		<a href="#" id="postentry-delete-cancel" class="new-button"><b>Cancelar</b><i></i></a>
		<a href="#" id="postentry-delete" class="new-button"><b>Delete</b><i></i></a>
	</p>
</form>
	</div>
</div>

<script type="text/javascript">
HabboView.run();
</script>


</body>
</html>