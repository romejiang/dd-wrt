<div class="setting">
	<div class="label"><% tran("share.advanced"); %></div>
	<input type="checkbox" name="bridgeadv" value="1" <% selchecked("bridgeadv","1"); %> onclick="toggle_layer(this, 'bridge_advanced')" />
</div>
	<div id="bridge_advanced">
	<% atmsettings("pppoe"); %>
	</div>
<script>
//<![CDATA
	show_layer_ext(document.setup.bridgeadv, 'bridgea_advanced', <% else_selmatch("bridgeadv", "1", "1", "0"); %> == 1);
//]]>
