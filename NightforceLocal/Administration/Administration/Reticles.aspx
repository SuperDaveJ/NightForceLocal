<%@ Page Language="C#" MasterPageFile="~/Main/Main100Height.Master" AutoEventWireup="true" CodeBehind="Reticles.aspx.cs" Inherits="Nightforce.Administration.Reticles" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Src="~/Controls/ValidationSummary.ascx" TagName="ValidationSummary" TagPrefix="uc1" %>

<%@ Register Src="~/Controls/OkCancelDialog.ascx" TagName="OkCancelDialog" TagPrefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
    <telerik:RadButton ID="AddReticleButton" runat="server" OnClick="AddReticleButton_Click"></telerik:RadButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainTopContent" runat="server">
    <uc3:OkCancelDialog ID="PageWindow" runat="server" />
    <telerik:RadAjaxLoadingPanel ID="PageLoadingPanel" runat="server">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="ReticleGrid">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ReticleGrid" LoadingPanelID="PageLoadingPanel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <asp:Literal ID="SelectedReticleIdHidden" runat="server"></asp:Literal>  
    <asp:Literal ID="PageEventHidden" runat="server"></asp:Literal>
    <asp:Literal ID="EditMessageHidden" runat="server"></asp:Literal>  
    <asp:Literal ID="DeleteMessageHidden" runat="server"></asp:Literal>    
    <div class="StandardFormDiv">
        <br />
        <uc1:ValidationSummary ID="PageValidation" runat="server" />
        <asp:Literal ID="Expand100Control" runat="server"></asp:Literal> 
        <asp:Literal ID="ReticleGridLabel" runat="server"></asp:Literal>
        <asp:Literal ID="ReticlesNotFoundLabel" runat="server"></asp:Literal>    
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainBottomContent" runat="server">
    <telerik:RadGrid ID="ReticleGrid" OnColumnCreated="ReticleGrid_ColumnCreated" OnDetailTableDataBind="ReticleGrid_DetailTableDataBind" OnItemDataBound="ReticleGrid_ItemDataBound" OnPageSizeChanged="ReticleGrid_PageSizeChanged" PageSize="50" OnNeedDataSource="ReticleGrid_NeedDataSource" runat="server" OnItemCreated="ReticleGrid_ItemCreated">
        <PagerStyle Mode="NextPrevAndNumeric" />
    </telerik:RadGrid>
</asp:Content>

