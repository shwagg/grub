<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="GRUB._1.Header" %>

<link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300;400;700&display=swap" rel="stylesheet"/>  

<style>
    .header-form {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: #FB8F52;
        padding: 15px 30px;
        box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
        z-index: 1000;
    }

    .logo-container {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .logo {
        width: 60px;
        height: auto;
    }

    .brand {
        font-size: 80px;
        font-family: 'Akshar', sans-serif;
        text-shadow: 4px 5px 0px rgba(0, 0, 0, 0.25);
        font-weight: 700;
        color: #404040;
    }

    .header-buttons {
        display: flex;
        gap: 20px;
        position: center;
    }

    .bookmark-button {
        font-size: 16px;
        font-weight: bold;
        font-family: 'Akshar', sans-serif;
        padding: 10px 15px;
        background-color: white;
        color: #404040;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background 0.3s;
    }

    .bookmark-button:hover {
        background-color: darkgrey;
    }

    .bookmark-popup {
        display: none;
        position: fixed;
        top: 120px;
        right: 50px;
        background: white;
        border: 1px solid #ccc;
        padding: 15px;
        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.5);
        border-radius: 10px;
        z-index: 999;
    }

    .bookmark-popup.active {
        display: block;
    }

    .cart-button {
        font-size: 16px;
        font-weight: bold;
        font-family: 'Akshar', sans-serif;
        padding: 10px 15px;
        background-color: white;
        color: #404040;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background 0.3s;
    }

    .cart-button:hover {
        background-color: darkgrey;
    }

    .overlay {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 990;
    }

    .overlay.active {
        display: block;
    }

    .menu-button {
        font-size: 16px;
        font-weight: bold;
        font-family: 'Akshar', sans-serif;
        padding: 10px 15px;
        background-color: white;
        color: #404040;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background 0.3s;
    }
    .menu-button:hover {
        background-color: darkgrey;
    }

    .menuOverlay {
        display: none;
        position: fixed;
        top: 0;
        right: 0;
        width: 100%;
        height: 100%;
        z-index: 990;
    }

    .menuOverlay.active {
        display: block;
    }

    .menu-popup {
        display: none;
        position: fixed;
        top: 130px;
        left: 0;
        bottom: 0;
        width: 200px;
        background: #FB8F52;
        padding: 15px;
        box-shadow: 4px 0px 4px rgba(0, 0, 0, 0.5);
        border-radius: 10px;
        z-index: 999;
    }

    .menu-popup.active {
        display: block;
    }
</style>

<script>
    function toggleBookmarkPopup() {
        var popup = document.getElementById("bookmarkPopup");
        var overlay = document.getElementById("overlay");
        var isActive = popup.classList.contains("active");
        if (isActive) {
            popup.classList.remove("active");
            overlay.classList.remove("active");
        } else {
            popup.classList.add("active");
            overlay.classList.add("active");
        }
    }

    function toggleMenuPopup() {
        var popup = document.getElementById("menuPopup");
        var menuOverlay = document.getElementById("menuOverlay");
        var isActive = popup.classList.contains("active");
        if (isActive) {
            popup.classList.remove("active");
            menuOverlay.classList.remove("active");
        } else {
            popup.classList.add("active");
            menuOverlay.classList.add("active");
        }
    }
</script>

<div id="overlay" class="overlay" onclick="toggleBookmarkPopup()"></div>
<div id="menuOverlay" class="menuOverlay" onclick="toggleMenuPopup()"></div>

<div class="header-form">
    <div class="logo-container">
        <button type="button" class="menu-button" onclick="toggleMenuPopup()">Menu</button>
        <span class="brand">GRUB</span>
        <img src="D://IT114L GRUB/UJ3_GRUB/icons/duck-logo.png" alt="GRUB Logo" class="logo" />
    </div>

    <div class="header-buttons">
        <button type="button" class="bookmark-button" onclick="toggleBookmarkPopup()">★ BOOKMARK</button>
        <asp:Button ID="btnCart" runat="server" Text="🛒 CART" CssClass="cart-button" OnClick="btnCart_Click"/>
    </div>
</div>

<div class="bookmark-popup" id="bookmarkPopup">
    <h3>Favorite Orders</h3>
    <ul>
        <li>Orange Coffee - Php 130</li>
        <li>Milk Tea - Php 100</li>
        <li>Pizza - Php 250</li>
    </ul>
</div>

<div class="menu-popup" id="menuPopup">
    <h3>GRUB</h3>
    <ul>
        <li>Profile</li>
        <li>Order History</li>
        <li>Settings</li>
    </ul>
</div>

