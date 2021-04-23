<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DiziBlogProje.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="web/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="web/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="web/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="web/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="web/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="web/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="web/css/util.css">
	<link rel="stylesheet" type="text/css" href="web/css/main.css">
    <link href="web/css/style.css" rel="stylesheet" />
    <link href="web/css/bootstrap.css" rel="stylesheet" />
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" runat="server">
					<span class="login100-form-title">
						GİRİŞ YAP
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input100" placeholder="Kullanıcı Adı"></asp:TextBox>
						
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Please enter password">
						<asp:TextBox ID="TextBox2" runat="server" CssClass="input100" placeholder="Şifre" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="text-right p-t-13 p-b-23">
						<span class="txt1">
							Unuttum
						</span>

						<a href="#" class="txt2">
							KullanıcıAdı / Şifre?
						</a>
					</div>

					<div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" class="login100-form-btn" Text="Giriş Yap" OnClick="Button1_Click" />
					</div>
					<br />
                    <asp:Panel ID="Panel1" runat="server" Visible="false">
                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </asp:Panel>
					


					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9">
							Hesabınız yok mu?
						</span>

						<a href="#" class="txt3">
							Şimdi üye olun.
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
<!--===============================================================================================-->
	<script src="web/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="web/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="web/vendor/bootstrap/js/popper.js"></script>
	<script src="web/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="web/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="web/vendor/daterangepicker/moment.min.js"></script>
	<script src="web/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="web/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="web/js/main.js"></script>

</body>
</html>