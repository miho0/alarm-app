using AlarmApp.Model;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DevExpress.Maui.Charts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlarmApp.ViewModel
{
    public partial class HomeViewModel: BaseViewModel
    {
        [ObservableProperty]
        public DateTime timeToBeAt;

        [ObservableProperty]
        public Routine selectedRoutine;

        public HomeViewModel()
        {
            Title = "Home";
            GetRoutines();
        }

        [RelayCommand]
        public async void Calculate()
        {
            var timeInSeconds = TimeToBeAt.Hour * 3600 + TimeToBeAt.Minute * 60;
            var routineSeconds = SelectedRoutine.TotalTime;
            var total = 0;

            if (timeInSeconds - routineSeconds >= 0)
            {
                total = timeInSeconds - routineSeconds;
            } else
            {
                var diff = routineSeconds - timeInSeconds;
                total = (23 * 3600 + 59 * 60 + 60) - diff;
            }
            var hours = total / 3600;
            var mins = (total - hours * 3600) / 60;
            var secs = (total - hours * 3600 - mins * 60);

            await Shell.Current.DisplayAlert("Done",
                                             $"You need to start at {(hours < 10 ? '0' + hours.ToString() : hours)}:{(mins < 10 ? '0' + mins.ToString() : mins)}:{(secs < 10 ? '0' + secs.ToString() : secs)} to finish your routine and get to your destination on time.", 
                                              "OK");
        }
    }
}
