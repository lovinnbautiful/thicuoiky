<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="dangkythongtin.aspx.cs" Inherits="baithi.dangkythongtin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><asp:Label ID="Label1" runat="server" Text="Đăng ký thông tin"></asp:Label></div>
<table>
    <tr>
        <td><asp:Label  runat="server" Text="Họ tên"></asp:Label></td>
        <td><asp:TextBox ID="txtHoten" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="rfvHoten" runat="server" ErrorMessage="Nhập họ tên" ControlToValidate="txtHoten"  ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td><asp:Label  runat="server" Text="Tên đăng nhập"></asp:Label></td>
        <td><asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="rfvUser" runat="server" ErrorMessage="Nhập tên đăng nhập" ControlToValidate="txtUser"  ForeColor="Red"></asp:RequiredFieldValidator></td>

    </tr>
    <tr>
        <td><asp:Label  runat="server" Text="Mật khẩu"></asp:Label></td>
        <td><asp:TextBox ID="txtPassword" runat="server" Type="Password"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Nhập mật khẩu" ControlToValidate="txtPassword"  ForeColor="Red"></asp:RequiredFieldValidator></td>

    </tr>
    <tr>
        <td><asp:Label  runat="server" Text="Nhập lại mật khẩu"></asp:Label> </td>
        <td><asp:TextBox ID="txtConfirm" runat="server" Type="Password"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ErrorMessage="Nhập lại mật khẩu" ControlToValidate="txtPassword"  ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvConfirm" runat="server" ErrorMessage="Mật khẩu không khớp" ForeColor="Red" ControlToValidate="txtConfirm" ControlToCompare="txtPassword"></asp:CompareValidator></td>

    </tr>
    <tr>
        <td>Email</td>
        <td><asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox></td>
        <td><asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email khong chinh xac" ControlToValidate="txtEmail" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" ForeColor="Red"></asp:RegularExpressionValidator></td>
    
    </tr> 
    <tr>
        <td><asp:Label  runat="server" Text="Năm sinh"></asp:Label></td>
        <td><asp:TextBox ID="txtNamsinh" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="rfvNamsinh" runat="server" ErrorMessage="Nhập năm sinh" ControlToValidate="txtNamsinh"  ForeColor="Red"></asp:RequiredFieldValidator></td>

    </tr>
    <tr>
        <td><asp:Label  runat="server" Text="Số điện thoại"></asp:Label></td>
        <td><asp:TextBox ID="txtNumber" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="rfvNumber" runat="server" ErrorMessage="Nhập số điện thoại" ControlToValidate="txtNumber"  ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

    </tr>
    <tr>
        <td><asp:Label  runat="server" Text="Địa chỉ"></asp:Label></td>
        <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Nhập địa chỉ" ControlToValidate="txtAddress"  ForeColor="Red"></asp:RequiredFieldValidator></td>

    </tr>
    <tr>
        <td><asp:Label  runat="server" Text="Sở thích"></asp:Label></td>
        <td><asp:TextBox ID="txtSothich" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="rfvSothich" runat="server" ErrorMessage="NHập sở thích" ControlToValidate="txtSothich"  ForeColor="Red"></asp:RequiredFieldValidator></td>

    </tr>
    <tr style="height:200px">
        <td colspan="3">
            <asp:Label ID="lblThongbao" runat="server" ></asp:Label>
         </td>
    </tr>
    
</table>
    <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click" />
</asp:Content>
