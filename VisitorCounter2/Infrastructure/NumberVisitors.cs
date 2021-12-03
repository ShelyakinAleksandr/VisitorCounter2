using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VisitorCounter2.Infrastructure
{
    /// <summary>
    /// Класс для отображения количества посетителей
    /// </summary>
    public class NumberVisitors
    {
        int visitors;
        public NumberVisitors(int visitors)
        {
            this.visitors = visitors;
        }
        public string Visitors
        {
            get
            {
                if (visitors > 0)
                    return "Посетителей в ТЦ: " + visitors;
                else
                    return "В ТЦ нет посетителей. =(";
            }
        }
    }
}
