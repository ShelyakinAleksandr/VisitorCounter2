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
        
        AppDb Db { get; }

        public DoorEastController(AppDb db, ILogger<DoorEastController> logger)
        {
            this.logger = logger;
            Db = db;
        }

        [HttpGet("EastEntrance")]
        public async Task<NumberVisitors> EastEntrance()
        {
            Visitor visitor = new Visitor(Db);
            NumberVisitors numberVisitors = await visitor.VisitorEntranceOutput( 0);

            logger.LogInformation(logOutput.Informasion(GetType().Name, numberVisitors.Visitors));

            return numberVisitors;
        }



        [HttpGet("EastOutput")]
        public async Task<NumberVisitors> EastOutput()
        {
            Visitor visitor = new Visitor(Db);
            NumberVisitors numberVisitors = await visitor.VisitorEntranceOutput( 1);

            logger.LogInformation(logOutput.Informasion(GetType().Name, numberVisitors.Visitors));

            return numberVisitors;
        }
    }
}
