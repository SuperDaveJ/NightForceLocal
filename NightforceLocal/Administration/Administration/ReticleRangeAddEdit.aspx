<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="ReticleRangeAddEdit.aspx.cs" Inherits="Nightforce.Administration.ReticleRangeAddEdit" %>

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
        <asp:Literal ID="ReticleRangeIdLabel" runat="server"></asp:Literal>
        <asp:Literal ID="ReticleRangeIdInfo" runat="server"></asp:Literal>
        <asp:label ID="ReticleLabel" runat="server" AssociatedControlID="ReticleCombo"></asp:label>
        <br />
        <telerik:RadComboBox ID="ReticleCombo" runat="server"></telerik:RadComboBox>
        <br />
        <br />
        <asp:label ID="RangeLabel" runat="server" AssociatedControlID="RangeText"></asp:label>
        <br />
        <telerik:RadNumericTextBox ID="RangeText" runat="server"></telerik:RadNumericTextBox>
        <br />
        <br />
        <asp:label ID="BallisticDropLabel" runat="server" AssociatedControlID="BallisticDropText"></asp:label>
        <br />
        <telerik:RadNumericTextBox ID="BallisticDropText" runat="server"></telerik:RadNumericTextBox>
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

