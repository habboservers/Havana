<h4 title=""></h4>

<div id="webstore-preview-box"></div>

<div id="webstore-preview-price">
Preço:<br /><b>
	{% if product.getPrice() > 1 %}{{ product.getPrice() }} credits{% else %}{{ product.getPrice() }} credit{% endif %}
</b>
</div>

<div id="webstore-preview-purse">
{% if playerDetails.credits > 1 %}Você tem:<br /><b>{{ playerDetails.credits }} moedas</b><br />{% else %}Você tem:<br /><b>{{ playerDetails.credits }} moedas</b><br />{% endif %}
<a href="{{ site.sitePath }}/credits" target=_blank>Conseguir moedas</a>
</div>

<div id="webstore-preview-purchase" class="clearfix">
	<div class="clearfix">
		<a href="#" class="new-button" id="webstore-purchase"><b>Comprar</b><i></i></a>
	</div>
</div>

<span id="webstore-preview-bg-text" style="display: none">Visualizar</span>		