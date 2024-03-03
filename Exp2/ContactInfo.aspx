<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactInfo.aspx.cs" Inherits="Exp2.ContactInfo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        
        /* Style for the GridView */
        #GridView1 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }
        
        /* Style for table header */
        #GridView1 th {
            background-color: #4CAF50;
            color: white;
            text-align: left;
            padding: 8px;
        }
        
        /* Style for table data */
        #GridView1 td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        
        /* Alternate row background color */
        #GridView1 tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        /* Hover effect on rows */
        #GridView1 tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
