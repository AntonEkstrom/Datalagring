using Case_Management_System.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Case_Management_System.Models.ViewModels
{
    internal class MainViewModel : ObservableObject
    {
        private object _currentView;

        public MainViewModel()
        {
            CaseRegisterViewModel = new CaseRegisterViewModel();
            CaseViewModel = new CaseViewModel();
            UserRegisterViewModel = new UserRegisterViewModel();
            UserViewModel = new UserViewModel();
            MainPageViewModel = new MainPageViewModel();

            CurrentView = MainPageViewModel;

            CaseRegisterViewCommand = new RelayCommand(x => CurrentView = CaseRegisterViewModel);
            CaseViewCommand = new RelayCommand(x => CurrentView = CaseViewModel);
            UserRegisterViewCommand = new RelayCommand(x => CurrentView = UserRegisterViewModel);
            UserViewCommand = new RelayCommand(x => CurrentView = UserViewModel);
            MainPageCommand = new RelayCommand(x => CurrentView = MainPageViewModel);
        }

        public object CurrentView
        {
            get { return _currentView; }
            set
            {
                _currentView = value;
                OnPropertyChanged();
            }
        }

        public RelayCommand CaseRegisterViewCommand { get; set; }
        public CaseRegisterViewModel CaseRegisterViewModel { get; set; }


        public RelayCommand CaseViewCommand { get; set; }
        public CaseViewModel CaseViewModel { get; set; }


        public RelayCommand UserRegisterViewCommand { get; set; }
        public UserRegisterViewModel UserRegisterViewModel { get; set; }


        public RelayCommand UserViewCommand { get; set; }
        public UserViewModel UserViewModel { get; set; }

        public RelayCommand MainPageCommand { get; set; }
        public MainPageViewModel MainPageViewModel { get; set; }
    }
}

