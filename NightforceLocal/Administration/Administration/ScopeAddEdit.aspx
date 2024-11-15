<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="ScopeAddEdit.aspx.cs" Inherits="Nightforce.Administration.ScopeAddEdit" %>

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
            <telerik:AjaxSetting AjaxControlID="UpdateButton">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="PageValidation" />
                    <telerik:AjaxUpdatedControl ControlID="ScopeUpdateButton" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy> 
    <div class="StandardFormDiv" id="PageDiv">
        <br />
        <uc1:ValidationSummary ID="PageValidation" runat="server" />
        <asp:Literal ID="RequiredFieldMessage" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:Literal ID="ScopeIdLabel" runat="server"></asp:Literal>
        <asp:Literal ID="ScopeIdInfo" runat="server"></asp:Literal>
        <asp:label ID="ScopeNameLabel" runat="server" AssociatedControlID="ScopeNameText"></asp:label>
        <br />
        <telerik:RadTextBox ID="ScopeNameText" runat="server"></telerik:RadTextBox>
        <br />
        <br />
        <asp:label ID="ScopeWebLinkLabel" runat="server" AssociatedControlID="ScopeWebLinkText"></asp:label>
        <br />
        <telerik:RadTextBox ID="ScopeWebLinkText" runat="server"></telerik:RadTextBox>
        <br />
        <br />
        <asp:label ID="ScopeReticlesLabel" runat="server" AssociatedControlID="ScopeReticlesList"></asp:label>
        <br />
        <telerik:RadListBox ID="ScopeReticlesList" runat="server">
        </telerik:RadListBox>
        <br />
        <br />
        <telerik:RadButton ID="ScopeUpdateButton" runat="server" OnClick="UpdateButton_Click"></telerik:RadButton>
        &nbsp;&nbsp;
        <telerik:RadButton ID="CancelButton" runat="server" OnClick="CancelButton_Click"></telerik:RadButton>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

