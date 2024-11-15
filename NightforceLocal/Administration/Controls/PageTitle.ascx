<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PageTitle.ascx.cs" Inherits="Nightforce.Controls.PageTitle" %>

<div id="PageTitleDiv">
    <asp:Image ID="PageTitleImage" CssClass="PageTitleImage" runat="server" />
    <div id="PageTitleTextDiv">
        <asp:Literal ID="PageTitleDisplay" runat="server"></asp:Literal>
    </div>
</div>