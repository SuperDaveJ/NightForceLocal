<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TextDetail.ascx.cs" Inherits="Nightforce.Controls.TextDetail" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Src="~/Controls/ValidationSummary.ascx" TagName="ValidationSummary" TagPrefix="uc1" %>

<script language="javascript" type="text/javascript">
    textDetailDialogId = "<%= TextDetailWindow.ClientID%>";
</script>

<telerik:RadWindow ID="TextDetailWindow" CssClass="DialogWindow" runat="server">
    <ContentTemplate>
        <telerik:RadAjaxLoadingPanel ID="TextDetailLoadingPanel" runat="server">
        </telerik:RadAjaxLoadingPanel>
        <asp:Literal ID="RadWindowDiv" runat="server"></asp:Literal> 
            <br />
            <div class="CenterDiv">
                <div style="margin: 0 auto; width:750px;">
                    <div style="text-align:left;">
                        <uc1:ValidationSummary ID="TextDetailValidation" runat="server" />
                        <asp:Literal ID="TextDetailText" runat="server"></asp:Literal>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="CenterDiv">
            <telerik:RadButton ID="CloseTextDetailWindowButton" runat="server" />
        </div>
    </ContentTemplate>
</telerik:RadWindow>