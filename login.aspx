<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Elearning.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  
  
      <link rel="stylesheet" href="stylelogin.css">

  
    </head>
    
<body>
  <div class="login-page">
      
  <div class="form">
  <h2 style="color: #666666">Login</h2>
      <br>
      <form class="register-form">
      <h2>Login</h2>
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
      <form id="form1" runat="server" style="text-align: left">
          Email<asp:TextBox ID="TextBox1" runat="server" Width="238px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
          Password<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="240px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
          <br />
          <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Login" Width="238px" BackColor=" #94af65" />
          <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
      <p class="message">Not registered? <a href="register.aspx">Create an account</a></p>
      </form>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>

