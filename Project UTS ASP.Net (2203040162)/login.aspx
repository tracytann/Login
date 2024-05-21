<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Project_UTS_ASP.Net__2203040162_.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Masuk | ANIMEKU.ID</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,500;0,600;1,100;1,200;1,300;1,500;1,600&display=swap" rel="stylesheet">
    <link rel="icon" type="image/png" href="animeku.png">
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <form id="form1" runat="server">
     <header>
        <a href="">
            <img src="Logo.png" alt="" srcset="">
        </a>
    </header>
 <div class="parent">
    <div class="main_wrapper">
        <div class="left_container">
            <img src="puella.png" alt="" srcset="">
            <div class="desc">
                Nonton Anime?
                <br>Ya Animeku Aja
            </div>
        </div>
        <div class="right_container">
            <h3>Halo Admin</h3>
     
            <div class="container-1">
                <div class="form_1">
                    <div class="input-container">
                        <label for="email">Email</label>
                        <asp:TextBox ID="Txtemail" CssClass="input-container" placeholder="masukkan email anda"  runat="server"></asp:TextBox>
                    </div>
                    
                    <div class="input-container">
                                <label for="password">Password</label>
                                <asp:TextBox ID="TxtPassword" TextMode="Password" CssClass="input-container" placeholder="masukkan password anda" runat="server"></asp:TextBox>
                    </div>
                </div>
    
                <div class="btn">
                        <asp:Button ID="BtnLogin" OnClick="BtnLogin_Click" CssClass="btn" runat="server" Text="Login" />
                    </div>
                <div class="warning">
                         <asp:Label ID="LblWarning" CssClass="warning" runat="server" Text=""></asp:Label>
                    </div>
            </div>
    
                <div class="line_2"></div> 
                <div class="media-options">
                    <a href="https://www.facebook.com/" class="field facebook">
                        <i class='bx bxl-facebook facebook-icon'></i><span>Facebook</span>
                    </a>
                        
                    <a href="https://accounts.google.com/Login" class="field google">
                        <i class='bx bxl-google google-icon'></i><span>Google</span>
                    </a>
                </div>

        </div>
    </div>
 </div> 
    <footer>  
        <div class="bantuan">
            © 2023 ANIMEKU.ID | Perlu bantuan?<a href="https://wa.wizard.id/853d98">klik disini</a>
        </div>
    </footer>   
    </form>
</body>
</html>
