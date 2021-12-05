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
    public class DoorNorthController : ControllerBase
    {
        private readonly ILogger<DoorNorthController> logger;

        LogOutput logOutput = new LogOutput();
        
        AppDb Db { get; }

        public DoorNorthController(AppDb db, ILogger<DoorNorthController> logger)
        {
            this.logger = logger;
            Db = db;
        }

        [HttpGet("NorthEntrance")]
        public async Task<NumberVisitors> NorthEntrance()
        {
            Visitor visitor = new Visitor(Db);
            NumberVisitors numberVisitors = await visitor.VisitorEntranceOutput( 0);

            logger.LogInformation(logOutput.Informasion(GetType().Name, numberVisitors.Visitors));

            return numberVisitors;
        }

        [HttpGet("NorthOutput")]
        public async Task<NumberVisitors> NorthOutput()
        {
            Visitor visitor = new Visitor(Db);
            NumberVisitors numberVisitors = await visitor.VisitorEntranceOutput( 1);

            logger.LogInformation(logOutput.Informasion(GetType().Name, numberVisitors.Visitors));

            return numberVisitors;
        }
    }
}
