<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="PartNumberAddEdit.aspx.cs" Inherits="Nightforce.Administration.PartNumberAddEdit" %>

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
             <telerik:AjaxSetting AjaxControlID="ScopeCombo">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ScopeCombo" />
                    <telerik:AjaxUpdatedControl ControlID="ReticleCombo" />
                    <telerik:AjaxUpdatedControl ControlID="PageValidation" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="UpdateButton">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="PageValidation" />
                    <telerik:AjaxUpdatedControl ControlID="UpdateButton" />
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
        <asp:Literal ID="ScopeReticleProductIdLabel" runat="server"></asp:Literal>
        <asp:Literal ID="ScopeReticleProductIdInfo" runat="server"></asp:Literal>
        <asp:label ID="ScopeLabel" runat="server" AssociatedControlID="ScopeCombo"></asp:label>
        <br />
        <telerik:RadComboBox ID="ScopeCombo" AutoPostBack="true" onselectedindexchanged="ScopeCombo_SelectedIndexChanged" runat="server"></telerik:RadComboBox>
        <br />
        <br />
        <asp:label ID="ReticleLabel" runat="server" AssociatedControlID="ReticleCombo"></asp:label>
        <br />
        <telerik:RadComboBox ID="ReticleCombo" runat="server"></telerik:RadComboBox>
        <br />
        <br />
        <asp:label ID="PartNumberLabel" runat="server" AssociatedControlID="PartNumberText"></asp:label>
        <br />
        <telerik:RadTextBox ID="PartNumberText" runat="server"></telerik:RadTextBox>
        <br />
        <br />
        <asp:label ID="DescriptionLabel" runat="server" AssociatedControlID="DescriptionText"></asp:label>
        <br />
        <telerik:RadTextBox ID="DescriptionText" runat="server"></telerik:RadTextBox>
        <br />
        <br />
        <telerik:RadButton ID="UpdateButton" runat="server" OnClick="UpdateButton_Click"></telerik:RadButton>
        &nbsp;&nbsp;
        <telerik:RadButton ID="CancelButton" runat="server" OnClick="CancelButton_Click"></telerik:RadButton>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

