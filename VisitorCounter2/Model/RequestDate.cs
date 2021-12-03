using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VisitorCounter2.Model
{
    /// <summary>
    /// Класс для получения дат для формирования отчета
    /// </summary>
    public class RequestDate
    {
        public DateTime DateStart { get; set; }
        public DateTime DateEnd { get; set; }
    }
}
