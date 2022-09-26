using AlarmApp.View;

namespace AlarmApp;

public partial class AppShell : Shell
{
	public AppShell()
	{
		InitializeComponent();
		Routing.RegisterRoute("routines", typeof(MyRoutines));
	}
}