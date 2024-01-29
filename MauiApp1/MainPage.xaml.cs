using MauiApp1.MVVM.Models;
using Newtonsoft.Json;
using System.Collections.ObjectModel;

namespace MauiApp1
{
    public partial class MainPage : ContentPage
    {
        readonly string is_BaseUrl = "https://assemble.mierp.mx:9500/AssembleMobile";

        public MainPage()
        {
            InitializeComponent();
        }

        public async void OnBtnClicked(object sender, EventArgs e)
        {
            App.gst_ClientList = await this.of_GetClientList();
        }
        public async Task<ObservableCollection<st_ClientList>> of_GetClientList()
        {
            ObservableCollection<st_ClientList> lst_ClientList = null;

            HttpClient lnvo_client;
            var lnvo_LH_handler = new HttpClientHandler();
            lnvo_LH_handler.ServerCertificateCustomValidationCallback += (sender, cert, chain, sslPolicyErrors) => true;
            lnvo_client = new HttpClient(lnvo_LH_handler);

            // Define API URL
            string ls_apiUrl = $"{is_BaseUrl}";

            // Add the custom headers
            lnvo_client.DefaultRequestHeaders.Add("AssembleToken", $"{App.gs_SelectedToken}");
            lnvo_client.DefaultRequestHeaders.Add("Modulo", "SYS");
            lnvo_client.DefaultRequestHeaders.Add("Reporte", "SYS_LIST_CLIENTES");

            try
            {
                // Send the HTTP request
                HttpResponseMessage lnvo_response = await lnvo_client.GetAsync(ls_apiUrl);

                // Check for connectivity or server issues
                if (!lnvo_response.IsSuccessStatusCode)
                {
                    string ls_errorMessage = $"Error: {lnvo_response.StatusCode} - {lnvo_response.ReasonPhrase}";
                    await Application.Current.MainPage.DisplayAlert("Error", ls_errorMessage, "OK");
                    return null;
                }

                string ls_responseBody = await lnvo_response.Content.ReadAsStringAsync();

                if (string.IsNullOrEmpty(ls_responseBody) || ls_responseBody.Contains("Bad Request"))
                {
                    return null;
                }
                else
                {
                    // Process the API response data here
                    Console.WriteLine(ls_responseBody);

                    // Save the responseBody as an observable collection
                    lst_ClientList = JsonConvert.DeserializeObject<ObservableCollection<st_ClientList>>(ls_responseBody);
                    return lst_ClientList;
                }
            }
            catch (HttpRequestException e)
            {
                await Application.Current.MainPage.DisplayAlert("HTTP Request Error", e.Message, "OK");
            }
            catch (TaskCanceledException e)
            {
                await Application.Current.MainPage.DisplayAlert("Request Timeout", e.Message, "OK");
            }
            catch (Exception e)
            {
                await Application.Current.MainPage.DisplayAlert("Unexpected Error", e.Message, "OK");
            }

            return null;
        }
    }

}
