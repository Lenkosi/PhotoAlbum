<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="PhotoAlbum.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 601px;
        }
        .auto-style2 {
            width: 1620px;
            height: 1080px;
        }
        .auto-style3 {
            width: 732px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            height: 43px;
        }
        .auto-style7 {
            height: 45px;
            text-align: left;
            width: 204px;
        }
        .auto-style8 {
            height: 43px;
            width: 204px;
        }
        .auto-style10 {
            width: 732px;
            text-align: center;
            height: 186px;
        }
        .auto-style11 {
            height: 186px;
        }
        .auto-style13 {
            width: 732px;
            height: 143px;
        }
        .auto-style14 {
            height: 143px;
        }
        .auto-style15 {
            height: 45px;
            width: 199px;
        }
        .auto-style16 {
            height: 198px;
        }
        .auto-style17 {
            width: 732px;
            height: 198px;
        }
        .auto-style18 {
            height: 45px;
            text-align: center;
            width: 204px;
        }
        .auto-style19 {
            width: 165px;
        }
        .auto-style20 {
            height: 186px;
            width: 383px;
        }
        .auto-style21 {
            height: 143px;
            width: 383px;
        }
        .auto-style22 {
            height: 198px;
            width: 383px;
        }
        .auto-style23 {
            width: 383px;
        }
        .auto-style24 {
            width: 165px;
            text-align: right;
        }
        .auto-style25 {
            width: 149px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('background Images/pexels-hasan-albari-1229861.jpg'); width: 1620px; height: 1080px;">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style10">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="White" Text="Welcome"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="LinkButton1_Click">Log Out</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style13">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="White" Text="Image Upload"></asp:Label>
                                </td>
                                <td class="auto-style5" colspan="2"></td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Upload Image here"></asp:Label>
                                </td>
                                <td class="auto-style6" colspan="2">
                                    <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Black" BorderStyle="Dashed" ForeColor="Black" Width="216px" />
                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style18">
                                    <asp:Button ID="deletebtn" runat="server" Height="33px" Text="Delete" Width="96px" />
                                </td>
                                <td class="auto-style15">
                                    <asp:Button ID="SubmitBtn" runat="server" Height="33px" OnClick="SubmitBtn_Click" Text="Submit" Width="104px" />
                                </td>
                                <td class="auto-style5">
                                    <asp:Button ID="viewBtn" runat="server" Height="35px" OnClick="viewBtn_Click" Text="View Images" Width="117px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style14">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style24">
                                    <asp:Label ID="Label5" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" Text="Search:"></asp:Label>
                                </td>
                                <td class="auto-style25">
                                    <asp:TextBox ID="SearchBox" runat="server" Width="130px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Button ID="SearchBtn" runat="server" OnClick="SearchBtn_Click" Text="Search" Width="98px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td class="auto-style25">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style17">
                        <asp:DataList ID="viewImages1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <image src="Images/<%#Eval("Image") %>" height="150" width="180" />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style16">
                        <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Picture Found" Height="100px">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
