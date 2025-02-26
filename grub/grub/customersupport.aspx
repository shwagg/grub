<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customersupport.aspx.cs" Inherits="grub.customersupport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grub-Customer Support</title>
    <style>
        body {
            background-color: #white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .container {
            background: #FB8F52;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 350px;
        }
        .dropdown, .btn {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .btn {
            background-color: #404040;
            color: white;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #333333;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <h2>Customer Support</h2>
            <p>Your Ticket Number: <asp:Label ID="ticketNumber" runat="server" Text="123456" /></p>
            <label for="issueDropdown">Select an Issue</label>
            <asp:DropDownList ID="issueDropdown" runat="server" CssClass="dropdown">
                <asp:ListItem Text="Order Issue" Value="1" />
                <asp:ListItem Text="Payment Issue" Value="2" />
                <asp:ListItem Text="Delivery Issue" Value="3" />
                <asp:ListItem Text="Other" Value="4" />
            </asp:DropDownList>
            <asp:Button ID="continuebtn" runat="server" Text="Continue" CssClass="btn" OnClick="ContinueToDetails" />
            <asp:Button ID="cancelbtn" runat="server" Text="Cancel" CssClass="btn" OnClick="CancelProcess" />
        </div>
    </form>
</body>
</html>