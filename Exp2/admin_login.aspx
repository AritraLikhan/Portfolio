<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="index.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="stylesheet" href="style.css">
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .form-group button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }

        .roundedButton {
        border-radius: 12px; /* Adjust as needed */
    }

        .password-wrapper {
        position: relative;
    }
    .password-input {
        padding-right: 30px; /* Space for the eye icon */
    }
    .field-icon {
        position: absolute;
        right: 10px;
        top: 10px;
        cursor: pointer;
    }

     input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

    </style>
    <script type="text/javascript">
        function resetForm(form1) {
            document.getElementById(form1).reset();
        }
    </script>

    <script src="https://kit.fontawesome.com/a076d05399.js"></script> <!-- Font Awesome for the eye icon -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> <!-- jQuery -->
<script>
    $(".toggle-password").click(function () {
        $(this).toggleClass("fa-eye fa-eye-slash"); // Toggle the eye slash icon
        var input = $($(this).attr("toggle")); // Get the associated input field
        if (input.attr("type") == "password") {
            input.attr("type", "text"); // Change the input type to text
        } else {
            input.attr("type", "password"); // Change the input type back to password
        }
    });
</script>

</head>
<body onload="resetForm('form1')">
    <form id="form1" runat="server" class="container">
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        <div class="form-group">
            <label for="TxtUsername" style="font-family: 'sans Serif'; color: #FF0000">Username</label>
            <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TxtPassword" style="font-family: 'sans Serif'; color: #FF0000">Password</label>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" CssClass="password-input"></asp:TextBox>
             <span toggle="#TxtPassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
        </div>
        <div class="form-group">
          <!--    <input type="submit" value="Login" />  -->
            <asp:Button ID="BtnLogin" runat="server" Text="Login" BackColor="White" BorderColor="Red" BorderWidth="3px" ForeColor="Red" CssClass="roundedButton" />  
        </div>
    </form>
</body>
</html>
