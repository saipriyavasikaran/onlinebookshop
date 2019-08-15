<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addbooks.aspx.cs" Inherits="addbooks" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 326px;
        }
        .style10
        {
            width: 196px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>

</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="width: 891px">


<script type="text/javascript">

    function previewFile()
    {
        
        var preview = document.querySelector('#<%=Image1.ClientID %>');
        var file = document.querySelector('#<%=FileUpload1.ClientID %>').files[0];
        var reader = new FileReader();
        
        reader.onloadend = function()
        {
            preview.src = reader.result;
        }
        if(file)
        {
            reader.readAsDataURL(file);
        }
        else
        {
            preview.src =" ";
        }
     }
     
 </script>
 

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/frontadmin.aspx">back</asp:HyperLink>
    <br />
    <br />
    <table style="width: 538px">
    <tr>
    <td class="style10"></td><td></td><td class="style9"></td>
    </tr>
    <tr>
    <td class="style10">&nbsp; NAME OF THE BOOK&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;AUTHER OF THE BOOK&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="199px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        CATEGORY&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="198px" 
            AutoPostBack="True">
        </asp:DropDownList>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        PRICE</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="197px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        STOCK&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="196px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        IMAGE &nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server"   onchange="previewFile()" />
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">
        <asp:Image ID="Image1" runat="server" Height="147px" Width="203px" />
        </td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        PUBLISHER&nbsp;</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="203px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">PREVIEW OF THE BOOK</td><td>&nbsp;:&nbsp;</td><td class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" 
            ErrorMessage="Enter full details"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">&nbsp;</td>
    </tr>
    <tr>
    <td class="style10">&nbsp;</td><td>&nbsp;</td><td class="style9">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" 
            Width="72px" />
        </td>
    </tr>
    </table>
    <br />

</div>
</asp:Content>

