<%@ Page Language="C#" MasterPageFile="~/Main/Main100Height.Master" AutoEventWireup="true" CodeBehind="Scopes.aspx.cs" Inherits="Nightforce.Administration.Scopes" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Src="~/Controls/ValidationSummary.ascx" TagName="ValidationSummary" TagPrefix="uc1" %>

<%@ Register Src="~/Controls/OkCancelDialog.ascx" TagName="OkCancelDialog" TagPrefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
    <telerik:RadButton ID="AddScopeButton" runat="server" OnClick="AddScopeButton_Click"></telerik:RadButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainTopContent" runat="server">
    <uc3:OkCancelDialog ID="PageWindow" runat="server" />
    <telerik:RadAjaxLoadingPanel ID="PageLoadingPanel" runat="server">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="ScopeGrid">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ScopeGrid" LoadingPanelID="PageLoadingPanel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <asp:Literal ID="SelectedScopeIdHidden" runat="server"></asp:Literal>  
    <asp:Literal ID="PageEventHidden" runat="server"></asp:Literal>
    <asp:Literal ID="EditMessageHidden" runat="server"></asp:Literal>  
    <asp:Literal ID="DeleteMessageHidden" runat="server"></asp:Literal>    
    <div class="StandardFormDiv">
        <br />
        <uc1:ValidationSummary ID="PageValidation" runat="server" />
        <asp:Literal ID="Expand100Control" runat="server"></asp:Literal> 
        <asp:Literal ID="ScopeGridLabel" runat="server"></asp:Literal>
        <asp:Literal ID="ScopesNotFoundLabel" runat="server"></asp:Literal>    
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainBottomContent" runat="server">
    <telerik:RadGrid ID="ScopeGrid" OnColumnCreated="ScopeGrid_ColumnCreated" OnItemDataBound="ScopeGrid_ItemDataBound" OnDetailTableDataBind="ScopeGrid_DetailTableDataBind" OnPageSizeChanged="ScopeGrid_PageSizeChanged" PageSize="50" OnNeedDataSource="ScopeGrid_NeedDataSource" runat="server" OnItemCreated="ScopeGrid_ItemCreated">
        <PagerStyle Mode="NextPrevAndNumeric" />
    </telerik:RadGrid>
</asp:Content>

