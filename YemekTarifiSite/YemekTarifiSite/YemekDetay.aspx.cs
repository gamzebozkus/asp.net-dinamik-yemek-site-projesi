using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";//1-başlangıçta boş bir null degerinde yemekid tanımladık.
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];//2-formdan gelen yemekid yi tanımladığımız değişken içine atadık
            SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where yemekid=@p1", bgl.baglanti());//3-burada da oluşturduğumuz yemekid yi sql deki yemekid ile ilişkilendirdik
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekid));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())//dr nesnemiz okuma işlemi yaptığı müddetçe dr den gelen 0. parametreyi yazsın (0.parametremiz de 16.satırda yazan sql sorgusundaki YemekAd'dır.)
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //yorumları listeleme
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", Convert.ToInt32(yemekid));
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}