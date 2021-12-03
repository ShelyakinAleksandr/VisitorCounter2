using System;
using MySqlConnector;

namespace VisitorCounter2
{
    /// <summary>
    /// Класс описывающий подключения к БД
    /// </summary>
    public class AppDb
    {
        public MySqlConnection Connection { get; }

        public AppDb(string connectionString)
        {
            Connection = new MySqlConnection(connectionString);
        }

        public void Dispose() => Connection.Dispose();
    }
}
