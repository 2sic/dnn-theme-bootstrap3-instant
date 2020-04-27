<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="tosic" TagName="PageTitle" src="controls/optimize-page-title.ascx" %>
<tosic:PageTitle runat="server" />
<%@ Register TagPrefix="tosic" TagName="BodyCssClasses" src="controls/body-css-classes.ascx" %>
<tosic:BodyCssClasses runat="server" />


<%@ Register TagPrefix="tosic" TagName="SxcQuickEdit" src="controls/2sxc-quickedit.ascx" %>
<tosic:SxcQuickEdit runat="server" />
<%= Connect.Gtm.ScriptTag.Basic(ip: true, isEditor: true) %>


<link href="https://fonts.googleapis.com/css?family=Maven+Pro:400,500,700" rel="stylesheet" >

<a class="sr-only sr-only-focusable" href="#content"><%# LocalizeString("SkipLink.MainContent") %></a>
<div class="ly-overlay"></div>
<div class="ly-fullwrapper">
	<header>
		<div class="container-fluid clearfix">
			<div class="ly-container-inner">

				<a href="#" class="ly-nav-mobile-trigger pull-right" title="Menu"></a>
				<nav id="nav-mobile">
					<a class="ly-logo" href="/" title="LIMODOR Service AG">
						<img alt="LIMODOR Service AG" src="<%#SkinPath%>images/logo.png" />
					</a>
					<a href="#" class="ly-close"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
					<dnn:MENU MenuStyle="nav/main-mobile" NodeSelector="*,0,6" runat="server" />
					<div class="ly-leftpane-content">
						<a class="ly-button" href="http://shop.limodor-service.ch/" title="Online Shop" target="_blank" rel="noopener">
							<img alt="Online Shop" src="<%#SkinPath%>images/Button_Online-Shop.png" />
						</a>
					</div>
				</nav>

				<a class="ly-logo" href="/" title="LIMODOR Service AG">
					<img alt="LIMODOR Service AG" src="<%#SkinPath%>images/logo.png" />
				</a>



			</div>
		</div>
	</header>



	<div id="content">
		<div class="container-fluid ly-content">

			<div class="ly-container-inner">

				<div class="row">
					<div class="col-xs-12 col-md-8 col-md-push-4 ly-col-contentpane">
						<div id="ContentPane" runat="server" containertype="G" containername="ToSIC-Invisible" containersrc="default.ascx"></div>
					</div>
					<div class="col-xs-12 col-md-4 col-md-pull-8 ly-col-leftpane">
						<div class="hidden-xs hidden-sm">
							<nav>
								<dnn:MENU MenuStyle="nav/sub" NodeSelector="*,0,4" runat="server" />
							</nav>
							<div class="ly-leftpane-content">
								<a class="ly-button" href="http://shop.limodor-service.ch/" title="Online Shop" target="_blank" rel="noopener">
									<img alt="Online Shop" src="<%#SkinPath%>images/Button_Online-Shop.png" />
								</a>
							</div>

						</div>

						<div class="visible-xs visible-sm">
							<dnn:MENU MenuStyle="nav/sub" NodeSelector="CurrentChildren" runat="server" />
						</div>
					</div>
				</div>
			</div>
			<a class="ly-top" href="#" title="Nach oben"><i></i></a>
		</div>
	</div>
	<div class="ly-push"></div>
</div>
<footer>
    <div class="container-fluid">
        <div class="ly-container-inner clearfix">

            <ul class="ly-footer-address clearfix" itemscope itemtype="http://schema.org/LocalBusiness">
				<li>
					<strong itemprop="name">LIMODOR Service</strong>
				</li>
				<li>
					<span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
						<span itemprop="streetAddress">Zielstrasse 13</span>
						<span itemprop="postalCode addressLocality">9050 Appenzell</span>
						<span itemprop="addressCountry">Schweiz</span>
					</span>
				</li>
                <li></span><a href="tel:0041813023313">Tel: +41 81 302 33 13</a></li>
				<li>
					<span data-madr1="info" data-madr2="limodor-service" data-madr3="ch" data-linktext="info@limodor-service.ch"></span>
				</li>
            </ul>
            <div class="ly-footer-imprint">
                <a href="<%# LocalizeString("Medien.Url") %>" title="Medien"><%# LocalizeString("Medien.Text") %></a>
				<a href="<%# LocalizeString("Imprint.Url") %>" title="Impressum"><%# LocalizeString("Imprint.Text") %>
				<a href="<%# LocalizeString("Data.Url") %>" title="Datenschutzerklärung"><%# LocalizeString("Data.Text") %></a>
            </div>
			<div class="ly-logo-minergie">
						<img alt="Minergie Member" src="<%#SkinPath%>images/logo-minergie.png" />
						<div class="ly-footer-login"> <dnn:login id="DnnLogin" cssclass="ly-login hidden-xs" runat="server" /></div>

			</div>

        </div>
    </div>
</footer>


<!-- include files in head -->
<dnn:DnnCssInclude runat="server" FilePath="dist/full-package.css" Priority="100" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="~/Portals/_default/Skins/_default/ToEasyDNN.css" Priority="150" />


<dnn:DnnJsInclude runat="server" FilePath="bower_components/bootstrap-sass/assets/javascripts/bootstrap.min.js" ForceProvider="DnnFormBottomProvider" Priority="100" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="bower_components/sidr/dist/jquery.sidr.min.js" ForceProvider="DnnFormBottomProvider" Priority="110" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="dist/scripts.js" ForceProvider="DnnFormBottomProvider" Priority="130" PathNameAlias="SkinPath" />

<script runat="server">
	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);

		AttachCustomHeader("<meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=5, shrink-to-fit=no' />");
		AttachCustomHeader("<!--[if lt IE 9]>" +
			"<script type='text/javascript' src='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js'></scr" + "ipt>" +
			"<script type='text/javascript' src='https://oss.maxcdn.com/respond/1.4.2/respond.min.js'></scr" + "ipt>" +
			"<![endif]-->");
	}

	protected void AttachExternalCSS(string CSSPath) { AttachCustomHeader("<link type='text/css' rel='stylesheet' href='" + CSSPath + "' />"); }
	protected void AttachExternalJS(string JSPath) { AttachCustomHeader("<script type='text/javascript' src='" + JSPath + "'></scr" + "ipt>"); }
	protected void AttachCustomHeader(string CustomHeader) { HtmlHead HtmlHead = (HtmlHead)Page.FindControl("Head"); if ((HtmlHead != null)) { HtmlHead.Controls.Add(new LiteralControl(CustomHeader));	}	}

	protected string LocalizeString(string key)
	{
			return Localization.GetString(key, Localization.GetResourceFile(this, System.IO.Path.GetFileName(this.AppRelativeVirtualPath)));
	}
</script>

