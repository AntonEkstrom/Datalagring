using Case_Management_System.Utilities;
using System;
using System.Collections.Generic;
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
    public partial class UserRegisterView : UserControl
    {
        private readonly UserUtility userUtility = new UserUtility();

        public UserRegisterView()
        {
            InitializeComponent();
            ClearForms();
        }

        private void AddSubmit_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(AddFirstName.Text) &&
               !string.IsNullOrEmpty(AddLastName.Text) &&
               !string.IsNullOrEmpty(AddEmail.Text) &&
               !string.IsNullOrEmpty(AddPhone.Text) &&
               !string.IsNullOrEmpty(AddStreetName.Text) &&
               !string.IsNullOrEmpty(AddPostalCode.Text) &&
               !string.IsNullOrEmpty(AddCity.Text) &&
               !string.IsNullOrEmpty(AddCountry.Text));
            {
                if (userUtility.CreateUser(AddFirstName.Text, AddLastName.Text, AddEmail.Text, AddPhone.Text, AddStreetName.Text, AddPostalCode.Text, AddCity.Text, AddCountry.Text))
                {
                    AddSucess.Content = "You've successfully Registered a User!";
                    ClearForms();
                }

                else
                    AddError.Content = "A User with the same Email already exist!\n" +
                                        "Or you haven't filled in all the fields.\n\n" +
                                        "Try again!";
                ClearForms();
            }
        }

        private void ClearForms()
        {
            AddFirstName.Text = "";
            AddLastName.Text =  "";
            AddEmail.Text = "";
            AddPhone.Text = "";
            AddStreetName.Text = "";
            AddPostalCode.Text = "";
            AddCity.Text = "";
            AddCountry.Text = "";
        }
    }
}
