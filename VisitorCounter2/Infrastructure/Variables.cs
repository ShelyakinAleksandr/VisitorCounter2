using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VisitorCounter2.Infrastructure
{
    /// <summary>
    /// Класс для глобальных переменных 
    /// </summary>
    public class Variables
    {
        /// <summary>
        /// Текущее количество посетителей
        /// </summary>
       public static object allVisitor = 0;

        /// <summary>
        /// Переменная для таймера 
        /// false таймер отключён
        /// true запущен
        /// </summary>
        public static bool startTimer = false;
    }
}
