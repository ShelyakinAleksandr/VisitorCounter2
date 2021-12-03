using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VisitorCounter2.SqlRequest;

namespace VisitorCounter2.Infrastructure
{
    /// <summary>
    /// Класс для Таймера
    /// </summary>
    public class TimerSaveVisitor
    {
        AppDb DB;

        public TimerSaveVisitor(AppDb db)
        {
            DB = db;
        }

        /// <summary>
        /// Метод сохраняет текущее количество посетителей
        /// </summary>
        public async void SaveVisitor()
        {
            SqlQuery sqlQuery = new SqlQuery(DB);

            await sqlQuery.SaveVisitor();
        }
    }
}
