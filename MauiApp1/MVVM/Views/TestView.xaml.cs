namespace MauiApp1.MVVM.Views;

public partial class TestView : ContentPage
{
	public TestView()
	{
		InitializeComponent();
	}

    //CLIENT 
    private void ue_ClientEntry_TextChanged(object sender, TextChangedEventArgs e)
    {
        // Client AutoComplete text changed event
        uo_client.ue_OnTextChanged(sender, e);

    }
    private void ue_ClientEntry_OnSuggestionItemSelected(object sender, Telerik.Maui.Controls.AutoComplete.SuggestionItemSelectedEventArgs e)
    {
        // Client AutoComplete item selected event
        uo_client.ue_OnSuggestionItemSelected(sender, e);
    }
}