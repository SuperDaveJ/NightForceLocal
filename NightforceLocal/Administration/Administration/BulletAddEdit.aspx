<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="BulletAddEdit.aspx.cs" Inherits="Nightforce.Administration.BulletAddEdit" %>

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
        <asp:Literal ID="BulletIdLabel" runat="server"></asp:Literal>
        <asp:Literal ID="BulletIdInfo" runat="server"></asp:Literal>
        <asp:label ID="ManufacturerLabel" runat="server" AssociatedControlID="ManufacturerCombo"></asp:label>
        <br />
        <telerik:RadComboBox ID="ManufacturerCombo" runat="server"></telerik:RadComboBox>
        <br />
        <br />
        <asp:label ID="BulletTypeLabel" runat="server" AssociatedControlID="BulletTypeCombo"></asp:label>
        <br />
        <telerik:RadComboBox ID="BulletTypeCombo" runat="server"></telerik:RadComboBox>
        <br />
        <br />
        <asp:label ID="BulletSourceLabel" runat="server" AssociatedControlID="BulletSourceCombo"></asp:label>
        <br />
        <telerik:RadComboBox ID="BulletSourceCombo" runat="server"></telerik:RadComboBox>
        <br />
        <br />
        <asp:label ID="BulletCaliberLabel" runat="server" AssociatedControlID="BulletCaliberText"></asp:label>
        <br />
        <telerik:RadNumericTextBox ID="BulletCaliberText" runat="server"></telerik:RadNumericTextBox>
        <br />
        <br />
        <asp:label ID="BulletWeightLabel" runat="server" AssociatedControlID="BulletWeightText"></asp:label>
        <br />     
        <telerik:RadNumericTextBox ID="BulletWeightText" runat="server"></telerik:RadNumericTextBox>
        <br />
        <br />
        <asp:label ID="G1BallisticCoefficientLabel" runat="server" AssociatedControlID="G1BallisticCoefficientText"></asp:label>
        <br />
        <telerik:RadNumericTextBox ID="G1BallisticCoefficientText" runat="server"></telerik:RadNumericTextBox>
        <br />
        <br />
        <asp:label ID="G7BallisticCoefficientLabel" runat="server" AssociatedControlID="G7BallisticCoefficientText"></asp:label>
        <br />
        <telerik:RadNumericTextBox ID="G7BallisticCoefficientText" runat="server"></telerik:RadNumericTextBox>
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

