using AlarmApp.ViewModel;

namespace AlarmApp.View;

public partial class MyTasks : ContentPage
{
	private TaskViewModel ViewModel;
	public MyTasks(TaskViewModel viewModel)
	{		
		InitializeComponent();
		BindingContext = viewModel;
		ViewModel = viewModel;
	}

	public void OpenPopup(object sender, EventArgs args)
	{
		addTaskPopup.IsOpen = true;
	}

    public void ClosePopup(object sender, EventArgs args)
    {
        addTaskPopup.IsOpen = false;
    }

	public void OnClosed(object sender, EventArgs args)
	{
		ViewModel.IsEditing = false;
		ViewModel.PopupButtonText = "Add";
	}
}