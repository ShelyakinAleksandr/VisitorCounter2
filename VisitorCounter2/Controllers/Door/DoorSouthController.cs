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
    public class DoorSouthController : ControllerBase
    {
        private readonly ILogger<DoorSouthController> logger;

        LogOutput logOutput = new LogOutput();
        AppDb Db { get; }

        public DoorSouthController(AppDb db, ILogger<DoorSouthController> logger)
        {
            this.logger = logger;
            Db = db;
        }

        [HttpGet("SouthEntrance")]
        public async Task<NumberVisitors> SouthEntrance()
        {
            Visitor visitor = new Visitor(Db);
            NumberVisitors numberVisitors = await visitor.VisitorEntranceOutput( 0);

            logger.LogInformation(logOutput.Informasion(GetType().Name, numberVisitors.Visitors));

            return numberVisitors;
        }

        [HttpGet("SouthOutput")]
        public async Task<NumberVisitors> SouthOutput()
        {
            Visitor visitor = new Visitor(Db);
            NumberVisitors numberVisitors = await visitor.VisitorEntranceOutput( 1);

            logger.LogInformation(logOutput.Informasion(GetType().Name, numberVisitors.Visitors));

            return numberVisitors;
        }
    }
}
