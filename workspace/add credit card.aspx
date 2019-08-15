<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add credit card.aspx.cs" Inherits="add_credit_card" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 211px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%; height: 498px;">
        <tr>
            <td class="style9">
                <asp:Label ID="Label1" runat="server" Text="Add Credit Card Details" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Larger"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/frontadmin.aspx">back</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label2" runat="server" Text="Customer Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label3" runat="server" Text="Contact No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label5" runat="server" Text="Account No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label6" runat="server" Text="Account Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Current</asp:ListItem>
                    <asp:ListItem>Savings</asp:ListItem>
                    <asp:ListItem>Fixed</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label8" runat="server" Text="Current Balance"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label9" runat="server" Text="Credit Card No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label10" runat="server" Text="Expiration Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label11" runat="server" Text="Bank Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label12" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label13" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Trichy</asp:ListItem>
                    <asp:ListItem>Tanjore</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Madurai</asp:ListItem>
                    <asp:ListItem>Coimbatore</asp:ListItem>
                    <asp:ListItem>Salem</asp:ListItem>
                    <asp:ListItem>Nagapattinam</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" 
                    ErrorMessage="Enter full details"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Details" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

