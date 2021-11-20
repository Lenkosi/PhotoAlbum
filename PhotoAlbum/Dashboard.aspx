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
            width: 265px;
        }
        .auto-style8 {
            height: 43px;
            width: 265px;
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
            height: 202px;
        }
        .auto-style15 {
            height: 45px;
            width: 199px;
        }
        .auto-style16 {
            height: 298px;
        }
        .auto-style17 {
            width: 732px;
            height: 298px;
        }
        .auto-style19 {
            width: 165px;
        }
        .auto-style20 {
            height: 186px;
            width: 348px;
        }
        .auto-style22 {
            height: 298px;
            width: 348px;
        }
        .auto-style23 {
            width: 348px;
        }
        .auto-style24 {
            width: 165px;
            text-align: right;
        }
        .auto-style25 {
            width: 149px;
        }
        .auto-style28 {
            height: 45px;
            text-align: left;
            width: 147px;
        }
        .auto-style29 {
            height: 45px;
            text-align: right;
            width: 147px;
        }
        .auto-style30 {
            height: 202px;
            width: 348px;
        }
        .auto-style31 {
            height: 202px;
        }
        .auto-style32 {
            height: 23px;
        }
        .auto-style33 {
            width: 100%;
            height: 42px;
        }
        .auto-style34 {
            height: 30px;
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="LinkButton1_Click">Log Out</asp:LinkButton>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30"></td>
                    <td class="auto-style13">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style7" colspan="2">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="White" Text="Image Upload"></asp:Label>
                                </td>
                                <td class="auto-style5" colspan="2"></td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Upload Image here"></asp:Label>
                                </td>
                                <td class="auto-style6" colspan="2">
                                    <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Black" BorderStyle="Dashed" ForeColor="Black" Width="216px" />
                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">
                                    <asp:Button ID="deletebtn" runat="server" Height="33px" Text="Delete" Width="96px" OnClick="deletebtn_Click" />
                                </td>
                                <td class="auto-style28">
                                    <asp:TextBox ID="DeleteBox" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style15">
                                    <asp:Button ID="SubmitBtn" runat="server" Height="33px" OnClick="SubmitBtn_Click" Text="Submit" Width="104px" />
                                </td>
                                <td class="auto-style5">
                                    <asp:Button ID="viewBtn" runat="server" Height="35px" OnClick="viewBtn_Click" Text="View Images" Width="117px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7" colspan="2">
                                    &nbsp;</td>
                                <td class="auto-style15">
                                    <asp:Label ID="ExLabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style31">
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
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style17">
                        <asp:DataList ID="viewImages1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="145px">
                            <ItemTemplate>
                                <table class="auto-style33">
                                    <tr>
                                        <td class="auto-style32">
                                            <table class="auto-style4">
                                                <tr>
                                                    <td class="auto-style34">
                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Image") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style34"> <image src="Images/<%#Eval("Image")%>" height ="150" width="180" /></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:LinkButton ID="DownloadLink" runat="server" Font-Bold="True" ForeColor="White" OnClick="DownloadLink_Click">Download</asp:LinkButton></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                               
                            </ItemTemplate>

                        </asp:DataList>
                        <br />
                    </td>
                    <td class="auto-style16">
                        <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Picture Found" Height="100px" ForeColor="Black">
                            <Columns>
                                <asp:ImageField>
                                </asp:ImageField>
                            </Columns>
                            <EmptyDataTemplate>
                                <asp:Image ID="Image1" runat="server" />
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <br />
                        <br />
                        <br />
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
