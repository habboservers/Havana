		{% if minimailClient == false %}<a href="#" class="new-button compose"><b>Componer</b><i></i></a>{% endif %}
	<div class="clearfix labels nostandard">
		<ul class="box-tabs">
			<li{% if minimailLabel == "inbox" %} class="selected"{% endif %}><a href="#" label="inbox">Bandeja de entrada</a><span class="tab-spacer"></span></li>
			<li{% if minimailLabel == "sent" %} class="selected"{% endif %}><a href="#" label="sent">Enviado</a><span class="tab-spacer"></span></li>
			<li{% if minimailLabel == "trash" %} class="selected"{% endif %}><a href="#" label="trash">Basura</a><span class="tab-spacer"></span></li>
		</ul>

	</div>
	<div id="message-list" class="label-sent">
	<div class="new-buttons clearfix">
		<div class="labels inbox-refresh"><a href="#" class="new-button green-button" label="inbox" style="float: left; margin: 0"><b>Actualizar</b><i></i></a></div>
	</div>

	<div style="clear: both; height: 1px"></div>
		{% if minimailLabel == "conversation" %}
		<div class="trash-controls notice">
			Estás leyendo una conversación. Haga clic en las pestañas de arriba para volver a sus carpetas.
		</div>
		{% endif %}
		{% if minimailLabel == "trash" %}
		{% if minimailMessages|length > 0 %}
			<div class="trash-controls notice">Los mensajes de esta carpeta que tengan más de 30 días se eliminan automáticamente. <a href="#" class="empty-trash">Empty trash</a></div>
		{% endif %}
		{% endif %}
		<div class="navigation">
			{% if minimailLabel == "inbox" %}
			<div class="unread-selector"><input type="checkbox" class="unread-only"{% if unreadOnly %} checked="checked"{% endif %}/> Solo no leído</div>
			{% endif %}
			<!-- <div class="progress"></div> -->
			{% if minimailMessages|length > 0 %}
			<p> 
				{% if showNewest %}<a href="#" class="newest">Newest</a>{% endif %}
				{% if showNewer %}<a href="#" class="newer">Newer</a>{% endif %}  {{ startPage }} - {{ endPage }} of {{ totalMessages }}
				{% if showOlder %}<a href="#" class="older">Older</a>{% endif %}
				{% if showOldest %}<a href="#" class="oldest">Oldest</a>{% endif %}
			</p>
			{% endif %}
		{% if minimailMessages|length == 0 %}
			{% if minimailLabel == "trash" %}
			<p class="no-messages">No hay mensajes eliminados</p>
			{% elseif minimailLabel == "sent" %}
			<p class="no-messages">No hay mensajes enviados</p>
			{% elseif minimailLabel == "conversation" %}
			<p class="no-messages">No hay mensajes de conversación</p>
			{% else %}
			<p class="no-messages">No hay mesajes</p>
			{% endif %}
		{% endif %}
		</div>
		{% if minimailMessages|length > 0 %}
		{% for minimailMessage in minimailMessages %}
		<div class="message-item {% if minimailLabel == "inbox" %}{% if minimailMessage.isRead() %}read{% else %}unread{% endif %}{% else %}read{% endif %}" id="msg-{{ minimailMessage.getId() }}">
			<div class="message-preview" status="{% if minimailLabel == "inbox" %}{% if minimailMessage.isRead() %}read{% else %}unread{% endif %}{% else %}read{% endif %}">

				<span class="message-tstamp" isotime="{{ minimailMessage.getIsoDate() }}" title="{{ minimailMessage.getDate() }}">
					{{ minimailMessage.getDate() }}
				</span>
				<img src="{{ site.sitePath }}/habbo-imaging/avatarimage?figure={{ minimailMessage.getAuthor().getFigure() }}&size=s&direction=9&head_direction=2&crr=0&gesture=sml&frame=1" />
				{% if minimailLabel == "sent" %}
				<span class="message-sender" title="To: {{ minimailMessage.getTarget().getName() }}">To: {{ minimailMessage.getTarget().getName() }}</span>
				{% elseif minimailLabel == "inbox" %}
				<span class="message-sender" title="{{ minimailMessage.getAuthor().getName() }}">{{ minimailMessage.getAuthor().getName() }}</span>
				{% endif %}
				
				<span class="message-subject" title="{{ minimailMessage.getFormattedSubject() }}">&ldquo;{{ minimailMessage.getFormattedSubject() }}&rdquo;</span>
			</div>
			<div class="message-body" style="display: none;">
				<div class="contents"></div>

				<div class="message-body-bottom"></div>
			</div>
		</div>
		{% endfor %}
		{% endif %}

	<div class="navigation">
			<div class="progress"></div>
			{% if minimailMessages|length > 0 %}
			<p> 
				{% if showNewest %}<a href="#" class="newest">El mas nuevo</a>{% endif %}
				{% if showNewer %}<a href="#" class="newer">Más nuevo</a>{% endif %}  {{ startPage }} - {{ endPage }} of {{ totalMessages }}
				{% if showOlder %}<a href="#" class="older">Más viejo</a>{% endif %}
				{% if showOldest %}<a href="#" class="oldest">Más antiguo</a>{% endif %}
			</p>
			{% endif %}
			</div>
		</div>