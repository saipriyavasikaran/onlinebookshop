<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add credit amt.aspx.cs" Inherits="add_credit_amt" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width:89%; height: 205px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Add Credit Card Amount" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Larger"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/frontadmin.aspx">back</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Credit Card No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="View" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Current Balance"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Add New Balance"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" 
                    ErrorMessage="Enter full details"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Add Amount" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

