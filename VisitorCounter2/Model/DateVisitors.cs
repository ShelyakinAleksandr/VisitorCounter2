using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VisitorCounter2.Model
{
    public class DateVisitors
    {
        public string date { get; set; }
        public Dictionary<string, int> visitors { get; set; }

    }
}
