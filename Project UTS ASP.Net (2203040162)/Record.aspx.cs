using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Project_UTS_ASP.Net__2203040162_.Classes;

namespace Project_UTS_ASP.Net__2203040162_
{
    public partial class Record : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TampilData();
            }
            TampilData();
        }

        private void TampilData()
        {
            DataTable Dt = new DataTable();
            Dt = ClsRecord.TampilData();
            RptTampilPengguna.DataSource = Dt;
            RptTampilPengguna.DataBind();
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            ClsRecord.SimpanAnime(TxtJudulAnime.Text,DdlGenre.SelectedValue,TxtJumlahEpisode.Text,TxtTipe.Text);
            TampilData();
            Clear();
        }

        public void Clear()
        {
            TxtJudulAnime.Text = string.Empty;
            DdlGenre.SelectedValue="--Pilih Genre--";
            TxtJumlahEpisode.Text = string.Empty;
            TxtTipe.Text = string.Empty;
        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {
            ClsRecord.EditAnime(TxtEditJudul.Text, DdlEditGenre.Text, TxtEditJml_Episode.Text, TxtEditTipe.Text, Convert.ToInt32(TxtEditID.Text));
            TampilData();
            Clear();
        }

        protected void btn_hapus_Click(object sender, EventArgs e)
        {
            ClsRecord.HapusAnime(Convert.ToInt32(TxtEditID.Text));
            TampilData();
            Clear();
        }



    }
}