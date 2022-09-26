using AlarmApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlarmApp
{
    public class TimeService
    {
        public int getSeconds(string timeString)
        {
            var trimmed = timeString.Trim();
            var mins = trimmed.Substring(0, trimmed.IndexOf('m'));
            var sIndex = trimmed.IndexOf('s');
            var nIndex = trimmed.IndexOf('n');
            var len = sIndex - nIndex;
            var secs = timeString.Substring(nIndex + 1, len - 1);

            return Int32.Parse(mins) * 60 + Int32.Parse(secs);
        }

        public string formatTime(int seconds)
        {
            int mins = seconds / 60;
            var secs = seconds % 60;

            return $"{mins}min {secs} s";
        }

        public int GetTotalTime(Routine routine)
        {
            var total = 0;
            routine.Tasks.ForEach(task =>
            {
                total += getSeconds(task.TimeString);
            });

            return total;
        }
    }
}
