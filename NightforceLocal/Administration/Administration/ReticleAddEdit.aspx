<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="ReticleAddEdit.aspx.cs" Inherits="Nightforce.Administration.ReticleAddEdit" %>

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
                    <telerik:AjaxUpdatedControl ControlID="ReticleUpdateButton" />
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
        <asp:Literal ID="ReticleIdLabel" runat="server"></asp:Literal>
        <asp:Literal ID="ReticleIdInfo" runat="server"></asp:Literal>
        <asp:label ID="ReticleNameLabel" runat="server" AssociatedControlID="ReticleNameText"></asp:label>
        <br />
        <telerik:RadTextBox ID="ReticleNameText" runat="server"></telerik:RadTextBox>
        <br />
        <br />
        <asp:label id="ReticleImageLabel" runat="server" CssClass="LabelForText"  AssociatedControlID="ReticleImageUpload"></asp:label>
        <br />
        <asp:FileUpload ID="ReticleImageUpload" Width="300px" runat="server" />
        <asp:Literal ID="ReticleImageBreak" runat="server"></asp:Literal>
        <asp:Literal ID="CurrentReticleImage" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:label id="ReticleDetailLinkLabel" runat="server" CssClass="LabelForText" AssociatedControlID="ReticleDetailLinkText"></asp:label>
        <br />
        <telerik:RadTextBox ID="ReticleDetailLinkText" runat="server"></telerik:RadTextBox>
        <br />
        <br />
        <asp:label id="ReticleWebLinkLabel" runat="server" CssClass="LabelForText" AssociatedControlID="ReticleWebLinkText"></asp:label>
        <br />
        <telerik:RadTextBox ID="ReticleWebLinkText" runat="server"></telerik:RadTextBox>
        <br />
        <br />
        <asp:label ID="ReticleTypeLabel" runat="server" AssociatedControlID="ReticleTypeCombo"></asp:label>
        <br /> 
        <telerik:RadComboBox ID="ReticleTypeCombo" runat="server">
        </telerik:RadComboBox>
        <br /> 
        <br />
        <asp:label ID="RhoLabel" runat="server" AssociatedControlID="RhoText"></asp:label>
        <br />     
        <telerik:RadNumericTextBox ID="RhoText" runat="server"></telerik:RadNumericTextBox>
        <br />
        <br />
        <asp:label ID="ShiLabel" runat="server" AssociatedControlID="ShiText"></asp:label>
        <br />     
        <telerik:RadNumericTextBox ID="ShiText" runat="server"></telerik:RadNumericTextBox>
        <br />
        <br />
        <telerik:RadButton ID="ReticleUpdateButton" runat="server" OnClick="UpdateButton_Click"></telerik:RadButton>
        &nbsp;&nbsp;
        <telerik:RadButton ID="CancelButton" runat="server" OnClick="CancelButton_Click"></telerik:RadButton>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

