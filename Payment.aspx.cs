using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into Payment(USERNAME,EMAIL_ID,NAME_ON_CREDIT_DEBIT_CARD,NO_ON_CREDIT_DEBIT_CARD,CVV,EXPIRATION_DATE,MOBILE_NO,CITY,ZIP)Values (@USERNAME,@EMAIL_ID,@NAME_ON_CREDIT_DEBIT_CARD,@NO_ON_CREDIT_DEBIT_CARD,@CVV,@EXPIRATION_DATE,@MOBILE_NO,@CITY,@ZIP)", con);

        cmd.Parameters.AddWithValue("@USERNAME", TextBoxUserName.Text);
        cmd.Parameters.AddWithValue("@EMAIL_ID", TextBoxEmailId.Text);
        cmd.Parameters.AddWithValue("@NAME_ON_CREDIT_DEBIT_CARD", TextBoxNameOnCredit.Text);
        cmd.Parameters.AddWithValue("@NO_ON_CREDIT_DEBIT_CARD", TextBoxCreditCardNo.Text);
        cmd.Parameters.AddWithValue("@CVV", TextBoxCVV.Text);
        cmd.Parameters.AddWithValue("@EXPIRATION_DATE", TextBoxExpirationDate.Text);
        cmd.Parameters.AddWithValue("@MOBILE_NO", TextBoxMobileNo.Text);
        cmd.Parameters.AddWithValue("@CITY", TextBoxCity.Text);
        cmd.Parameters.AddWithValue("@ZIP", TextBoxZip.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Response.Redirect("AfterPayment.aspx");
    }
    protected void TextBoxEmailId_TextChanged(object sender, EventArgs e)
    {

    }
}