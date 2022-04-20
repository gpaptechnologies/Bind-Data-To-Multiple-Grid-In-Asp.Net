<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiGrid.aspx.cs" Inherits="MultiGrid.MultiGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #00FF00;
        }
    </style>
</head>
<body style="font-weight: 700">
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td style="text-align: center; font-size: x-large" class="auto-style1">Employee Master
                    </td>
                    <td></td>
                    <td style="text-align: center; font-size: x-large; color: #FFFFCC; background-color: #003300;">Department Master
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            <Columns>
                                <asp:BoundField HeaderText="#" DataField="RowNumber" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField HeaderText="NAME" DataField="NAME" />
                                <asp:BoundField HeaderText="DESIGNATION" DataField="DESIGNATION" />
                                <asp:BoundField HeaderText="DEPARTMENT" DataField="DEPTNAME" />
                                <asp:BoundField HeaderText="SALARY" DataField="SALARY" ItemStyle-HorizontalAlign="Right" />
                                <asp:BoundField HeaderText="STATE" DataField="STATE" />
                                <asp:BoundField HeaderText="COUNTRY" DataField="COUNTRY" ItemStyle-HorizontalAlign="Center" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td></td>
                    <td style="vertical-align: top">
                        <asp:GridView ID="gv2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                            <Columns>
                                <asp:BoundField HeaderText="#" DataField="RowNumber" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField HeaderText="DEPARTMENT" DataField="DeptName" />
                                <asp:BoundField HeaderText="DEPT CODE" DataField="DeptCode" ItemStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
