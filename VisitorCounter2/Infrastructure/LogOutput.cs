using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VisitorCounter2.Infrastructure
{
    /// <summary>
    /// Класс для обработки информации выводимой в лог
    /// </summary>
    public class LogOutput
    {
        /// <summary>
        /// Метод редактирует строку для вывода в лог
        /// Обрезает "Controller" в названии класса
        /// </summary>
        /// <param name="nameClass">Название класса </param>
        /// <param name="countVisitors">Количечтво посетителей</param>
        /// <returns> "Название класса" "Visitors" "количество" </returns>
        public string Informasion(string nameClass, string countVisitors)
        {
            string logInf = nameClass.Replace("Controller", "") + "  Visitors " + countVisitors;

            return logInf;
        }
    }
}
