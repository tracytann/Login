<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Record.aspx.cs" Inherits="Project_UTS_ASP.Net__2203040162_.Record" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List Anime | ANIMEKU.ID</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="icon" type="image/png" href="animeku.png">
    <style>
       *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: sans-serif;
        }

        body{
            min-width: 100vh;
            display: flex;
            background-color: #A0D8B3;
            justify-content: center;
            align-items: center;
        }

        table, th, td{
            padding: 1rem;
            text-align:center;
        }

        main.table{
            width: auto;
            height: 90vh;
            background-color: #fff5;
            backdrop-filter: blur(7px);
            box-shadow: 0 .4rem .8rem #0005;
            border-radius: .8rem;
            overflow: hidden;
        }

        .table_header{
            padding: .8rem .1rem;
        }

        h1{
            margin-left: 1rem;
        }

        td a{
            border: 1px solid black;
            border-radius: .4rem;
            text-decoration:none;
            cursor:pointer;
            padding:.3rem;
        }

        td a:hover{
            background-color:#fffb;
        }

        .table_body{
            width: 95%;
            max-height: 89%;
            background-color: #fffb;
            margin: .8rem auto;
            border-radius: .6rem;
            overflow: auto;
        }

        .table_body::-webkit-scrollbar-thumb{
            border-radius: .5rem;
            background-color: #0005;
            visibility: hidden;
        }

        .table_body:hover::-webkit-scrollbar-thumb{
            visibility: visible;
        }

        table, th, td{
            border-collapse: collapse;
            padding: 1rem;
        }

        thead th{
            position: sticky;
            top: 0;
            left: 0;
            background-color: #d5d1defe;
        }

        tbody tr:nth-child(even){
            background-color: #fff6;
        }

        .modal {
            display: none; 
            position: fixed; 
            z-index: 1; 
            left: 0;
            top: 0;
            width: 100%; 
            height: 100%; 
            overflow: auto; 
            background-color: rgba(0,0,0,0.5); 
            }

        .modal-content {
            background-color: #fefefe;
            justify-content: center;
            align-items:center;
            margin: 6% auto; 
            padding: 20px;
            border: 1px solid #888;
            border-radius:12px;
            width: 100%; 
            height:auto;
            }

        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
            }

        .tutup {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            }

        .tutup:hover,
        .tutup:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
            }

        .tambah_btn
        {
            background-color : green;
            color: white;
            width:4rem;
            margin-left:1rem;
            height:2rem;
            border-radius: 4px;
            transition:.3s;
        }
        .tambah_btn:hover
        {
            background-color:#537188;
        }

        .modal-input
        {
            
            display: block;
            justify-content: center;
            width:20rem;
            margin-bottom:20px;
            padding: 2px;
            flex-direction: column;
            font-size: 15px;
         }

        .modal-footer
        {
            display:flex;
            column-gap: 3rem;
            
        }

        .lebar1
        {
            width:50px;
        }

        .lebar2
        {
            width:270px;
        }

        .lebar3
        {
            width:98px;
        }
        .lebar4
        {
            width:145px;
        }

        .lebar5
        {
            width:75px;
        }

        .lebar6
        {
            width:83px;
        }

        .navigasi
        {
            display: flex;
            flex-direction:inherit;
            margin-left:1rem;
            align-item:center;
        }

        .search
        {
            display:block;
            margin-left:.7rem;
            width:12rem;
            height:1.5rem;
            flex-direction: column;
            border-radius: 6px;
            padding: 1px 8px;
        }

        .labelsearch
        {
            margin-top: 2px;
            font-size: 16px;
            display:block;
     
        }

        header{
            display: flex;
            justify-content: center;
            align-items: center;
        }

        header > a {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        a img{
            width: 40%;
            height: 20%;
            max-width: 70%
        }

        .modal-container
        {
            background-color: none;
            width: 420px;
            height: 450px;
            border-radius: 8px;
            margin: 0 auto;
            display: block;
            padding: 0;
            margin-top: 2rem;
        }

        .tombol-simpan
        {
            background-color : green;
            color: white;
            width:4rem;
            height:2rem;
            border-radius: 4px;
        }

        .tombol-hapus
        {
            background-color : red;
            color: white;
            width:4rem;
            height:2rem;
            border-radius: 4px;
        }

        .modal-isi
        {
            display:block;
            height:2rem;
            width:23rem;
            border-radius: 4px;
            padding: 2px;
            margin-bottom:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <main role="main">
           <header>
                 <a href="">
                 <img src="Logo.png" alt="" srcset="">
                 </a>
           </header>
            <section class="table_header">
                <h1>Daftar Anime Playable</h1>
            </section>
            <div class="navigasi">
                 <label type="text" class="labelsearch">Search:</label>
                <input type="text" class="search" id="searchInput" placeholder="Ketikkan sesuatu...." />
            </div>
               
            
            <section class="table_body">
             <asp:Repeater ID="RptTampilPengguna" runat="server">
                <HeaderTemplate>
                     <table id="Mytable">
                <thead>
                    <tr>
                        <th class="lebar1">Id</th>
                        <th class="lebar2">Judul</th>
                        <th class="lebar3">Genre</th>
                        <th class="lebar4">Jumlah Episode</th>
                        <th class="lebar5">Tipe</th>
                        <th class="lebar6">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("id_anime")%></td>
                        <td><%# Eval("judul")%></td>
                        <td><%# Eval("genre")%></td>
                        <td><%# Eval("jml_episode")%></td>
                        <td><%# Eval("tipe")%></td>
                        <td>
                            <a id="opsi" class="btn-detail" data-target="#modaledit" data-toggle="modal" data-id_anime='<%# Eval("id_anime")%>'
                                data-judul='<%# Eval("judul")%>' data-genre='<%# Eval("genre")%>' data-jml_episode='<%# Eval("jml_episode")%>'
                                data-tipe='<%# Eval("tipe")%>'>Detail</a>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                  </table>
                </FooterTemplate>
              </asp:Repeater>
  
        </section>
            
        </main>
        <main role="main">
            
              <button id="modal-btn" class="tambah_btn" type="button" data-toggle="modal" data-target="#modaltambah">Tambah</button>
              <div id="modaltambah" class="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-container">
                      <div class="modal-content" role="document">
                      <span class="close">&times;</span>
                      <h2>Tambah Anime</h2>
                      <div class="modal-input">
                              <div class="form-group">
                                  <asp:Label ID="Label1" runat="server" Text="Judul Anime"></asp:Label>  
                                  <asp:TextBox ID="TxtJudulAnime" CssClass="modal-isi" runat="server"></asp:TextBox>
                              </div>
                              <div class="form-group">
                                  <asp:Label ID="Label2" runat="server" Text="Genre"></asp:Label>  
                                  <asp:DropDownList ID="DdlGenre" CssClass="modal-isi" runat="server">
                                      <asp:ListItem>--Pilih Genre--</asp:ListItem>
                                      <asp:ListItem>shounen</asp:ListItem>
                                      <asp:ListItem>romcom</asp:ListItem>
                                      <asp:ListItem>isekai</asp:ListItem>
                                      <asp:ListItem>comedy</asp:ListItem>
                                      <asp:ListItem>drama</asp:ListItem>
                                      <asp:ListItem>dementia</asp:ListItem>
                                      <asp:ListItem>action</asp:ListItem>
                                      <asp:ListItem>fantasy</asp:ListItem>
                                      <asp:ListItem>romance</asp:ListItem>
                                  </asp:DropDownList>
                              </div>
                              <div class="form-group">
                                  <asp:Label ID="Label3" runat="server" Text="Jumlah Episode"></asp:Label>  
                                  <asp:TextBox ID="TxtJumlahEpisode" CssClass="modal-isi" runat="server"></asp:TextBox>
                              </div>
                              <div class="form-group">
                                  <asp:Label ID="Label4" runat="server" Text="Tipe"></asp:Label>  
                                  <asp:TextBox ID="TxtTipe" CssClass="modal-isi" runat="server"></asp:TextBox>
                              </div>
                          
                      </div>
                      <div class="modal-footer">
                          <asp:Button ID="BtnSave" CssClass="tombol-simpan" OnClick="BtnSave_Click" runat="server" Text="Simpan"></asp:Button>
                      </div>
                      
                    </div>
                  </div>
                    

              </div>
            
            
            
             <div id="modaledit" class="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                 <div class="modal-container">
                     <div class="modal-content" role="document">
                      <span class="tutup">&times;</span>
                      <h2>Edit Anime</h2>
                      <div class="modal-input">
                              <div class="form-group">
                                  <asp:Label ID="Label9" runat="server" Text="Id"></asp:Label>  
                                  <asp:TextBox ID="TxtEditID"  CssClass="modal-isi" ClientIDMode="Static" runat="server"></asp:TextBox>
                              </div>
                              <div class="form-group">
                                  <asp:Label ID="Label5" runat="server" Text="Judul Anime"></asp:Label>  
                                  <asp:TextBox ID="TxtEditJudul" CssClass="modal-isi" ClientIDMode="Static" runat="server"></asp:TextBox>
                              </div>
                              <div class="form-group">
                                  <asp:Label ID="Label6" runat="server" Text="Genre"></asp:Label>  
                                  <asp:DropDownList ID="DdlEditGenre" CssClass="modal-isi" ClientIDMode="Static" runat="server">
                                      <asp:ListItem>--Pilih Genre--</asp:ListItem>
                                      <asp:ListItem>shounen</asp:ListItem>
                                      <asp:ListItem>romcom</asp:ListItem>
                                      <asp:ListItem>isekai</asp:ListItem>
                                      <asp:ListItem>comedy</asp:ListItem>
                                      <asp:ListItem>drama</asp:ListItem>
                                      <asp:ListItem>dementia</asp:ListItem>
                                      <asp:ListItem>action</asp:ListItem>
                                      <asp:ListItem>fantasy</asp:ListItem>
                                      <asp:ListItem>romance</asp:ListItem>
                                      <asp:ListItem>sci-fi</asp:ListItem>
                                  </asp:DropDownList>
                              </div>
                              <div class="form-group">
                                  <asp:Label ID="Label7" runat="server" Text="Jumlah Episode"></asp:Label>  
                                  <asp:TextBox ID="TxtEditJml_Episode" CssClass="modal-isi" ClientIDMode="Static" runat="server"></asp:TextBox>
                              </div>
                              <div class="form-group">
                                  <asp:Label ID="Label8" runat="server" Text="Tipe"></asp:Label>  
                                  <asp:TextBox ID="TxtEditTipe" CssClass="modal-isi" ClientIDMode="Static" runat="server"></asp:TextBox>
                              </div>
                              
                      </div>
                      <div class="modal-footer">
                                  <asp:Button ID="btn_hapus" OnClick="btn_hapus_Click" CssClass="tombol-hapus" runat="server" Text="Hapus"></asp:Button>
                                  <asp:Button ID="btn_edit" OnClick="btn_edit_Click" CssClass="tombol-simpan" runat="server" Text="Simpan"></asp:Button>
                             </div>
                    </div>
                 </div>
                    

              </div> 
        </main>
         <script>
             document.getElementById("modal-btn").addEventListener("click", function () {
                 document.getElementById("modaltambah").style.display = "block";
             });

             document.getElementsByClassName("close")[0].addEventListener("click", function () {
                 document.getElementById("modaltambah").style.display = "none";
             });

             window.addEventListener("click", function (event) {
                 if (event.target == document.getElementById("modaltambah")) {
                     document.getElementById("modaltambah").style.display = "none";
                 }
             });



             document.addEventListener("DOMContentLoaded", function () {
                 var buttons = document.querySelectorAll(".btn-detail");

                 buttons.forEach(function (button) {
                     button.addEventListener("click", function () {
                         var modal = button.getAttribute("data-target");
                         document.querySelector(modal).style.display = "block";
                     });
                 });

                 var closeButtons = document.querySelectorAll(".close, .tutup");

                 closeButtons.forEach(function (closeButton) {
                     closeButton.addEventListener("click", function () {
                         var modal = closeButton.closest(".modal");
                         modal.style.display = "none";
                     });
                 });

                 window.addEventListener("click", function (event) {
                     var modals = document.querySelectorAll(".modal");
                     modals.forEach(function (modal) {
                         if (event.target == modal) {
                             modal.style.display = "none";
                         }
                     });
                 });
             });

             document.addEventListener("DOMContentLoaded", function () {
                 var buttons = document.querySelectorAll(".btn-detail");

                 buttons.forEach(function (button) {
                     button.addEventListener("click", function () {
                         var modal = button.getAttribute("data-target");
                         document.querySelector(modal).style.display = "block";

                         var idAnime = button.dataset.id_anime;
                         var judul = button.dataset.judul;
                         var genre = button.dataset.genre;
                         var jmlEpisode = button.dataset.jml_episode;
                         var tipe = button.dataset.tipe;

                         var modalEdit = document.getElementById("modaledit");
                         modalEdit.querySelector("#TxtEditID").value = idAnime;
                         modalEdit.querySelector("#TxtEditJudul").value = judul;
                         modalEdit.querySelector("#DdlEditGenre").value = genre;
                         modalEdit.querySelector("#TxtEditJml_Episode").value = jmlEpisode;
                         modalEdit.querySelector("#TxtEditTipe").value = tipe;
                     });
                 });

                 var closeButtons = document.querySelectorAll(".close, .tutup");

                 closeButtons.forEach(function (closeButton) {
                     closeButton.addEventListener("click", function () {
                         var modal = closeButton.closest(".modal");
                         modal.style.display = "none";
                     });
                 });

                 window.addEventListener("click", function (event) {
                     var modals = document.querySelectorAll(".modal");
                     modals.forEach(function (modal) {
                         if (event.target == modal) {
                             modal.style.display = "none";
                         }
                     });
                 });
             });

             $(document).ready(function () {
                 $('#searchInput').on('keyup', function () {
                     var value = $(this).val().toLowerCase();
                     $('#Mytable tbody tr').filter(function () {
                         $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                     });
                 });
             });

             
        </script> 
    </form>
</body>
</html>
