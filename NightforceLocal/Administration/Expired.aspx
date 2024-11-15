<%@ Page MasterPageFile="~/Main/MainStandardForm.Master" Language="C#" AutoEventWireup="true" CodeBehind="Expired.aspx.cs" Inherits="Nightforce.Web.Expired" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainStandardFormContent" runat="server">
    <div class="StandardFormDiv">
        <br />
        <asp:Literal ID="ExpiredMessage" runat="server"></asp:Literal>
    </div>
</asp:Content>
