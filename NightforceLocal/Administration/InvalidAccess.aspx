<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="InvalidAccess.aspx.cs" Inherits="Nightforce.Web.InvalidAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainStandardFormContent" runat="server">
    <div class="StandardFormDiv">
        <br />
        <asp:Literal ID="InvalidAccessMessage" runat="server"></asp:Literal>
    </div>
</asp:Content>
