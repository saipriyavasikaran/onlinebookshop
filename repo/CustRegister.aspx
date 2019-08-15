<%@ Page Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="CustRegister.aspx.cs" Inherits="CustRegister" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 354px;
    }
    .style4
    {
        width: 168px;
    }
</style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <div>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="41px" 
            ImageUrl="~/img/signup.jpeg" Width="324px" />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<table>
<tr>
<td class="style4"></td><td></td><td class="style3"></td>
</tr>
<tr>
<td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    NAME&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Enter valid name"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATE OF BIRTH&nbsp;&nbsp; 
    &nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    GENDER&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="126px">
        <asp:ListItem>----Select----</asp:ListItem>
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>
    &nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    E_MAIL&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
    &nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    ADDRESS&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    CONTACT&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    &nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    USERNAME&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox6" ErrorMessage="Enter valid name"></asp:RequiredFieldValidator>
                                        </td>
</tr>
<tr>
<td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    PASSWORD&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" 
        ontextchanged="TextBox7_TextChanged"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="TextBox7" ErrorMessage="valid pas
        sword"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;</td><td>&nbsp;</td><td class="style3">&nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;</td><td>&nbsp;</td><td class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="22px" onclick="Button1_Click" 
        Text="SUBMIT" Width="76px" />
    &nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;</td><td>&nbsp;</td><td class="style3">
    <asp:Label ID="Label3" runat="server" Text="Mail from bookshop" Visible="False"></asp:Label>
    </td>
</tr>
<tr>
<td class="style4">&nbsp;</td><td>&nbsp;</td><td class="style3">&nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;</td><td>&nbsp;</td><td class="style3">&nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;</td><td>&nbsp;</td><td class="style3">&nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;</td><td>&nbsp;</td><td class="style3">&nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;</td><td>&nbsp;</td><td class="style3">&nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;</td><td>&nbsp;</td><td class="style3">&nbsp;</td>
</tr>
<tr>
<td class="style4">&nbsp;</td><td>&nbsp;</td><td class="style3">&nbsp;</td>
</tr>
</table>
</div>
</asp:Content>

