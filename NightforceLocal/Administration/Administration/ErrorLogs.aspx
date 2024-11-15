<%@ Page Language="C#" MasterPageFile="~/Main/Main100Height.Master" AutoEventWireup="true" CodeBehind="ErrorLogs.aspx.cs" Inherits="Nightforce.Administration.ErrorLogs" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Src="~/Controls/ValidationSummary.ascx" TagName="ValidationSummary" TagPrefix="uc1" %>

<%@ Register Src="~/Controls/TextDetail.ascx" TagName="TextDetail" TagPrefix="uc2" %>

<%@ Register Src="~/Controls/OkCancelDialog.ascx" TagName="OkCancelDialog" TagPrefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
    <telerik:RadButton ID="ClearAllErrorLogsButton" runat="server" OnClientClicking="ClearAllErrorLogsButton_Clicking"></telerik:RadButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainTopContent" runat="server">
    <uc3:OkCancelDialog ID="DeleteWindow" runat="server" />
    <telerik:RadAjaxLoadingPanel ID="PageLoadingPanel" runat="server">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="TextDetailValidation" />
                    <telerik:AjaxUpdatedControl ControlID="TextDetailText" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="ErrorLogGrid">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ErrorLogGrid" LoadingPanelID="PageLoadingPanel" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy>
    <uc2:TextDetail ID="ErrorDetails" runat="server" />
    <asp:Literal ID="SelectedErrorLogIdHidden" runat="server"></asp:Literal>  
    <asp:Literal ID="PageEventHidden" runat="server"></asp:Literal>  
    <div class="StandardFormDiv">
        <br />
        <uc1:ValidationSummary ID="PageValidation" runat="server" />
        <asp:Literal ID="Expand100Control" runat="server"></asp:Literal> 
        <asp:Literal ID="ErrorLogGridLabel" runat="server"></asp:Literal>
        <asp:Literal ID="ErrorLogsNotFoundLabel" runat="server"></asp:Literal>
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainBottomContent" runat="server">
    <telerik:RadGrid ID="ErrorLogGrid" OnItemDataBound="ErrorLogGrid_ItemDataBound" OnPageSizeChanged="ErrorLogGrid_PageSizeChanged" PageSize="50" OnNeedDataSource="ErrorLogGrid_NeedDataSource" runat="server" OnItemCreated="ErrorLogGrid_ItemCreated">
        <PagerStyle Mode="NextPrevAndNumeric" />
    </telerik:RadGrid>
</asp:Content>

