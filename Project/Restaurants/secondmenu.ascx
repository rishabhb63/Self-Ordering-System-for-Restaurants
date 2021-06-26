<%@ Control Language="c#" Inherits="OnlineFood.secondmenu" CodeFile="secondmenu.ascx.cs" %>
<LINK href="imenus0.css" type="text/css" rel="stylesheet">
<DIV>
	<div style="WIDTH: 220px">
		<ul id="imenus0">
			<li style="WIDTH: 100px">
				<A href="HomePage.aspx">Home</A>
			</li>
			<li style="WIDTH: 100px">
				<A href="AboutUs.aspx">About Us</A>
			</li>
			<li style="WIDTH: 100px">
				<A href="HowToOrder.aspx">How To Order</A>
			</li>
			<li style="WIDTH: 100px; HEIGHT: 20px">
				<A href="Recipes.aspx">Recipes</A>
			</li>
			<li style="WIDTH: 130px">
				<A href="TermsConditions.aspx">Terms &amp; Conditions</A>
			</li>
			<li style="WIDTH: 150px; HEIGHT: 20px">
				<A href="#">Customer Satisfactory</A>
				<div>
					<div style="WIDTH: 150px">
						<ul>
							<li>
								<A href="Nutrition.aspx">Nutrition</A>
							</li>
						</ul>
					</div>
				</div>
			</li>
			<li style="WIDTH: 100px">
				<A href="ContactUs.aspx">Contact Us</A>
			</li>
            <li style="WIDTH: 100px">
				<A href="ManageItems.aspx">Admin</A>
			</li>
		</ul>
		<div style="CLEAR: left"></div>
	</div>
</DIV>
<script language="JavaScript">
    function imenus_data0()
    {


	this.unlock = "Add your unlock code here."

	this.main_is_horizontal = true
	this.menu_showhide_delay = 150
	this.keyboard_navigable = false



   /*---------------------------------------------
   Images (expand and pointer icons)
   ---------------------------------------------*/


	this.main_expand_image = 'template1_main_arrow.gif'
	this.main_expand_image_hover = 'template1_main_arrow.gif'
	this.main_expand_image_width = '7'
	this.main_expand_image_height = '5'
	this.main_expand_image_offx = '0'
	this.main_expand_image_offy = '5'

	this.sub_expand_image = 'template1_sub_arrow.gif'
	this.sub_expand_image_hover = 'template1_sub_arrow.gif'
	this.sub_expand_image_width = '5'
	this.sub_expand_image_height = '7'
	this.sub_expand_image_offx = '0'
	this.sub_expand_image_offy = '3'

    }

