using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

using AlarmApp.Model;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DevExpress.Maui.Scheduler.Internal;
using Newtonsoft.Json;

namespace AlarmApp.ViewModel
{
    public partial class RoutinesViewModel: BaseViewModel
    {
        [ObservableProperty]
        public string name;

        [ObservableProperty]
        public MorningTask adding;

        [ObservableProperty]
        public bool isRefreshing;

        public RoutinesViewModel()
        {
            Title = "My Routines";
            GetRoutines();
            GetTasks();
            ResetActive();
        }

        [RelayCommand]
        public async void AddRoutine()
        {
            if (Name is null)
            {
                await Shell.Current.DisplayAlert("Error", "You have to specify a name.", "OK");
                return;
            }

            if (Routines is null)
            {
                Routines = new();
            }

            Routines.Add(new Routine(Name, false));

            Preferences.Default.Remove("routines");
            Preferences.Default.Set("routines", JsonConvert.SerializeObject(Routines));
        }

        [RelayCommand]
        public async void AddTask(Routine routine)
        {
            if (Adding is null)
            {
                await Shell.Current.DisplayAlert("Error", "You must select a task", "OK");
                return;
            }
            routine.Tasks.Add(new MorningTask(Adding.Name, Adding.TimeString));
            Preferences.Default.Remove("routines");
            Preferences.Default.Set("routines", JsonConvert.SerializeObject(Routines));
        }

        [RelayCommand]
        public void RemoveTask(Guid guid)
        {
            Routines.ForEach(routine =>
            {
                if (routine.Tasks is not null)
                {
                    foreach (var task in routine.Tasks.ToList())
                    {
                        if (task is not null && task.guid == guid)
                        {
                            var index = routine.Tasks.IndexOf(task);
                            routine.Tasks.RemoveAt(index);
                        }
                    }
                }
            });
            Preferences.Default.Remove("routines");
            Preferences.Default.Set("routines", JsonConvert.SerializeObject(Routines));
        }
         
        private void ResetActive()
        {
            Routines.ForEach(routine =>
            {
                routine.IsActive = false;
            });
        }

        [RelayCommand]
        public void Refresh()
        {
            IsRefreshing = true;
            GetTasks();
            GetRoutines();
            IsRefreshing = false;
        }
    }
}
