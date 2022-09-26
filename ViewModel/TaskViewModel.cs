using AlarmApp.Model;
using CommunityToolkit.Mvvm.ComponentModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Microsoft.Maui.Storage;
using Newtonsoft.Json;
using CommunityToolkit.Mvvm.Input;

namespace AlarmApp.ViewModel
{
    public partial class TaskViewModel: BaseViewModel
    {
        [ObservableProperty]
        public string taskName;

        [ObservableProperty]
        public string timeString;

        [ObservableProperty]
        public string popupButtonText;

        [ObservableProperty]
        public bool isEditing;

        [ObservableProperty]
        public bool isRefreshing;

        [ObservableProperty]
        public MorningTask editing;

        public TaskViewModel(TimeService time)
        {
            IsEditing = false;
            Title = "My Tasks";
            PopupButtonText = "Add";
            GetTasks();
        }

        [RelayCommand]
        public void PopupButtonClicked()
        {
            if (IsEditing)
            {
                EditTask();
            } else
            {
                AddTask();
            }
        }

        public async void AddTask()
        {
            if (TaskName is null || TimeString is null)
            {
                await Shell.Current.DisplayAlert("Error", "The values you have entered are invalid.", "OK");
                return;
            }

            if (Tasks is null)
            {
                Tasks = new();
            }

            Tasks.Add(new MorningTask(TaskName, TimeString));
            Preferences.Default.Remove("tasks");
            Preferences.Default.Set("tasks", JsonConvert.SerializeObject(Tasks));
        }

        [RelayCommand]
        public async void RemoveTask(MorningTask Task)
        {
            bool Answer = await Shell.Current.DisplayAlert("Confirm delete", "Are you sure you would like to delete this task?", "Yes", "No");
            if (Answer)
            {
                Tasks.Remove(Tasks.Where(i => i.guid == Task.guid).FirstOrDefault());
                Preferences.Default.Remove("tasks");
                Preferences.Default.Set("tasks", JsonConvert.SerializeObject(Tasks));
            }
        }

        [RelayCommand]
        public void EditButtonClicked(MorningTask editing)
        {
            IsEditing = true;
            Editing = editing;
            PopupButtonText = "Edit";
            TaskName = Editing.Name;
            TimeString = Editing.TimeString;
        }

        [RelayCommand]
        public void Refresh()
        {
            IsRefreshing = true;
            GetTasks();
            IsRefreshing = false;
        }

        public void EditTask()
        {
            var index = Tasks.IndexOf(Editing);
            Tasks[index] = new MorningTask(TaskName, TimeString);
            IsEditing = false;
            PopupButtonText = "Add";
        }
    }
}
