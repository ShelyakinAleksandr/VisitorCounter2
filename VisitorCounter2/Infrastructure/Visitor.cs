using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VisitorCounter2.SqlRequest;
using VisitorCounter2.Model;

namespace VisitorCounter2.Infrastructure
{
    public class Visitor
    {

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

        public async Task<DateVisitors> StatisticVisitor(AppDb Db, DateTime dateStart, DateTime? dateEnd)
        {

            DateVisitors dateVisitors = new DateVisitors();

            SqlQuery quevy = new SqlQuery(Db);

            await quevy.StatisticVisitor(dateStart, dateEnd);

            return dateVisitors;
        }
    }
}
