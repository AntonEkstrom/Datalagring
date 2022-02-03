using Case_Management_System.Data;
using Case_Management_System.Utilities;
using Case_Management_System.Models;
using System;
using System.Collections.Generic;
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
using Microsoft.Data.SqlClient;

namespace Case_Management_System.Views
{
    public partial class MainPageView : UserControl
    {
        private readonly ICaseUtility caseUtility = new CaseUtility();
        private readonly IUserUtility userUtility = new UserUtility();
        private readonly IStatusUtility statusUtility = new StatusUtility();

        public MainPageView()
        {
            InitializeComponent();
            LoadUsers();
            LoadCases();
        }

        public void LoadCases()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Datalagringstenta\Datalagring\Case_Management_System\Data\sql_database.mdf;Integrated Security=True;Connect Timeout=30");

            SqlCommand cmd = new SqlCommand("SELECT TOP 10 * FROM Cases INNER JOIN Users ON Cases.UserId = Users.Id INNER JOIN Statuses ON Cases.StatusId = Statuses.Id ORDER BY Statuses.Id, Cases.DateTime DESC", con);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            dt.Load(sdr);
            con.Close();
            datagrid1.ItemsSource = dt.DefaultView;
        }


        public void LoadUsers()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Datalagringstenta\Datalagring\Case_Management_System\Data\sql_database.mdf;Integrated Security=True;Connect Timeout=30");

            SqlCommand cmd = new SqlCommand("SELECT TOP 10 * FROM Users ORDER BY Id DESC", con);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            dt.Load(sdr);
            con.Close();
            datagrid2.ItemsSource = dt.DefaultView;
        }
    }
    
}
