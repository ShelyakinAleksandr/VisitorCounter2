using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VisitorCounter2.Model
{
    /// <summary>
    /// Класс для выведения статистики по дням
    /// </summary>
    public class DateVisitors
    {
        /// <summary>
        /// Дата
        /// </summary>
        public string date { get; set; }
        /// <summary>
        /// Время : количество посетителей 
        /// </summary>
        public Dictionary<string, int> visitors { get; set; }

    }
}
