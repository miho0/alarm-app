using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlarmApp.Model
{
    public class Routine
    {
        private TimeService TimeService { get; set; }

        Guid guid { get; set; }
        public string Name { get; set; }
        public List<MorningTask> Tasks { get; set; }
        public bool IsActive { get; set; }
        public string TotalTimeString { get => GetTotalTimeString(); }
        public int TotalTime { get => GetTotalTime(); }
        public Routine(string name, bool isActive)
        {
            guid = Guid.NewGuid();
            Name = name;
            Tasks = new();
            TimeService = new TimeService();
        }

        public int GetTotalTime()
        {
            var total = 0;
            Tasks.ForEach(task =>
            {
                total += TimeService.getSeconds(task.TimeString);
            });

            return total;
        }

        public string GetTotalTimeString()
        {
            return TimeService.formatTime(GetTotalTime());
        }
    }
}
