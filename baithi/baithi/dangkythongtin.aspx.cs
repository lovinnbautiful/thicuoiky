using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baithi
{
    public partial class dangkythongtin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangky_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblThongbao.Text = String.Format($"Bạn {txtHoten.Text} đăng ký thành công!!!<br/>Tên đăng nhập: {txtUser.Text}<br/>Năm sinh: {txtNamsinh.Text}<br/>Số điện thoại: {txtNumber.Text}<br/>Địa chỉ: {txtAddress.Text}<br/>Sở thích: {txtSothich.Text}<br/>");
            }
        }
    }
}