using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using VisitorCounter2.Infrastructure;
using VisitorCounter2.Model;
using VisitorCounter2.SqlRequest;

namespace VisitorCounter2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StatisticVisitorController : ControllerBase
    {
        Visitor visitor = new Visitor();
        AppDb Db { get; }

        public StatisticVisitorController(AppDb db)
        {
            Db = db;
        }

        [HttpPost]
        public async Task<IActionResult> StatisticVisitor(RequestDate requestDate)
        {
            List<DateVisitors> listVisitors = new List<DateVisitors>();

            SqlQuery sqlQuery = new SqlQuery(Db);
            DataTable dataTable = await sqlQuery.StatisticVisitor(requestDate.DateStart, requestDate.DateEnd);

            //получаем список дат
            List<object> listDate = dataTable
                 .AsEnumerable()
                 .Select(row => row["Date"])
                 .Distinct()
                 .ToList();


            for (int i = 0; i < listDate.Count; i++)
            {
                DateVisitors dateVisitors = new DateVisitors();
                dateVisitors.date = listDate[i].ToString();

                List<DataRow> list = dataTable.Select("Date ='" + listDate[i].ToString() + "'").ToList();

                Dictionary<string, int> timeVisitors = new Dictionary<string, int>();

                for (int j = 0; j < list.Count; j++)
                {
                    timeVisitors.Add(
                         Convert.ToDateTime(list[j]["Time"]).ToString("H:mm"),
                         Convert.ToInt32(list[j]["VisitorCount"].ToString())
                    );

                }
                dateVisitors.visitors = timeVisitors;
                listVisitors.Add(dateVisitors);
            }

            return new OkObjectResult(listVisitors);
        }

    }
}
