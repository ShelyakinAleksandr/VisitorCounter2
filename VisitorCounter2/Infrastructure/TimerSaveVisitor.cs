using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VisitorCounter2.SqlRequest;

namespace VisitorCounter2.Infrastructure
{
    public class TimerSaveVisitor
    {
        AppDb DB;

        public TimerSaveVisitor(AppDb db)
        {
            DB = db;
        }

        public async void SaveVisitor()
        {
            SqlQuery sqlQuery = new SqlQuery(DB);

            await sqlQuery.SaveVisitor();
        }
    }
}
