using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Movieupdation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into Payment(MOVIE_NAME,STATE,CITY,THEATER_NAME,DATE,TIME,COMBO_TYPE,NET_PAYABLE)Values (@MOVIE_NAME,@STATE,@CITY,@THEATER_NAME,@DATE,@TIME,@COMBO_TYPE,@NET_PAYABLE)", con);

        cmd.Parameters.AddWithValue("@SELECT_STATE", DDlStates.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@CITY", DDLCity.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@THEATER_NAME", TextBoxTheaterName.Text);
        cmd.Parameters.AddWithValue("@TIME", DDLTime.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@SCREEN_NO", DDLScreenno.SelectedItem.Value);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
    }
}