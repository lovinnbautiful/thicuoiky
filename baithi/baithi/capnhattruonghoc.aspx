<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="capnhattruonghoc.aspx.cs" Inherits="baithi.capnhattruonghoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table >
     <tr>
         <td colspan="2">CẬP NHẬT TRƯỜNG</td>
     </tr>
     <tr>
         <td>Mã trường:</td>
         <td><asp:TextBox ID="txtMaTruong" runat="server" Width="100%"></asp:TextBox></td>
     </tr>
     <tr>
         <td>Tên trường:</td>
         <td><asp:TextBox ID="txtTenTruong" runat="server" Width="100%"></asp:TextBox></td>
     </tr>
 </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="None" AllowPaging="True" PageSize="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" HorizontalAlign="Center" BackColor="White">
        <AlternatingRowStyle BackColor="White" />
     <Columns>
         <asp:BoundField DataField="MaTruong" HeaderText="Mã trường" />
         <asp:BoundField DataField="TenTruong" HeaderText="Tên trường" />
         <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
             </Columns>
                 <EditRowStyle BackColor="#2461BF" />
                 <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#0066CC" ForeColor="White" />
                 <RowStyle BackColor="#EFF3FB" />
                 <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F5F7FB" />
                 <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                 <SortedDescendingCellStyle BackColor="#E9EBEF" />
                 <SortedDescendingHeaderStyle BackColor="#4870BE" />
         </asp:GridView>
      <div>
      <asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label>
 </div>
 <div>
         <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThemClick" />
         <asp:Button ID="btnLuu" runat="server" Text="Lưu"  OnClick="btnLuuClick"/>
         <asp:Button ID="btnSua" runat="server" Text="Sửa"  OnClick="btnSuaClick"/>
         <asp:Button ID="btnXoa" runat="server" Text="Xóa"  OnClick="btnXoaClick"/>
 </div>
</asp:Content>
