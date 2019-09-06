<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Elearning.register" %>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign Up</title>
  
  
  
      <link rel="stylesheet" href="stylesignup.css">

  
</head>

<body>
  	

    <form id="form1" runat="server">
  <h2>Sign Up</h2>
		<p style="font-family: 'Comic Sans MS'; font-size: 12px;">
			Name<strong> </strong>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="405px"></asp:TextBox>
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="White" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" Width="16px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" BackColor="White" ControlToValidate="TextBox1" ErrorMessage="Invalid Name" ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" Width="110px"></asp:RegularExpressionValidator>
		</p>

        <p style="font-family: 'Comic Sans MS'; font-size: 12px;">
			Email<strong> </strong>&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="405px"></asp:TextBox>
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" Width="16px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="White" ControlToValidate="TextBox4" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="110px"></asp:RegularExpressionValidator>
		</p>
		<p style="font-size: 12px; font-family: 'Comic Sans MS'">
			Password&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="405px"></asp:TextBox>
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" Width="16px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" BackColor="White" ControlToValidate="TextBox5" ErrorMessage="Password should be atleast 6 characters with a digit, uppercase, lowercase and special character." ForeColor="Red" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})" Width="388px"></asp:RegularExpressionValidator>
		</p>
		<p style="font-size: 12px; font-family: 'Comic Sans MS'">
			Confirm Password
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="405px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="White" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" Width="16px"></asp:RequiredFieldValidator>
&nbsp;
		    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="White" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Please enter the same password" ForeColor="Red" Width="217px"></asp:CompareValidator>
		</p>
		<p>
			<asp:Button ID="Button1" runat="server" onClick="Button1_Click" Text="Submit" Width="405px" />
		</p>
	</form>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>
