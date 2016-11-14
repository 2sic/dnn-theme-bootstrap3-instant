<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="tosic" TagName="PageTitle" src="controls/optimize-page-title.ascx" %>
<tosic:PageTitle runat="server" />
<%@ Register TagPrefix="tosic" TagName="BodyCssClasses" src="controls/body-css-classes.ascx" %>
<tosic:BodyCssClasses runat="server" />

<%--
  Remove the comments below to enable 2sxc quick-edit on all pages when logged on (requires 2sxc to be installed)
  more infos: https://2sxc.org/en/blog/post/quick-edit-2-add-move-delete-modules-in-preview-touch-capable-for-dnn
--%>

<%--
<%@ Register tagprefix="Edit" tagname="QuickEdit" src="~/DesktopModules/ToSIC_SexyContent/DnnWebForms/Skins/QuickEdit.ascx" %>
<Edit:QuickEdit runat="server" />
--%>

<a class="sr-only sr-only-focusable" href="#content"><%= LocalizeString("SkipLink.MainContent") %></a>

<header>
    <div class="container-fluid clearfix">
        <div class="ly-container-inner">

            <a href="#" class="ly-nav-mobile-trigger pull-left" title="Menu"></a>
            <nav id="nav-mobile">
				<a href="#" class="ly-close"><span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></a>
                <dnn:MENU MenuStyle="nav/main-mobile" NodeSelector="*,0,6" runat="server" />
            </nav>

		    <a class="ly-logo" href="/" title="Bootstrap Skin Template by 2sic">
			    <img src="<%=SkinPath%>images/logo.png?w=340&amp;quality=100" alt="" />
		    </a>
            <nav id="nav-desktop" class="navbar navbar-default hidden-xs hidden-sm">
		        <dnn:MENU MenuStyle="nav/main" NodeSelector="*,0,0" runat="server" />
	        </nav>

        </div>
    </div>
</header>

<div class="container-fluid ly-header-pane <%= (HeaderPane.Attributes["class"] ?? "").Contains("DNNEmptyPane") ? "ly-header-pane-empty" : "" %>">
	<div class="ly-container-inner">
		<div id="HeaderPane" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
	</div>
</div>

<div id="content">
    <div class="container-fluid ly-content">
        <div class="ly-container-inner">
			<div class="ly-contentpane-full">
				<div id="ContentPane" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
			</div>
		    <div class="row">
			    <div class="col-xs-12 col-md-9 col-md-push-3 ly-col-contentpane">
                    <div id="RightPane" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
			    </div>
			    <div class="col-xs-12 col-md-3 col-md-pull-9 ly-col-leftpane">
                    <div class="hidden-xs">
                        <dnn:MENU MenuStyle="nav/sub" NodeSelector="+0,0,2" runat="server" />
                    </div>
                    <div class="visible-xs">
                        <dnn:MENU MenuStyle="nav/sub" NodeSelector="CurrentChildren" runat="server" />
                    </div>
			    </div>
		    </div>
        </div>
		<a class="ly-top" href="#" title="Nach oben"><span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span></a>
	</div>
</div>
	
<footer>
    <div class="container-fluid">
        <div class="ly-container-inner clearfix">
            <ul class="ly-footer-address clearfix" itemscope itemtype="http://schema.org/LocalBusiness">
				<li>
					<strong itemprop="name">IMMO trend AG</strong>
				</li>
				<li>
					<span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
						<span itemprop="streetAddress">Standardstrasse 77</span>,
						<span itemprop="postalCode">9470</span>
						<span itemprop="addressLocality">Buchs</span>,
						<span itemprop="addressCountry">Schweiz</span>
					</span>
				</li>
                <li><span class="glyphicon glyphicon-phone"></span>&nbsp;<a href="tel:+41817506777">+41 81 750 67 77</a></li>
				<li>
					<span class="glyphicon glyphicon-envelope"></span>&nbsp;<span data-madr1="info" data-madr2="immotrend" data-madr3="com"></span>
				</li>
            </ul>
            <div class="ly-footer-imprint">
                <dnn:login id="DnnLogin" cssclass="ly-login hidden-xs" runat="server" />
                <a href="<%= LocalizeString("Imprint.Url") %>" title="Impressum"><%= LocalizeString("Imprint.Text") %></a>
            </div>
        </div>
    </div>
</footer>

<!-- include files in head -->
<dnn:DnnCssInclude runat="server" FilePath="dist/bootstrap.css" Priority="100" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="dist/typography.css" Priority="120" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="dist/contactform.css" Priority="125" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="dist/layout.css" Priority="130" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="dist/print.css" Priority="140" PathNameAlias="SkinPath" />
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
		
		AttachCustomHeader("<meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no' />");
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
