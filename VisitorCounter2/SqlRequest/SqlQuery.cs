using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;
using MySqlConnector;
using VisitorCounter2.Infrastructure;

namespace VisitorCounter2.SqlRequest
{
    /// <summary>
    /// Класс для работы с БД
    /// в нём описаны все SQL запросы
    /// </summary>
    public class SqlQuery
    {
        public AppDb Db { get; }

        public SqlQuery(AppDb db)
        {
            Db = db;
        }

        /// <summary>
        /// Метод для получения статистики посетителей за даты в разрезе по часам
        /// Для получения отчета за конкретный день, в dateEnd передаём null
        /// </summary>
        /// <param name="dateStart"> Дата (включительно) начала отчёта  </param>
        /// <param name="dateEnd"> Дата (включительно) конца отчета или null</param>
        /// <returns></returns>
        public async Task<DataTable> StatisticVisitor(DateTime DateStart, DateTime? DateEnd)
        {
            DataTable table = new DataTable();

            string sqlQuesry = @"call StatisticVisitor(@DateStart, @DateEnd)";

            MySqlCommand cmd = new MySqlCommand(sqlQuesry, Db.Connection);

            cmd.Parameters.Add(new MySqlParameter { ParameterName = "@DateStart", DbType = DbType.Date, Value = DateStart });
            if (DateEnd != new DateTime(1, 1, 1, 0, 0, 0))
                cmd.Parameters.Add(new MySqlParameter { ParameterName = "@DateEnd", DbType = DbType.Date, Value = DateEnd });
            else
                cmd.Parameters.Add(new MySqlParameter { ParameterName = "@DateEnd", DbType = DbType.Date, Value = DBNull.Value });

            await Db.Connection.OpenAsync();

            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);

            adapter.Fill(table);
            await Db.Connection.CloseAsync();

            return table;
        }

        /// <summary>
        /// Метод сохранения текушего количества посетителей в БД
        /// </summary>
        /// <returns></returns>
        public async Task<bool> SaveVisitor( )
        {
            string sqlQuesry = @"Call SaveVisitor2( @visitor)";

            MySqlCommand cmd = new MySqlCommand(sqlQuesry, Db.Connection);
            lock (Variables.allVisitor)
            {
                cmd.Parameters.Add(new MySqlParameter { ParameterName = "@visitor", DbType = DbType.Int32, Value = Variables.allVisitor });
            }
            await Db.Connection.OpenAsync();
            int reader = cmd.ExecuteNonQuery();
            await Db.Connection.CloseAsync();

            return Convert.ToBoolean(reader);
        }
    }
}
