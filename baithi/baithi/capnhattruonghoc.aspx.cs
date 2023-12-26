using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baithi
{
    public partial class capnhattruonghoc : System.Web.UI.Page
    {
        public static string chuoiKN = "Data Source=v1zt\\SQLEXPRESS;Initial Catalog=QL_SINHVIEN;Integrated Security=True;";
        public static SqlConnection cn = new SqlConnection(chuoiKN);
        protected void Page_Load(object sender, EventArgs e)
        {
            Hienthi();
        }
        void ThucThi(string caulenh)
        {
            SqlCommand cm = new SqlCommand(caulenh, cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
        }
        void Hienthi()
        {
            try
            {
                string chuoiSQL = "SELECT * FROM tbl_truong";
                SqlDataAdapter da = new SqlDataAdapter(chuoiSQL, cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception)
            {
                lblThongbao.Text = "Lỗi kết nối";
            }
        }
        protected void btnThemClick(object sender, EventArgs e)
        {
            txtMaTruong.Text = "";
            txtTenTruong.Text = "";
        }
        protected void btnLuuClick(object sender, EventArgs e)
        {
            string chuoiSQL = "INSERT INTO tbl_truong values ('" + txtMaTruong.Text + "',N'" + txtTenTruong.Text + "')";
            ThucThi(chuoiSQL);
            Hienthi();
        }
        protected void btnSuaClick(object sender, EventArgs e)
        {
            string chuoiSQL = "UPDATE tbl_truong SET TenTruong=N'" + txtTenTruong.Text + "'where MaTruong = '" + txtMaTruong.Text + "'";
            ThucThi(chuoiSQL);
            Hienthi();
        }
        protected void btnXoaClick(object sender, EventArgs e)
        {
            string chuoiSQL = "DELETE tbl_truong where MaTruong='" + txtMaTruong.Text + "'";
            ThucThi(chuoiSQL);
            Hienthi();
            txtMaTruong.Text = "";
            txtTenTruong.Text = "";
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string chuoiSQL = "SELECT * FROM tbl_truong";
            SqlDataAdapter da = new SqlDataAdapter(chuoiSQL, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int dong = GridView1.SelectedIndex;
            int trang = GridView1.PageIndex;
            txtMaTruong.Text = dt.Rows[trang * 3 + dong][0].ToString();
            txtTenTruong.Text = dt.Rows[trang * 3 + dong][1].ToString();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
        }
    }
}