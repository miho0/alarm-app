using AlarmApp.View;
using AlarmApp.ViewModel;
using DevExpress.Maui;
using Microsoft.Maui;
using Microsoft.Maui.Controls.Compatibility;
using Microsoft.Maui.Controls.Compatibility.Hosting;
using Microsoft.Maui.Controls.Hosting;
using Microsoft.Maui.Hosting;

namespace AlarmApp
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseDevExpress()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("univia-pro-regular.ttf", "Univia-Pro");
                    fonts.AddFont("roboto-bold.ttf", "Roboto-Bold");
                    fonts.AddFont("roboto-regular.ttf", "Roboto");
                })
                .UseMauiCompatibility();

            builder.Services.AddSingleton<MyTasks>();
            builder.Services.AddSingleton<HomePage>();
            builder.Services.AddSingleton<MyRoutines>();

            builder.Services.AddSingleton<TaskViewModel>();
            builder.Services.AddSingleton<BaseViewModel>();
            builder.Services.AddSingleton<RoutinesViewModel>();
            builder.Services.AddSingleton<HomeViewModel>();

            builder.Services.AddSingleton<TimeService>();

            return builder.Build();
        }
    }
}