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
        AppDb Db { get; }

        //переменная для общего количества посетителей находящихся в тц  
        static object allVisitor = 0;

        public Visitor(AppDb db)
        {
            Db = db;
        }

        /// <summary>
        /// Метод отвечающий за входы выход из ТЦ
        /// </summary>
        /// <param name="operation"> Принемает 0 или 1. 0-Вошёл 1-Вышел </param>
        /// <returns></returns>
        public async Task<NumberVisitors> VisitorEntranceOutput(int operation)
        {
            SqlQuery quevy = new SqlQuery(Db);
            
            int result = 0;

            lock (allVisitor)
            {
                int Visitor = Convert.ToInt32(allVisitor);

                switch (operation)
                {
                    case 0:
                        {
                            result = ++Visitor;
                            quevy.SaveVisitor(operation);
                            break;
                        }
                    case 1:
                        {
                            if (Visitor > 0)
                            {
                                result = --Visitor;
                                quevy.SaveVisitor(operation);
                            }
                            break;
                        }
                };
                allVisitor = Visitor;
            }
                return new NumberVisitors(result);
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
