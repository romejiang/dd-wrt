<div>
    <div class="setting">
      <div class="label">Use DHCP</div>
      <INPUT type=radio value="0" name="pptp_use_dhcp" <% nvram_match("pptp_use_dhcp","0","checked"); %> onclick=pptpUseDHCP(this.form,"0")> No
      <INPUT type=radio value="1" name="pptp_use_dhcp" <% nvram_match("pptp_use_dhcp","1","checked"); %> onclick=pptpUseDHCP(this.form,"1")> Yes
    </div>
    <div class="setting">
      <div class="label">Internet IP Address</div>
      <input type="hidden" name="wan_ipaddr" value="4"/>
      <input class="num" maxLength="3" size="3" name="wan_ipaddr_0" onBlur="valid_range(this,0,255,'IP')" value='<% get_single_ip("wan_ipaddr","0"); %>' />.<input class="num" maxLength="3" size="3" name="wan_ipaddr_1" onBlur="valid_range(this,0,255,'IP')" value='<% get_single_ip("wan_ipaddr","1"); %>' />.<input class="num" maxLength="3" size="3" name="wan_ipaddr_2" onblur="valid_range(this,0,255,'IP')" value='<% get_single_ip("wan_ipaddr","2"); %>' />.<input class="num" maxLength="3" size="3" name="wan_ipaddr_3" onblur="valid_range(this,1,254,'IP')" value='<% get_single_ip("wan_ipaddr","3"); %>' />
    </div>
    <div class="setting">
      <div class="label">Subnet Mask</div>
      <input type="hidden" name="wan_netmask" value="4"/>
        <input class="num" maxLength="3" size="3" name="wan_netmask_0" onBlur="valid_range(this,0,255,'Netmask')" value='<% get_single_ip("wan_netmask","0"); %>' />.<input class="num" maxLength="3" size="3" name="wan_netmask_1" onBlur="valid_range(this,0,255,'Netmask')" value='<% get_single_ip("wan_netmask","1"); %>' />.<input class="num" maxLength="3" size="3" name="wan_netmask_2" onBlur="valid_range(this,0,255,'Netmask')" value='<% get_single_ip("wan_netmask","2"); %>' />.<input class="num" maxLength="3" size="3" name="wan_netmask_3" onBlur="valid_range(this,0,255,'Netmask')" value='<% get_single_ip("wan_netmask","3"); %>' />
      </div>
      <div class="setting">
        <div class="label">Gateway (PPTP Server)</div>
        <input type="hidden" name="pptp_server_ip" value="4"/>
        <input class="num" maxLength="3" size="3" name="pptp_server_ip_0" onBlur="valid_range(this,0,255,'IP')" value='<% get_single_ip("pptp_server_ip","0"); %>' />.<input class="num" maxLength="3" size="3" name="pptp_server_ip_1" onBlur="valid_range(this,0,255,'IP')" value='<% get_single_ip("pptp_server_ip","1"); %>' />.<input class="num" maxLength="3" size="3" name="pptp_server_ip_2" onBlur="valid_range(this,0,255,'IP')" value='<% get_single_ip("pptp_server_ip","2"); %>' />.<input class="num" maxLength="3" size="3" name="pptp_server_ip_3" onBlur="valid_range(this,1,254,'IP')" value='<% get_single_ip("pptp_server_ip","3"); %>' />
      </div>
      <div class="setting">
        <div class="label">User Name</div>
        <input name="ppp_username" size="50" maxLength="63" onBlur="valid_name(this,'User Name')" value='<% nvram_get("ppp_username"); %>' />
      </div>
      <div class="setting">
        <div class="label">Password</div>
        <input name="ppp_passwd" size="50" maxLength="63" onBlur="valid_name(this,'Password')" type="password" value='<% nvram_invmatch("ppp_passwd","","d6nw5v1x2pc7st9m"); %>' />
      </div>
      <div class="setting">
        <input type="radio" name="ppp_demand" value="1" onchange="ppp_enable_disable(this.form,1)" <% nvram_match("ppp_demand","1","checked"); %> /> Connect on Demand: Max Idle Time<input class="num" size="4" maxLength="4" name="ppp_idletime" onBlur="valid_range(this,1,9999,'Idle time')" value='<% nvram_get("ppp_idletime"); %>' /> Min.</div>
      <div class="setting">
          <input type="radio" name="ppp_demand" value="0" onchange="ppp_enable_disable(this.form,0)" <% nvram_match("ppp_demand","0","checked"); %> /> Keep Alive: Redial Period<input class="num" size="4" maxLength="4" name="ppp_redialperiod" onBlur="valid_range(this,20,180,'Redial period')" value='<% nvram_get("ppp_redialperiod"); %>' /> Sec.</div>
      <div class="setting">
        <input type="radio" name="pptp_encrypt" value="1" <% nvram_match("pptp_encrypt","1","checked"); %> /> Encrypted<input type="radio" name="pptp_encrypt" value="0" <% nvram_match("pptp_encrypt","0","checked"); %> /> Unencrypted</div>
</div>