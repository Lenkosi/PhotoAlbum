<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="PhotoAlbum.LogInPage" %>

&nbsp;

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 1080px;
            position: inherit;
            width: 1620px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            width: 318px;
        }
        .auto-style4 {
            width: 318px;
        }
        .auto-style5 {
            text-align: left;
            width: 332px;
        }
        .auto-style6 {
            width: 332px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: center;
            width: 332px;
            height: 30px;
        }
        .auto-style9 {
            width: 318px;
            height: 25px;
        }
        .auto-style10 {
            width: 332px;
            height: 25px;
        }
        .auto-style11 {
            height: 25px;
        }
        .auto-style12 {
            width: 318px;
            height: 30px;
        }
        .auto-style13 {
            height: 30px;
        }
    </style>
</head>
<body style="height: 1080px">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-position: center center; background-image: url('background%20Images/mark-autumns-Ssr26I0QWVY-unsplash.jpg'); color: #FFFFFF; background-repeat: no-repeat;">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="PhotoAlbum"></asp:Label>
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="UserName:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="UsernameBox" runat="server" Width="332px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsernameBox" ErrorMessage="Please Enter UserName!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Password:" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Passwordbox" runat="server" Width="333px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Passwordbox" ErrorMessage="Please Enter Password!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style8">
                        <asp:Button ID="LogInBtn" runat="server" Text="Log In" Width="87px" OnClick="LogInBtn_Click" />
                    </td>
                    <td class="auto-style13">
                        <asp:LinkButton ID="NoSignUpLink" runat="server" Font-Size="Medium" ForeColor="White" OnClick="NoSignUpLink_Click">No Account:Sign up</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Label ID="VaildCredlbl" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="ExceptLbl" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
