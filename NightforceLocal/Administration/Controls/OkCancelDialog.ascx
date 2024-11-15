<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OkCancelDialog.ascx.cs" Inherits="Nightforce.Controls.OkCancelDialog" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<script language="javascript" type="text/javascript">
    okCancelDialogId = "<%= OkCancelDialogWindow.ClientID%>";
</script>

<telerik:RadWindow ID="OkCancelDialogWindow" CssClass="DialogWindow" runat="server">
    <ContentTemplate>
       <asp:Literal ID="RadWindowDiv" runat="server"></asp:Literal>
            <br />
            <div class="CenterDiv">
                <asp:Literal ID="ContentDiv" runat="server"></asp:Literal>
                    <div style="text-align:left;">
                        <asp:Literal ID="DialogMessage" runat="server"></asp:Literal>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="CenterDiv">
            <telerik:RadButton ID="OkButton"  runat="server"></telerik:RadButton>
            <telerik:RadButton ID="CancelButton" runat="server"></telerik:RadButton>
        </div>
    </ContentTemplate>
</telerik:RadWindow>