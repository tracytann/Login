using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_UTS_ASP.Net__2203040162_.Classes
{
    public class ClsModule
    {
        public static string Conn = ConfigurationManager.ConnectionStrings["Koneksi"].ConnectionString;
    }
}