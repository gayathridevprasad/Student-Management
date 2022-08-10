using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace SIS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connetionString;

        SqlConnection cnn;

        
        protected void Page_Load(object sender, EventArgs e)
        {

            connetionString = @"Data Source=DESKTOP-0M7FI0U\SQLEXPRESS;Initial Catalog=Student;Integrated Security=True";
            cnn = new SqlConnection(connetionString);

            cnn.Open();

            
            /*command.dispose();*/
            //cnn.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text!="" && TextBox2.Text!="" && TextBox3.Text!="")
            {
                SqlCommand command;
                command = new SqlCommand("insert into stud_basic values('"+TextBox1.Text+"','"+TextBox2.Text+"','" + TextBox3.Text + "')", cnn);
                command.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                Response.Write("Inserted..");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select rollno,name from stud_basic";

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + "</br>";
            }

            Response.Write(Output);
            dataReader.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand command;
            //SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "update stud_basic set name='"+TextBox2.Text+ "', gender='" + TextBox3.Text + "'  where rollno='" + TextBox1.Text+"'";

            command = new SqlCommand(sql, cnn);

            command.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Response.Write("Updated..");
            //dataReader.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand command;
            //SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "delete from stud_basic where rollno='" + TextBox1.Text + "'";

            command = new SqlCommand(sql, cnn);

            command.ExecuteNonQuery();
            TextBox1.Text = "";
            
            Response.Write("Record Deleted...");
            //dataReader.Close();
        }
    }
}