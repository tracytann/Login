using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Project_UTS_ASP.Net__2203040162_.Classes;

namespace Project_UTS_ASP.Net__2203040162_.Classes
{
    public class ClsRecord
    {
        public static DataTable TampilData()
        {
            try
            {
                DataTable DtTampil = new DataTable();
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter Da = new SqlDataAdapter();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from daftar_anime order by id_anime asc";
                Da.SelectCommand = cmd;
                Da.Fill(DtTampil);
                Sqlconn.Close();

                return DtTampil;
            }

            catch(Exception ex) 
            {

                throw ex;
            }
        }

        public static void SimpanAnime(string judul, string genre, string jml_episode, string tipe )
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into daftar_anime values('"+judul+"','"+genre+"','"+jml_episode+"','"+tipe+"')";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch(Exception ex) 
            {
                throw ex;
            }
        }


        public static void EditAnime(string Judul, string Genre, string Jml_episode, string Tipe, int id_anime)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update daftar_anime set judul='"+Judul+"', genre='"+Genre+"', jml_episode='"+Jml_episode+"', tipe='"+Tipe+"' where id_anime='"+id_anime+"'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void HapusAnime(int id_anime)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = " delete from daftar_anime where id_anime='" + id_anime + "'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}