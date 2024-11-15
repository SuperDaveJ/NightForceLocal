<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ReviewInputDialog.ascx.cs" Inherits="Nightforce.ReticleCalculator.Controls.ReviewInputDialog" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<script language="javascript" type="text/javascript">
    reviewInputDialogId = "<%= ReviewInputDialogWindow.ClientID%>";
</script>

<telerik:RadWindow ID="ReviewInputDialogWindow" CssClass="DialogWindow" runat="server">
    <ContentTemplate>
       <asp:Literal ID="RadWindowDiv" runat="server"></asp:Literal>
            <br />
            <div class="CenterDiv">
                The following inputs were used to calculate the recommended velocity reticles:
                <br />
                <br />
            </div>
            <div class="CenterDivReview">
                <asp:Literal ID="ContentDiv" runat="server"></asp:Literal>
                    <div style="text-align:left;">
                        
                        <asp:Literal ID="DialogMessage" runat="server"></asp:Literal>
                    </div>
                </div>
                <br />
            </div>
            <br />
            <div class="CenterDiv">
                <asp:LinkButton ID="CloseButton" runat="server" ToolTip="Close" OnClientClick="CloseButton_Click();return false;">
                    <img src="Images/Buttons/CloseUp.png" alt="Close" width="149" height="39" id="Image1" onmouseover="MM_swapImage('Image1','','Images/Buttons/CloseOver.png',1)" onmouseout="MM_swapImgRestore()" />
                </asp:LinkButton>
            </div>
        </div>
    </ContentTemplate>
</telerik:RadWindow>