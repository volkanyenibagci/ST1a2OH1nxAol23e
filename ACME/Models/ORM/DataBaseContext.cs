using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using ACME.Models.SqlClass;

namespace ACME.Models.ORM
{


    namespace W2WMetro.Models.ORM
    {
        public class DataBaseContext : DbContext
        {
            public DbSet<Counter> Counters { get; set; }


        }
    }
}