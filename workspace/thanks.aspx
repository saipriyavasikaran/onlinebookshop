<%@ Page Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="thanks.aspx.cs" Inherits="thanks" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div>
</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <div>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks for purchase.yours total amount&nbsp;
    <asp:Label ID="Label1" runat="server"></asp:Label>
    .you will collect your purchase after two days.click the link to&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/frontcust.aspx">homepage</asp:HyperLink>
    .<br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="286px" 
            ImageUrl="~/design/10.jpeg" Width="464px" />
    <br />
    <br />
    <br />
</div>
</asp:Content>

