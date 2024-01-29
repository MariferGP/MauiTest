using MauiApp1.MVVM.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Telerik.Maui.Controls;

namespace MauiApp1.Controls
{
    public class ac_Client: RadAutoComplete
    {
        public ObservableCollection<st_ClientList> ist_ClientList { get; set; }
        public st_ClientList ist_item { get; set; }
        public string is_currentText { get; set; }
        public bool is_RemoteSearchRunning { get; set; }
        private bool ib_Selected { get; set; }
        public ac_Client()
        {
            // Custom control design
            HeightRequest = 40;
            BorderThickness = 0;
            BorderBrush = null;
            FocusedBorderBrush = null;
            Placeholder = "Seleccionar cliente";
            FontSize = 14;
            CompletionMode = AutoCompleteCompletionMode.Contains;
            SuggestMode = AutoCompleteSuggestMode.Suggest;
            SuggestionViewHeight = 200;
            this.IsClearButtonVisible = true;


            // Retrieve function
            this.of_Retrieve();

            //Set binding path (search option)
            this.TextSearchPath = "s_DenominacionSocial";
        }
        public void ue_OnTextChanged(object sender, Microsoft.Maui.Controls.TextChangedEventArgs e)
        {
            if (ib_Selected == false)
            {
                ist_item = new();
                this.ShowSuggestionView = true;
            }

            var lnvo_autoComplete = (RadAutoComplete)sender;
            lnvo_autoComplete.ItemsSource = null;

            this.is_currentText = e.NewTextValue ?? "";

            if (this.is_currentText.Length >= lnvo_autoComplete.SearchThreshold && !this.is_RemoteSearchRunning)
            {
                this.is_RemoteSearchRunning = true;
                Dispatcher.StartTimer(TimeSpan.FromMilliseconds(1500), () =>
                {
                    this.is_RemoteSearchRunning = false;
                    string ls_searchText = this.is_currentText.ToLower();
                    lnvo_autoComplete.ItemsSource = ist_ClientList.Where(i => i.s_DenominacionSocial.ToLower().Contains(ls_searchText.ToLower()));
                    return false;
                });
            }
            ib_Selected = false;
        }
        public void ue_OnSuggestionItemSelected(object sender, Telerik.Maui.Controls.AutoComplete.SuggestionItemSelectedEventArgs e)
        {
            ib_Selected = true;
            ist_item = e.DataItem as st_ClientList;
            //Application.Current.MainPage.DisplayAlert("Código de Cliente", ist_item.i_Cliente.ToString(), "OK");
            this.ShowSuggestionView = false;
        }

        public void of_Retrieve()
        {
            ist_ClientList = new();

            foreach (var lnvo_item in App.gst_ClientList)
            {
                var lnvo_itemCopy = new st_ClientList()
                {
                    i_Cliente = lnvo_item.i_Cliente,
                    s_DenominacionSocial = lnvo_item.s_DenominacionSocial,
                };
                ist_ClientList.Add(lnvo_itemCopy);
            }
            return;
        }
        public void of_Clear()
        {
            this.ist_ClientList = new();
            this.ist_item = new();
            this.is_currentText = default(string);
            this.is_RemoteSearchRunning = default(bool);
            this.ib_Selected = default(bool);
            this.Text = string.Empty;
            this.IsEnabled = true;
        }
    }
}
