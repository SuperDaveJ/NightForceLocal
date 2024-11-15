<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Nightforce.Web.Default" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Src="~/Controls/ValidationSummary.ascx" TagName="ValidationSummary" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainStandardFormContent" runat="server">
    <telerik:RadAjaxLoadingPanel ID="PageLoadingPanel" runat="server">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="LogOnButton">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="PageValidation" />
                    <telerik:AjaxUpdatedControl ControlID="LogOnButton" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy> 
    <div id="PageDiv">
        <br />
        <asp:Literal ID="BrowserProblemMessage" runat="server"></asp:Literal>
        <uc1:ValidationSummary ID="PageMessages" runat="server" />
        <asp:Literal ID="ControlDisplay" runat="server"></asp:Literal>
            <div id="LogonDiv">
                <div style="text-align:center;margin:0px auto;">
                    <br />
                    <asp:Image ID="LogOnImage" runat="server" />
                    <br />
                    <br />
                    <asp:Literal ID="WelcomeMessage" runat="server"></asp:Literal>
                    <br />
                    <br />
                    <div style="text-align:center;margin:0px auto;width: 500px;">
                        <uc1:ValidationSummary ID="PageValidation" runat="server" />
                    </div>
                    <br />
                    <asp:Literal ID="Instructions" runat="server"></asp:Literal>
                    <br />
                    <br />
                    <div style="margin: 0 auto; width:305px;">
                        <div style="text-align:left;">
                            <asp:Label ID="LogOnIdLabel" runat="server" AssociatedControlID="LogOnIdText"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="LogOnIdText" runat="server"></telerik:RadTextBox>
                            <br />
                            <br />
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="PasswordText"></asp:Label>
                            <br />
                            <telerik:RadTextBox ID="PasswordText" runat="server"></telerik:RadTextBox>
                        </div>
                    </div>
                    <br />
                    <telerik:RadButton ID="LogOnButton" runat="server" OnClick="LogOnButton_Click"></telerik:RadButton>
                    <br />
                    <br />
                </div>
            </div>
        </span>
    </div>
</asp:Content>

