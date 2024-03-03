<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="index.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
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
        .auto-style1 {
            width: 248px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Welcome to Dashboard!</h1>
            <p>&nbsp;</p>
            <h1 class="auto-style1">
                <asp:Label ID="ProjectHeading" runat="server" ForeColor="#33CC33" Text="Add Projects"></asp:Label>
            </h1>
            <div>
                <br />
                <!--  <label for="TxtProjectName" style="font-family: 'sans Serif'; color: #FF0000">Project Name: </label>
              <asp:TextBox ID="TextBoxDetails" runat="server"></asp:TextBox>
                <label for="TxtProjectDetails" style="font-family: 'sans Serif'; color: #FF0000">Project Name: </label>
            <!--   <asp:TextBox ID="TextAreaDetails" runat="server"></asp:TextBox>  
                <textarea id="TextArea" cols="20" rows="2"></textarea>  -->

                <asp:Label ID="ProNamelbl" runat="server" Text="Project Name:"></asp:Label>
                <br />
                <asp:TextBox ID="ProNamebx" runat="server" Width="586px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="ProDtlbl" runat="server" Text="Project Details"></asp:Label>
                :<br />
                 <asp:TextBox ID="ProDet" runat="server" Width="585px"></asp:TextBox> 
             <!--   <textarea id="TextArea1" runat="server" class="auto-style1" name="S1"></textarea><br />  -->
                <br />
                <br />
                <asp:Label ID="ProLinklbl" runat="server" Text="Project Link:"></asp:Label>
                <br />
                <asp:TextBox ID="ProLinkbx" runat="server" Width="585px"></asp:TextBox>

                <br />
                <br />
                <asp:Button ID="AddProjBtn" runat="server" Text="Add Project" OnClick="ProjectAddButton_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="ContactBtn" runat="server" Text="View Contact Info" OnClick="ViewContact_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="LogOutBtn" runat="server" Text="Log Out" OnClick="LogOut_Click" Width="120px" />
                <br />

            </div>
            </div>
    </form>
</body>
</html>