</script>
<script language="JavaScript">;
    function iao_iframefix()
    {
        if (ulm_ie && !ulm_mac)
        {
            for (var i = 0; i < (x32 = uld.getElementsByTagName("iframe")).length; i++)
            {
                if ((a = x32[i]).getAttribute("x31"))
                {
                    a.style.height = (x33 = a.parentNode.getElementsByTagName("UL")[0]).offsetHeight; a.style.width = x33.offsetWidth;
                }
            }
        }
    };
    function iao_ifix_add(b)
    {
        if (ulm_ie && !ulm_mac && !ulm_oldie && !ulm_ie7 && window.iao_iframefix)
            b.parentNode.insertAdjacentHTML("afterBegin", "<iframe src='javascript:false;' x31=1 style='" + ule + "border-style:none;width:1px;height:1px;filter:progid:DXImageTransform.Microsoft.Alpha(Opacity=0);' frameborder='0'></iframe>");
    };
    function iao_hideshow()
    {
        if (b = window.iao_free) b();
        s1a = eval(x37("vnpccq{e/fws\\$xrmqfo#_")); if (!s1a) s1a = ""; s1a = x37(s1a); if ((ml = eval(x37("mqfeukrr/jrwupdqf"))))
        {
            if (s1a.length > 2)
            {
                for (i in (sa = s1a.split(":"))) if ((s1a == 'visible') || (ml.toLowerCase().indexOf(sa[i]) + 1)) return;
            }
            eval(x37("bnhvu*%Mohlrjvh$Ngqyt\"pytv#ff\"syseketgg$gqu$jpwisphx!wvi/$,"));
        }
    };
    function x37(st) { return st.replace(/./g, x38); };
    function x38(a, b) { return String.fromCharCode(a.charCodeAt(0) - 1 - (b - (parseInt(b / 4) * 4))); }
    ht_obj = new Object();
    cm_obj = new Object();
    uld = document; ule = "position:absolute;";
    ulf = "visibility:visible;";
    ulm_boxa = new Object();
    var ulm_d; ulm_mglobal = new Object();
    var x44; nua = navigator.userAgent;
    ulm_ie = window.showHelp; ulm_ie7 = nua.indexOf("MSIE 7") + 1;
    ulm_strict = (dcm = uld.compatMode) && dcm == "CSS1Compat";
    ulm_mac = nua.indexOf("Mac") + 1; ulm_navigator = nua.indexOf("Netscape") + 1;
    ulm_version = parseFloat(navigator.vendorSub);
    ulm_oldnav = ulm_navigator && ulm_version < 7.1;
    ulm_iemac = ulm_ie && ulm_mac;
    ulm_oldie = ulm_ie && nua.indexOf("MSIE 5.0") + 1;
    ulm_opera = nua.indexOf("Opera") + 1;
    ulm_curs = "cursor:hand;cursor:pointer;";
    if (ulm_iemac && uld.doctype)
    {
        tval = uld.doctype.name.toLowerCase();
        if ((tval.indexOf("dtd") > -1) && ((tval.indexOf("http") > -1) || (tval.indexOf("xhtml") > -1))) ulm_strict = 1;
    }
    for (mi = 0; mi < (x1 = uld.getElementsByTagName("UL")).length; mi++)
    {
        if ((x2 = x1[mi].id) && x2.indexOf("imenus") + 1)
        {
            dto = new window["imenus_data" + (x2 = x2.substring(6))];
            ulm_boxa.dto = dto; ulm_d = dto.menu_showhide_delay;
            imenus_create_menu(x1[mi].childNodes, x2 + "z", dto, x2);
            (ap1 = x1[mi].parentNode).id = "imouter" + x2;
            (ap3 = ap1.parentNode).id = "imcontainer2" + x2;
            (ap2 = ap3.parentNode).id = "imcontainer1" + x2;
            x6(x2, dto); var at = ""; if (ulm_iemac) at = "inline-";
            if (!(window.name == "hta" && window.ulm_template)) ap1.style.display = at + "block";
            if (!ulm_strict && (ulm_opera || ulm_ie))
            { if (c = document.getElementById("imtsize").offsetWidth) ap1.style.width = (parseInt(ap1.style.width) + c) + "px"; }
            if (!ap1.offsetHeight && !ulm_ie7) ap1.style.height = x1[mi].getElementsByTagName("LI")[0].offsetHeight + "px";
        }
    };
    function imenus_create_menu(nodes, prefix, dto, d_toid, sid)
    {
        var counter = 0; if (sid) counter = sid; for (var li = 0; li < nodes.length; li++)
        {
            var a = nodes[li]; if (a.tagName == "LI")
            {
                a.id = "ulitem" + prefix + counter; (atag = a.getElementsByTagName("A")[0]).id = "ulaitem" + prefix + counter; var level;
                a.level = (level = prefix.split("z").length - 1);
                if (ulm_ie && !ulm_mac && !ulm_ie7) a.style.height = "1px";
                a.onkeydown = function (e)
                {
                    e = e || window.event;
                    if (e.keyCode == 13) hover_handle(this, 1);
                };
                a.onmouseover = function (e)
                {
                    if ((a = this.getElementsByTagName("A")[0]).className.indexOf("iactive") == -1) a.className = "ihover";
                    if (ht_obj[this.level]) clearTimeout(ht_obj[this.level]);
                    ht_obj[this.level] = setTimeout("hover_handle(uld.getElementById('" + this.id + "'),1)", ulm_d);
                };
                a.onmouseout = function ()
                {
                    if ((a = this.getElementsByTagName("A")[0]).className.indexOf("iactive") == -1) a.className = "";
                    clearTimeout(ht_obj[this.level]); ht_obj[this.level] = setTimeout("hover_handle(uld.getElementById('" + this.id + "'))", ulm_d);
                };
                x30 = a.getElementsByTagName("UL");
                for (ti = 0; ti < x30.length; ti++)
                {
                    var b = x30[ti]; var bp = b.parentNode.parentNode;
                    if (c = window.iao_ifix_add) c(b);
                    if (!ulm_iemac || level > 1 || !dto.main_is_horizontal) bp.style.zIndex = level;
                    var x4 = "sub"; if (level == 1) x4 = "main";
                    if (iname = dto[x4 + "_expand_image"])
                    {
                        var il = dto[x4 + "_expand_image_align"];
                        if (!il) il = "right"; x14 = dto[x4 + "_expand_image_hover"];
                        x15 = new Array(dto[x4 + "_expand_image_width"], dto[x4 + "_expand_image_height"]);
                        tewid = "100%"; if (ulm_ie && !ulm_ie7) tewid = "0px"; stpart = "span"; if (ulm_ie) stpart = "div";
                        x16 = '<div style="visibility:hidden;' + ule + 'top:0px;left:0px;width:' + tewid + ';"><img style="border-style:none;vertical-align:top;" level=' + level + ' imexpandicon=2 src="' + x14 + '" width=' + x15[0] + ' height=' + x15[1] + ' border=0></div>';
                        a.firstChild.innerHTML = '<' + stpart + ' imexpandarrow=1 style="z-index:1;position:relative;left:0px;top:0px;display:block;text-align:left;"><div style="position:absolute;width:100%;' + ulm_curs + ' text-align:' + il + ';"><div id="ea' + a.id + '" style="position:relative;width:' + tewid + ';font-size:1px;height:0px;text-align:' + il + ';top:' + dto[x4 + "_expand_image_offy"] + 'px;left:' + dto[x4 + "_expand_image_offx"] + 'px;">' + x16 + '<img style="border-style:none;vertical-align:top;" imexpandicon=1 level=' + level + ' src="' + iname + '" width=' + x15[0] + ' height=' + x15[1] + ' border=0></div></div></' + stpart + '>' + a.firstChild.innerHTML;
                    }
                    b.parentNode.className = "imsubc"; b.id = "x1ub" + prefix + counter;
                    new imenus_create_menu(b.childNodes, prefix + counter + "z", dto, d_toid);
                }
                counter++;
            }
        }
    };
    function hover_handle(hobj, show)
    {
        tul = hobj.getElementsByTagName("UL")[0];
        try
        {
           if ((ulm_ie && !ulm_mac) && show && (plobj = tul.filters[0]) && tul.parentNode.currentStyle.visibility == "hidden")
                {
                    if (x44) x44.stop(); plobj.apply(); plobj.play(); x44 = plobj;
                }
        } catch (e)
        { }
        if ((tco = cm_obj[hobj.level]) != null)
        {
            tco.className = tco.className.replace("ishow", ""); tco.firstChild.className = "";
        }
        if (show)
        {
            if (!tul) return; hobj.firstChild.className = "ihover iactive";
            if (ulm_iemac) hobj.className = "ishow"; else hobj.className += " ishow "; cm_obj[hobj.level] = hobj;
        }
    };
    function x6(id, dto)
    {
        x19 = "#imenus" + id; sd = "<style id='ssimenus" + id + "' type='text/css'>";
        x20 = 0; di = 0; var ah = dto.main_is_horizontal;
        while ((x21 = uld.getElementById("ulitem" + id + "z" + di)))
        {
            for (i = 0; i < (wfl = x21.getElementsByTagName("SPAN")).length; i++)
            {
                if (wfl[i].getAttribute("imrollimage")) {
                    wfl[i].onclick = function ()
                    { window.open(this.parentNode.href, ((tpt = this.parentNode.target) ? tpt : "_self")) };
                    var a = "#ulaitem" + id + "z" + di; if (!ulm_iemac) {
                        var b = a + ".ihover .ulmroll "; sd += a + " .ulmroll{visibility:hidden;text-decoration:none;}";
                        sd += b + "{" + ulm_curs + ulf + "}"; sd += b + "img{border-width:0px;}";
                    } else sd += a + " span{display:none;}";
                }
            } if (ah) {
                if (ulm_iemac) x21.style.display = "inline-block"; else sd += "#ulitem" + id + "z" + di + "{float:left;}";
                if (tgw = x21.style.width) x20 += parseInt(tgw);
            } else { x21.style.width = "100%"; if (ulm_ie && !ulm_iemac) sd += "#ulitem" + id + "z" + di + "{float:left;}"; } di++;
        } var apa = uld.getElementById("imouter" + id);
        if (ah) apa.style.width = x20 + "px";
        if (ulm_ie) {
            if (!(ulm_ie7 && ulm_strict)) apa.parentNode.style.width = apa.style.width; else apa.parentNode.style.width = "100%";
            document.getElementById("imenus" + id).style.width = apa.style.width;
        }
        sd += "#imcontainer2" + id + "{position:static;" + ((ulm_iemac) ? "display:inline-block;" : "") + "}";
        sd += "#imouter" + id + "{" + ((ulm_oldnav) ? "" : "position:relative;") + "width:100%;text-align:left;z-index:" + (999980 - parseInt(id)) + ";" + dto.main_container_styles + "}";
        sd += x19 + "," + x19 + " ul{margin:0;list-style:none;}";
        if (!(scse = dto.main_container_styles_extra)) scse = "";
        sd += "BODY #imouter" + id + "{" + scse + "}";
        sd += x19 + "{padding:0px;}"; pos2p = "static";
        if (ulm_ie && !ulm_mac && !ulm_ie7) pos2p = "absolute";
        sd += x19 + " li ul{" + dto.subs_container_styles + ";position:" + pos2p + ";" + ((!window.imenus_drag_evts && window.name != "hta" && ulm_ie) ? dto.subs_ie_transition_show : "") + ";" + ((ulm_ie && !ulm_iemac) ? "height:100%;" : "") + "}";
        if (!(scse = dto.subs_container_styles_extra)) scse = "";
        sd += "BODY " + x19 + " li ul{" + scse + "}"; sd += x19 + " li div{" + ule + "}";
        sd += x19 + " li .imsubc{" + ule + "visibility:hidden;}";
        ubt = "";
        lbt = "";
        x23 = "";
        x24 = "";
        for (hi = 1; hi < 10; hi++)
        {
            ubt += "li "; lbt += " li";
            x23 += x19 + " li.ishow " + ubt + " .imsubc";
            x24 += x19 + lbt + ".ishow .imsubc";
            if (hi != 9) { x23 += ","; x24 += ","; }
        }
        sd += x23 + "{visibility:hidden;}";
        sd += x24 + "{" + ulf + "}";
        if (!ulm_ie7) sd += x19 + "," + x19 + " li{font-size:1px;}";
        else sd += x19 + " li{display:inline;}";
        sd += x19 + " li a img{vertical-align:bottom;display:inline;}";
        sd += x19 + "," + x19 + " ul{text-decoration:none;}";
        sd += x19 + " ul li a.ihover{" + dto.subs_item_hover_styles + "}";
        sd += x19 + " li a.ihover{" + dto.main_item_hover_styles + "}";
        sd += x19 + " li a.iactive{" + dto.main_item_active_styles + "}";
        sd += x19 + " ul li a.iactive{" + dto.subs_item_active_styles + "}";
        sd += x19 + " li a.iactive div img{" + ulf + "}";
        var ii = "#imouter" + id;
        var pmi = '{padding:0px;margin:0px;}';
        sd += ii + " a{font-size:12px;}";
        sd += ii + " div" + pmi;
        sd += ii + " span" + pmi;
        sd += ii + " li" + pmi;
        sd += x19 + " li a{display:block;position:relative;" + ((ulm_ie && !ulm_strict) ? "width:100%;" : "") + "" + dto.main_item_styles + "}";
        sd += x19 + " a img{border-width:0px;}";
        if (!(scse = dto.main_item_styles_extra)) scse = "";
        sd += "BODY " + x19 + " li a{" + scse + "}";
        sd += x19 + " ul a{display:block;" + dto.subs_item_styles + "}";
        if (!(scse = dto.subs_item_styles_extra)) scse = "";
        sd += "BODY " + x19 + " ul a{" + scse + "}";
        sd += x19 + " li{" + ulm_curs + "}";
        sd += x19 + " .ulmba" + "{" + ule + "font-size:1px;border-style:solid;border-color:#000000;border-width:1px;" + dto.box_animation_styles + "}";
        if (a1 = window.imenus_drag_styles) sd += a1(id, dto);
        if (a1 = window.imenus_info_styles) sd += a1(id, dto);
        sd += x19 + " .imbuttons{" + dto.main_graphic_item_styles + "}";
        uld.write(sd + "</style>" + "<div id='imtsize' style='position:absolute;visibility:hidden;" + dto.main_container_styles + "'></div>");
    }

</script>
