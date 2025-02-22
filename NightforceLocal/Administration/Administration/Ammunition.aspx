﻿<%@ Page Language="C#" MasterPageFile="~/Main/Main100Height.Master" AutoEventWireup="true" CodeBehind="Ammunition.aspx.cs" Inherits="Nightforce.Administration.Ammunition" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Src="~/Controls/ValidationSummary.ascx" TagName="ValidationSummary" TagPrefix="uc1" %>

<%@ Register Src="~/Controls/OkCancelDialog.ascx" TagName="OkCancelDialog" TagPrefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
    <telerik:RadButton ID="AddAmmunitionButton" runat="server" OnClick="AddAmmunitionButton_Click"></telerik:RadButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainTopContent" runat="server">
    <uc3:OkCancelDialog ID="PageWindow" runat="server" />
    <telerik:RadAjaxLoadingPanel ID="PageLoadingPanel" runat="server">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="AmmunitionGrid">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="AmmunitionGrid" LoadingPanelID="PageLoadingPanel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <asp:Literal ID="SelectedAmmunitionIdHidden" runat="server"></asp:Literal>  
    <asp:Literal ID="PageEventHidden" runat="server"></asp:Literal>
    <asp:Literal ID="EditMessageHidden" runat="server"></asp:Literal>  
    <asp:Literal ID="DeleteMessageHidden" runat="server"></asp:Literal>    
    <div class="StandardFormDiv">
        <br />
        <uc1:ValidationSummary ID="PageValidation" runat="server" />
        <asp:Literal ID="Expand100Control" runat="server"></asp:Literal> 
        <asp:Literal ID="AmmunitionGridLabel" runat="server"></asp:Literal>
        <asp:Literal ID="AmmunitionNotFoundLabel" runat="server"></asp:Literal>    
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainBottomContent" runat="server">
    <telerik:RadGrid ID="AmmunitionGrid" OnItemDataBound="AmmunitionGrid_ItemDataBound" OnPageSizeChanged="AmmunitionGrid_PageSizeChanged" PageSize="50" OnNeedDataSource="AmmunitionGrid_NeedDataSource" runat="server" OnItemCreated="AmmunitionGrid_ItemCreated">
        <PagerStyle Mode="NextPrevAndNumeric" />
    </telerik:RadGrid>
</asp:Content>

