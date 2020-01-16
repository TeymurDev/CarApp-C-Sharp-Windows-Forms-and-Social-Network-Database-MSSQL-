using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CarApp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["maindb"].ConnectionString;


            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                string command = "SELECT * FROM MARKA";

                using (SqlCommand sqlCommand = new SqlCommand(command, sqlConn))
                {
                    sqlConn.Open();

                    using (SqlDataReader sqlDataReader = sqlCommand.ExecuteReader())
                    {
                        while (sqlDataReader.Read())
                        {
                            ComboItem comboitem = new ComboItem()
                            {
                                Id = sqlDataReader.GetInt32(0),
                                Name = sqlDataReader.GetString(1)
                            };
                            cmbMarka.Items.Add(comboitem);
                        }
                    }


                }
            }
        }

        private void cmbMarka_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbModel.Items.Clear();

            ComboItem modeller = (ComboItem)cmbMarka.SelectedItem;

            string connString = ConfigurationManager.ConnectionStrings["maindb"].ConnectionString;

            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                string command = $"SELECT * FROM Model where MarkaId = {modeller.Id}";

                using (SqlCommand sqlCommand = new SqlCommand(command, sqlConn))
                {
                    sqlConn.Open();

                    using (SqlDataReader sqlDataReader = sqlCommand.ExecuteReader())
                    {
                        while (sqlDataReader.Read())
                        {
                            cmbModel.Items.Add(sqlDataReader["Name"]);
                        }
                    }


                }
            }

        }
    }
}
