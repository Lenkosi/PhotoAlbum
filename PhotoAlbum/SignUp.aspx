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
            text-align: left;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: center;
            width: 248px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 248px;
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
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameBox" ErrorMessage="Please Enter your name!!" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Surname:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="SurnameBox" runat="server" Width="239px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SurnameBox" ErrorMessage="Please Enter Surname!!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="EmailBox" runat="server" Width="239px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailBox" ErrorMessage="Invaild Email Address" Font-Bold="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="SignPassBox" runat="server" Width="238px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SignPassBox" ErrorMessage="Please enter Password!!" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="ConfirmBox" runat="server" Width="238px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ConfirmBox" ErrorMessage="Please enter correct confirm!!" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Username:"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="UserSignUpTxt" runat="server" CssClass="auto-style11" Width="240px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="UserSignUpTxt" ErrorMessage="Create A Username!!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="CancelBtn" runat="server" BackColor="#666699" BorderColor="#666666" BorderStyle="Outset" Font-Bold="True" OnClick="CancelBtn_Click" Text="Cancel" Width="95px" />
                    </td>
                    <td class="auto-style12">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="SignUpBtn" runat="server" BackColor="#666699" BorderColor="#666666" BorderStyle="Outset" Font-Bold="True" Text="Sign Up" Width="104px" OnClick="SignUpBtn_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style9">
                        <asp:Button ID="Button2" runat="server" BackColor="#666699" BorderColor="#666666" Font-Bold="True" Text="Clear" Width="79px" OnClick="Button2_Click" />
                    &nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="SignPassBox" ControlToValidate="ConfirmBox" ErrorMessage="Password don't match" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="ExceptionLBL" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
