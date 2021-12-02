using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VisitorCounter2.Infrastructure;

namespace VisitorCounter2.Controllers.Door
{
    [Route("[controller]")]
    [ApiController]
    public class DoorEastController : ControllerBase
    {
        private readonly ILogger<DoorEastController> logger;

        LogOutput logOutput = new LogOutput();
        Visitor visitor = new Visitor();
        AppDb Db { get; }

        public DoorEastController(AppDb db, ILogger<DoorEastController> logger)
        {
            this.logger = logger;
            Db = db;
        }

        [HttpGet("EastEntrance")]
        public async Task<NumberVisitors> EastEntrance()
        {
            NumberVisitors numberVisitors = await visitor.VisitorEntranceOutput( 0);

            logger.LogInformation(logOutput.Informasion(GetType().Name, numberVisitors.Visitors));

            return numberVisitors;
        }



        [HttpGet("EastOutput")]
        public async Task<NumberVisitors> EastOutput()
        {
            NumberVisitors numberVisitors = await visitor.VisitorEntranceOutput( 1);

            logger.LogInformation(logOutput.Informasion(GetType().Name, numberVisitors.Visitors));

            return numberVisitors;
        }
    }
}
