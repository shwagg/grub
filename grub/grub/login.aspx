﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="grub.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grub-Login</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f5f5f5;
        }
        .login-box {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .input-field {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            background-color: #FB8F52;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="login-box">
            <h2>Login</h2>
            <label for="usernametxt">Username</label>
            <asp:TextBox ID="usernametxt" runat="server" CssClass="input-field"></asp:TextBox>

            <label for="TextBox1">Password</label>
            <asp:TextBox ID="passwordtxt" runat="server" CssClass="input-field" TextMode="Password"></asp:TextBox>

            <asp:Button ID="loginbtn" runat="server" Text="Login" CssClass="btn" OnClick="loginValidation"/>

            <p>Don't have an account? <a href="createaccount.aspx">Create an Account</a></p>
        </div>
    </form>
</body>
</html>
