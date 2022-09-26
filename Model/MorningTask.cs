using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlarmApp.Model
{
    public class MorningTask
    {
        public Guid guid { get; set; }
        public string Name { get; set; }
        public string TimeString { get; set; }

        public MorningTask(string name, string time)
        {
            guid = Guid.NewGuid();
            Name = name;
            TimeString = time;
        }
    }
}
