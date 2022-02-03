using Case_Management_System.Models;
using Case_Management_System.Utilities;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
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

namespace Case_Management_System.Views
{
    public partial class CaseView : UserControl
    {
        private readonly ICaseUtility caseUtility = new CaseUtility();
        private readonly IUserUtility userUtility = new UserUtility();
        private readonly IStatusUtility statusUtility = new StatusUtility();

        public CaseView()
        {
            InitializeComponent();
            LoadGrid();
            GetUser();
            GetStatus();

            AddUser.SelectedValuePath = "Key";
            AddUser.DisplayMemberPath = "Value";

            AddStatus.SelectedValuePath = "Key";
            AddStatus.DisplayMemberPath = "Value";
        }

    

        public void LoadGrid()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Datalagringstenta\Datalagring\Case_Management_System\Data\sql_database.mdf;Integrated Security=True;Connect Timeout=30");
        
            SqlCommand cmd = new SqlCommand("SELECT * FROM Cases INNER JOIN Users ON Cases.UserId = Users.Id INNER JOIN Statuses ON Cases.StatusId = Statuses.Id ORDER BY Statuses.Id, Cases.DateTime DESC", con);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            dt.Load(sdr);
            con.Close();
            datagrid.ItemsSource = dt.DefaultView;
        
        }

        private void AddDelete_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Datalagringstenta\Datalagring\Case_Management_System\Data\sql_database.mdf;Integrated Security=True;Connect Timeout=30");

            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Cases WHERE Id = '"+AddId.Text+"' ", con);

            cmd.ExecuteNonQuery();
            con.Close();
            LoadGrid();
        }

        private void AddUpdate_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\Datalagringstenta\Datalagring\Case_Management_System\Data\sql_database.mdf;Integrated Security=True;Connect Timeout=30");

            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Cases SET HeadLine = '" + AddHeadLine.Text + "', Description = '" + AddDescription.Text + "', DateTimeChanged = '" + DateTime.Now + "', UserId = '" + (int)AddUser.SelectedValue + "', StatusId = '" + (int)AddStatus.SelectedValue + "' WHERE Id = '" + AddId.Text + "' ", con);

            cmd.ExecuteNonQuery();
            con.Close();
            LoadGrid();
        }

        private void GetUser()
        {
            AddUser.Items.Clear();
            foreach (var user in userUtility.GetAllUsers())
                AddUser.Items.Add(new KeyValuePair<int, string>(user.Id, user.FullName));
        }

        private void GetStatus()
        {
            AddStatus.Items.Clear();
            foreach (var status in statusUtility.GetAllStatus())
                AddStatus.Items.Add(new KeyValuePair<int, string>(status.Id, status.StatusName));
        }



    }
}
 