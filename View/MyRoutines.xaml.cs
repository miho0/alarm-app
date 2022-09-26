using AlarmApp.ViewModel;

namespace AlarmApp.View;

public partial class MyRoutines : ContentPage
{
	public MyRoutines(RoutinesViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
    public void OpenPopup(object sender, EventArgs args)
    {
        addTaskPopup.IsOpen = true;
    }
}