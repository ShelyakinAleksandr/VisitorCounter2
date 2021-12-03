using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
// using System.Threading;
using System.Timers;
using System.Threading.Tasks;
using VisitorCounter2.Infrastructure;

namespace VisitorCounter2.Controllers
{
    /// <summary>
    /// Контроллер для запуска таймера который сохраняет количечтво посетителей в БД
    /// </summary>

    [Route("[controller]")]
    [ApiController]
    public class TimerController : ControllerBase
    {
        AppDb Db { get; }
       

        public TimerController(AppDb db)
        {
            Db = db;
        }

        [HttpGet]
        public async Task<string> StartTimer()
        {
            if (Variables.startTimer)
            {
                return "Таймер уже Запущен";
            }
            else
            {
                Timer timer = new Timer();
                timer.Interval = 3600000;
                timer.Elapsed += Timer_Elapsed;
                timer.AutoReset = true;
                timer.Enabled = true;

                return "Таймер Запущен";
            }
        }

        private void Timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            TimerSaveVisitor timerSaveVisitor = new TimerSaveVisitor(Db);
            timerSaveVisitor.SaveVisitor();
        }
    }
}
