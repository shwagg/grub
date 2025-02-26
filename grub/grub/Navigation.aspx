<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Navigation.aspx.cs" Inherits="GRUB._1.GRUB_1" %>
<%@ Register Src="~/Header.ascx" TagPrefix="uc" TagName="Header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GRUB</title>
    <link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300;400;700&display=swap" rel="stylesheet"/>  
    <style>
        /*=== Content Swipe Options ===*/

        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 400px;
        }

        .form-container {
            height: 800px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .options {
            width: 150px;
            height: auto;
        }

        .left-button {
            font-size: 18px;
            font-family: 'Akshar', sans-serif;
            font-weight: bold;
            padding: 12px 20px;
            background-color: #E74C3C;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .left-button:hover {
            background-color: #C0392B;
        }

        .right-button {
            font-size: 18px;
            font-family: 'Akshar', sans-serif;
            font-weight: bold;
            padding: 12px 20px;
            background-color: #27AE60;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .right-button:hover {
            background-color: #1E8449;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="HeaderControl" />

        <div class="button-container">
            <asp:Button ID="btnLeft" runat="server" Text="Swipe Left" CssClass="left-button" OnClick="btnLeft_Click" />
            <img src="D://IT114L GRUB/icons/coffee.jpg" alt="Coffee" class="options" />
            <asp:Button ID="btnRight" runat="server" Text="Swipe Right" CssClass="right-button" OnClick="btnRight_Click" />
        </div>
    </form>
</body>
</html>
