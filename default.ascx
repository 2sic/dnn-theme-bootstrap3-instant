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
  more infos on 2sxc quick-edit: https://2sxc.org/en/blog/post/quick-edit-2-add-move-delete-modules-in-preview-touch-capable-for-dnn
--%>
<%@ Register TagPrefix="tosic" TagName="SxcQuickEdit" src="controls/2sxc-quickedit.ascx" %>
<tosic:SxcQuickEdit runat="server" />

<%-- Include Google Font --%>
<link href="https://fonts.googleapis.com/css?family=Maven+Pro:400,500,700" rel="stylesheet" >

<a class="sr-only sr-only-focusable" href="#content"><%# LocalizeString("SkipLink.MainContent") %></a>
<div class="ly-overlay"></div>	
<div class="ly-fullwrapper">
	<header>
		<div class="container-fluid clearfix">
			<div class="ly-container-inner">

				<a href="#" class="ly-nav-mobile-trigger pull-right" title="Menu"></a>
				<nav id="nav-mobile">
					<a class="ly-logo" href="/" title="Limodor Service AG">			
						<img alt="Limodor Service AG" src="<%#SkinPath%>images/logo.png" />
					</a>
					<a href="#" class="ly-close"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
					<dnn:MENU MenuStyle="nav/main-mobile" NodeSelector="*,0,6" runat="server" />
					<div class="ly-leftpane-content">
						<a class="ly-button" href="/" title="Gratis Inspektion">			
							<img alt="Gratis Inspektion" src="<%#SkinPath%>images/Button-Image.png" />
						</a>
					</div>
				</nav>

				<a class="ly-logo" href="/" title="Limodor Service AG">			
					<img alt="Limodor Service AG" src="<%#SkinPath%>images/logo.png" />
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
								<a class="ly-button" href="/service/gratis-inspektion" title="Gratis Inspektion">			
									<img alt="Gratis Inspektion" src="<%#SkinPath%>images/Button-Image.png" />
								</a>
							</div>
							
						</div>
						
						<div class="visible-xs visible-sm">
							<dnn:MENU MenuStyle="nav/sub" NodeSelector="CurrentChildren" runat="server" />
						</div>
					</div>
				</div>
			</div>
			<a class="ly-top" href="#" title="Nach oben"><span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span></a>
		</div>
	</div>
	<div class="ly-push"></div>
</div>
<footer>
    <div class="container-fluid">
        <div class="ly-container-inner clearfix">
			<div class="ly-footer-login"> <dnn:login id="DnnLogin" cssclass="ly-login hidden-xs" runat="server" /></div>
			
            <ul class="ly-footer-address clearfix" itemscope itemtype="http://schema.org/LocalBusiness">
				<li>
					<strong itemprop="name">Limodor Service AG</strong> | 
				</li>
				<li>
					<span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
						<span itemprop="streetAddress">Industriestrasse 8</span> | 
						<span itemprop="postalCode">7304</span>
						<span itemprop="addressLocality">Maienfeld</span> | 
						<span itemprop="addressCountry">Schweiz</span>
					</span>
				</li>
                <li></span><a href="tel:00423235050">Tel: 00423 239 50 50</a> |</li>
				<li>
					<span data-madr1="info" data-madr2="limodor-service" data-madr3="com" data-linktext="info@limodor-service.com"></span>
				</li>
            </ul>
            <div class="ly-footer-imprint">
               
                <a href="<%# LocalizeString("Medien.Url") %>" title="Medien"><%# LocalizeString("Medien.Text") %></a> | <a href="<%# LocalizeString("Imprint.Url") %>" title="Impressum"><%# LocalizeString("Imprint.Text") %></a>
            </div>
			<div class="ly-logo-minergie">			
						<img alt="Minergie Member" src="<%#SkinPath%>images/logo-minergie.png" />
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
