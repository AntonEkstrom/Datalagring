using Case_Management_System.Data;
using Case_Management_System.Models;
using Case_Management_System.Utilities;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Case_Management_System.Views
{
    public partial class UserView : UserControl
    {
        private readonly IUserUtility userUtility = new UserUtility();

        public UserView()
        {
            InitializeComponent();
            LoadGrid();
        }

      

        public void LoadGrid()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Datalagringstenta\Datalagring\Case_Management_System\Data\sql_database.mdf;Integrated Security=True;Connect Timeout=30");

            SqlCommand cmd = new SqlCommand("SELECT * FROM Users ORDER BY Id DESC", con);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            dt.Load(sdr);
            con.Close();
            datagrid.ItemsSource = dt.DefaultView;
        }

        private void AddChange_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Datalagringstenta\Datalagring\Case_Management_System\Data\sql_database.mdf;Integrated Security=True;Connect Timeout=30");

            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Users SET FirstName = '"+AddFirstName.Text+"', LastName = '"+AddLastName.Text+"', Email = '"+AddEmail.Text+"', PhoneNumber = '"+AddPhoneNumber.Text+"', StreetName = '"+AddStreetName.Text+"', PostalCode = '"+AddPostalCode.Text+"', City = '"+AddCity.Text+"', Country = '"+AddCountry.Text+"' WHERE Id = '"+AddId.Text+"' ", con); 

            cmd.ExecuteNonQuery();
            con.Close();
            LoadGrid();
        }

        private void AddDelete_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Datalagringstenta\Datalagring\Case_Management_System\Data\sql_database.mdf;Integrated Security=True;Connect Timeout=30");

            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Users WHERE Id = '"+AddId.Text+"' ", con);

            cmd.ExecuteNonQuery();
            con.Close();
            LoadGrid();

        }
    }
}
