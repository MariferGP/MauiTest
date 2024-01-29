using MauiApp1.MVVM.Models;
using MauiApp1.MVVM.Views;
using System.Collections.ObjectModel;

namespace MauiApp1
{
    public partial class App : Application
    {
        // Token
        public static string gs_SelectedToken = "vE5fVF/38MWacEzutD7jYmqr2rijDxsaOC4JXkMQH/s=";

        // General catalogs
        public static ObservableCollection<st_ClientList> gst_ClientList { get; set; }
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new LoginView());
        }
    }
}
