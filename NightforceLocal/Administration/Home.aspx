<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Nightforce.Web.Home" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Src="~/Controls/ValidationSummary.ascx" TagName="ValidationSummary" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainStandardFormContent" runat="server">
    <div class="StandardFormDiv">
        <br />
        <uc1:ValidationSummary ID="PageValidation" runat="server" />
        <br />
        <div id="HomeDiv">
            <span style="width:200px;text-align:center;float:left;">
                <br />
                <br />
                <asp:ImageButton ID="AddBulletImageButton" runat="server" 
                ToolTip="Add A Custom Ammunition" ImageUrl="~/Images/Web/Home/AddBullet.png" 
                onclick="AddBulletImageButton_Click" />
                <br />
                <asp:LinkButton ID="AddBulletLinkButton" runat="server" 
                ToolTip="Add A Custom Ammunition" CssClass="Link" onclick="AddBulletLinkButton_Click">Add A Custom Ammunition</asp:LinkButton>
                <br />
                <br />
            </span>
            <span style="width:200px;text-align:center;float:left;">
                <br />
                <br />
                <asp:ImageButton ID="AddAmmunitionImageButton" runat="server" 
                ToolTip="Add A Factory Ammunition" ImageUrl="~/Images/Web/Home/AddAmmunition.png" 
                onclick="AddAmmunitionImageButton_Click" />
                <br />
                <asp:LinkButton ID="AddAmmunitionLinkButton" runat="server" 
                ToolTip="Add A Factory Ammunition" CssClass="Link" 
                onclick="AddAmmunitionLinkButton_Click">Add A Factory Ammunition</asp:LinkButton>
                <br />
                <br />
            </span>
            <span style="width:200px;text-align:center;float:left;">
                <br />
                <br />
                <asp:ImageButton ID="AddScopeImageButton" runat="server" 
                ToolTip="Add A Scope" ImageUrl="~/Images/Web/Home/AddScope.png" 
                onclick="AddScopeImageButton_Click" />
                <br />
                <asp:LinkButton ID="AddScopeLinkButton" runat="server" 
                ToolTip="Add A Scope" CssClass="Link" onclick="AddScopeLinkButton_Click">Add A Scope</asp:LinkButton>
                <br />
                <br />
            </span>
            <span style="width:200px;text-align:center;float:left;">
                <br />
                <br />
                <asp:ImageButton ID="AddReticleImageButton" runat="server" 
                ToolTip="Add A Reticle" ImageUrl="~/Images/Web/Home/AddReticle.png" 
                onclick="AddReticleImageButton_Click" />
                <br />
                <asp:LinkButton ID="AddReticleLinkButton" runat="server" 
                ToolTip="Add A Reticle" CssClass="Link" onclick="AddReticleLinkButton_Click">Add A Reticle</asp:LinkButton>
                <br />
                <br />
            </span>
            <span style="width:200px;text-align:center;float:left;">
                <br />
                <br />
                <asp:ImageButton ID="AddReticleRangeImageButton" runat="server" 
                ToolTip="Add A Reticle Range" ImageUrl="~/Images/Web/Home/AddReticleRange.png" 
                onclick="AddReticleRangeImageButton_Click" />
                <br />
                <asp:LinkButton ID="AddReticleRangeLinkButton" runat="server" 
                ToolTip="Add A Reticle Range" CssClass="Link" onclick="AddReticleRangeLinkButton_Click">Add A Reticle Range</asp:LinkButton>
                <br />
                <br />
            </span>
            <span style="width:200px;text-align:center;float:left;">
                <br />
                <br />
                <asp:ImageButton ID="AddPartNumberImageButton" runat="server" 
                ToolTip="Add A Part Number" ImageUrl="~/Images/Web/Home/AddPartNumber.png" 
                onclick="AddPartNumberImageButton_Click" />
                <br />
                <asp:LinkButton ID="AddPartNumberLinkButton" runat="server" 
                ToolTip="Add A Part Number" CssClass="Link" onclick="AddPartNumberLinkButton_Click">Add A Part Number</asp:LinkButton>
                <br />
                <br />
            </span>
            <span style="width:200px;text-align:center;float:left;">
                <br />
                <br />
            </span>
            <span style="width:200px;text-align:center;float:left;">
                <br />
                <br />
                <asp:ImageButton ID="OptionImageButton" runat="server" 
                ToolTip="Edit Options" ImageUrl="~/Images/Web/Home/Options.png" 
                onclick="OptionImageButton_Click" />
                <br />
                <asp:LinkButton ID="OptionLinkButton" runat="server" 
                ToolTip="Edit Options" CssClass="Link" onclick="OptionLinkButton_Click">Edit Options</asp:LinkButton>
                <br />
                <br />
            </span>
            <span style="width:200px;text-align:center;float:left;">
                <br />
                <br />
            </span>
        </div>
    </div>
</asp:Content>
