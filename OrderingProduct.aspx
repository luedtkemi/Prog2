<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderingProduct.aspx.cs" Inherits="Prog2.OrderingProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CS3870- Fall 2019 - Program 2</title>
   <link href="Style.css" rel="stylesheet" />
    <style type="text/css">
       .auto-style1 {
          width: 100%;
       }
       .auto-style2 {
          height: 26px;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
       <h1>Web Protocolas, Technologis and Applications</h1>
       <h2>Michael Luedtke</h2>
        </div>
       <div class="navbar">
          <ul class="nav navbar-nav">
           <li><a runat="server" href="Default.aspx">Start Page</a></li>
           <li><a runat="server" href="OrderingProduct.aspx">Order Form</a></li>
        </ul>
        </div>
       <div class="body">



          <table class="auto-style1">
             <tr>
                <td>
                   <asp:Label ID="Label1" runat="server" Text="Product ID"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="ID cannot be empty!" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
             </tr>
             <tr>
                <td>
                   <asp:Label ID="Label2" runat="server" Text="Product Price"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price cannot be empty!" Font-Size="Small"></asp:RequiredFieldValidator>
                   <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Unit Price must be a positive number!" Font-Size="Small" MaximumValue="999999999999.99" MinimumValue="0" Type="Double"></asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
             </tr>
             <tr>
                <td class="auto-style2">
                   <asp:Label ID="Label3" runat="server" Text="Quantity to Purchase"></asp:Label>
                </td>
                <td class="auto-style2">
                   <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity cannot be empty!" Font-Size="Small"></asp:RequiredFieldValidator>
                   <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity must not be a non-negative integer!" Font-Size="Small" MaximumValue="5000000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
                <td class="auto-style2"></td>
             </tr>
             <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
             </tr>
             <tr>
                <td>
                   <asp:Button ID="btnCompute" runat="server" OnClick="btnCompute_Click" Text="Compute" />
                </td>
                <td>
                   <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" OnUnload="btnReset_Unload" style="height: 26px" Text="Reset" />
                </td>
                <td>&nbsp;</td>
             </tr>
             <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
             </tr>
             <tr>
                <td class="auto-style2">
                   <asp:Label ID="Label4" runat="server" Text="Subtotal"></asp:Label>
                </td>
                <td class="auto-style2">
                   <asp:TextBox ID="txtSubTotal" runat="server" CssClass="text" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
             </tr>
             <tr>
                <td class="auto-style2">
                   <asp:Label ID="Label5" runat="server" Text="Tax"></asp:Label>
                </td>
                <td class="auto-style2">
                   <asp:TextBox ID="txtTax" runat="server" CssClass="text" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
             </tr>
             <tr>
                <td class="auto-style2">
                   <asp:Label ID="Label6" runat="server" Text="Grand Total"></asp:Label>
                </td>
                <td class="auto-style2">
                   <asp:TextBox ID="txtGrandTotal" runat="server" CssClass="text" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
             </tr>
             <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
             </tr>
          </table>
          <br />
          <br />



       </div>
    </form>
</body>
</html>
