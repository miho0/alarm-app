using AlarmApp.Model;
using AlarmApp.View;
using CommunityToolkit.Mvvm.ComponentModel;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlarmApp.ViewModel
{
    public partial class BaseViewModel : ObservableObject
    {
        public ObservableCollection<MorningTask> Tasks { get; set; } = new();
        public ObservableCollection<Routine> Routines { get; set; } = new();

        [ObservableProperty]
        public string title;

        [ObservableProperty]
        public bool isBusy;

        [ObservableProperty]
        public bool noTasks;

        [ObservableProperty]
        public bool noRoutines;

        public BaseViewModel()
        {
            Title = "";
            IsBusy = false;
        }
        public void GetTasks()
        {
            try
            {
                IsBusy = true;
                var tasksJSON = Preferences.Default.Get("tasks", "");
                Tasks = JsonConvert.DeserializeObject<ObservableCollection<MorningTask>>(tasksJSON);
            }
            catch
            {
                NoTasks = true;
            }
            if (Tasks is null || Tasks.Count == 0)
            {
                NoTasks = true;
            }
            isBusy = false;
        }

        public void GetRoutines()
        {
            try
            {
                IsBusy = true;
                var routinesJSON = Preferences.Default.Get("routines", "");
                Routines = JsonConvert.DeserializeObject<ObservableCollection<Routine>>(routinesJSON);
            }
            catch
            {
                NoRoutines = true;
            }
            if (Routines is null || Routines.Count == 0)
            {
                NoRoutines = true;
            }
            isBusy = false;
        }
    }
}
