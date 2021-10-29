<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PhotoAlbum.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 585px;
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
            width: 248px;
        }
        .auto-style6 {
            width: 585px;
            text-align: right;
            height: 25px;
        }
        .auto-style7 {
            text-align: left;
            width: 248px;
            height: 25px;
        }
        .auto-style8 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('background Images/mark-autumns-Ssr26I0QWVY-unsplash.jpg'); width: 1620px; height: 1080px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Sign Up"></asp:Label>
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="NameBox" runat="server" Width="239px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Surname:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="SurnameBox" runat="server" Width="239px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="EmailBox" runat="server" Width="239px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="SignPassBox" runat="server" Width="238px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="ConfirmBox" runat="server" Width="238px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="SignUpBtn" runat="server" BackColor="#666699" BorderColor="#666666" BorderStyle="Outset" Font-Bold="True" Text="Sign Up" Width="84px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#666699" BorderColor="#666666" Font-Bold="True" Text="Clear" Width="79px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
