using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AdmissionProcessiongApp
{
    public partial class AdmissionProcessing : Form
    {
        public AdmissionProcessing()
        {
            InitializeComponent();
        }

         string connectionstring = @"server =USER;database=DB_AdmissionProcessingSystem;integrated security=true";
         int admissionID;
        private void insertButton_Click(object sender, EventArgs e)
        {
             admissionID = Convert.ToInt16(idTextBox.Text);
            int hscRoll = Convert.ToInt16(hscRollTextBox.Text);
            double hscGpa = Convert.ToDouble(hscGpaTextBox.Text);
            int sscRoll = Convert.ToInt16(sscRollTextBox.Text);
            double sscGpa = Convert.ToDouble(sscGpaTextBox.Text);
            int meritOrder = Convert.ToInt16(meritOrderTextBox.Text);

            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();

            string query =
                string.Format(@"insert into Table_AdmissionProcessing(AdmissionID,HscRollNo,HscGpa,SscRollNo,SscGpa,MeritOrder)
                                 values('{0}','{1}','{2}','{3}','{4}','{5}')", admissionID, hscRoll, hscGpa, sscRoll,
                    sscGpa, meritOrder);
            SqlCommand aCommand = new SqlCommand(query, aConnection);
            MessageBox.Show("Data has been inserted");
            idTextBox.Text = "";
            hscRollTextBox.Text = "";
            hscGpaTextBox.Text = "";
            sscRollTextBox.Text = "";
            sscGpaTextBox.Text = "";
            meritOrderTextBox.Text = "";
            aCommand.ExecuteNonQuery();
            aConnection.Close();
        }

        private void displsyButton_Click(object sender, EventArgs e)
        {
            dataGridView.Rows.Clear();
            dataGridView.Refresh();
            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();
            string tableSql = "SELECT * FROM Table_AdmissionProcessing";
            SqlCommand selectAllTableSqlCommand = new SqlCommand(tableSql, aConnection);
            SqlDataReader tableReader = selectAllTableSqlCommand.ExecuteReader();

            if (tableReader != null)
                while (tableReader.Read())
                {
                    dataGridView.Rows.Add(tableReader[0].ToString(), tableReader[1].ToString(),
                        tableReader[2].ToString(), tableReader[3].ToString(),
                        tableReader[4].ToString(), tableReader[5].ToString());
                }
            tableReader.Close();
            aConnection.Close();

        }

        private void searchButton_Click(object sender, EventArgs e)
        {
            dataGridView.Rows.Clear();
            dataGridView.Refresh();
           
            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();
            admissionID = Convert.ToInt16(searchTextBox.Text);


            SqlCommand searchByAdmissionID =
                new SqlCommand("SELECT * FROM Table_AdmissionProcessing WHERE AdmissionID like '" + admissionID + "'", aConnection);

            SqlDataReader tableReader = searchByAdmissionID.ExecuteReader();
            if (tableReader != null)
            {
                bool check = true;
                while (tableReader.Read())
                {
                    dataGridView.Rows.Add(tableReader[0].ToString(), tableReader[1].ToString(),
                        tableReader[2].ToString(), tableReader[3].ToString(),
                        tableReader[4].ToString(), tableReader[5].ToString());
                    check = false;
                }
                if (check)
                {
                    MessageBox.Show("Your desired admission ID information is not present in the database. ");
                }
                tableReader.Close();
                aConnection.Close();
            }
        }
    }
}
