using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VisitorCounter2.SqlRequest;
using VisitorCounter2.Model;

namespace VisitorCounter2.Infrastructure
{
    /// <summary>
    /// Клас соответствующий посетителю
    /// </summary>
    public class Visitor
    {
        /// <summary>
        /// Метод отвечающий за входы выход из ТЦ
        /// </summary>
        /// <param name="operation"> Принемает 0 или 1. 0-Вошёл 1-Вышел </param>
        /// <returns></returns>
        public async Task<NumberVisitors> VisitorEntranceOutput(int operation)
        {
            lock (Variables.allVisitor)
            {
                int av = Convert.ToInt32(Variables.allVisitor);

                int result = operation switch
                {
                    0 => ++av,
                    1 => --av
                };
                Variables.allVisitor = av;
                return new NumberVisitors(result);
            }
        }

        /// <summary>
        /// Метод для получения статистики посетителей за даты в разрезе по часам
        /// Для получения отчета за конкретный день, в dateEnd передаём null
        /// </summary>
        /// <param name="Db"> Класс для создания подключения к БД </param>
        /// <param name="dateStart"> Дата (включительно) начала отчёта  </param>
        /// <param name="dateEnd"> Дата (включительно) конца отчета или null</param>
        /// <returns></returns>
        public async Task<DateVisitors> StatisticVisitor(AppDb Db, DateTime dateStart, DateTime? dateEnd)
        {

            DateVisitors dateVisitors = new DateVisitors();

            SqlQuery quevy = new SqlQuery(Db);

            await quevy.StatisticVisitor(dateStart, dateEnd);

            return dateVisitors;
        }
    }
}
