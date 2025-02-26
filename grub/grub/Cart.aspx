<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="GRUB._1.WebForm1" %>
<%@ Register Src="~/Header.ascx" TagPrefix="uc" TagName="Header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GRUB</title>
    <link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300;400;700&display=swap" rel="stylesheet"/>  
    <style>
        /*=== contents ===*/

        body {
            font-family: 'Akshar', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            display: flex;
            gap: 20px;
            margin-top: 200px;
        }
        .items-section {
            flex: 2;
        }
        .order-section {
            flex: 1;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .item {
            display: inline-block;
            width: 200px;
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            margin-right: 20px;
        }
        .item img {
            width: 100%;
            height: auto;
        }
        .item-details {
            padding: 10px;
            background: c;
            color: white;
        }
        .order-switch {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }
        .switch-button {
            flex: 1;
            padding: 10px;
            text-align: center;
            cursor: pointer;
            border: none;
            background: #ddd;
        }
        .switch-button.active {
            background: #FB8F52;
            color: white;
        }
        .time-picker {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .time-display {
            font-size: 24px;
            font-weight: bold;
        }
        .am-pm-toggle {
            display: flex;
            gap: 5px;
        }
        .toggle-buttons {
            display: flex;
            justify-content: space-between;
        }
        .toggle-button {
            flex: 1;
            padding: 10px;
            text-align: center;
            cursor: pointer;
            font-weight: bold;
            border: none;
            background-color: white;
            transition: background 0.3s;
        }
        .toggle-button.active {
            background-color: #FB8F52;
            color: white;
        }
    </style>
    <script>
        function toggleDelivery(option) {
            var deliveryBtn = document.getElementById("btnDelivery");
            var pickupBtn = document.getElementById("btnPickup");
            if (option === 'delivery') {
                deliveryBtn.classList.add("active");
                pickupBtn.classList.remove("active");
            } else {
                pickupBtn.classList.add("active");
                deliveryBtn.classList.remove("active");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header runat="server" ID="HeaderControl" />

        <div class="container">
            <div class="items-section">
                <h2>Your Items</h2>
                <div class="item">
                    <img src="D://IT114L GRUB/icons/coffee.jpg" alt="Orange Coffee" />
                    <div class="item-details">
                        <p>Php 130</p>
                        <p><strong>Orange Coffee</strong></p>
                        <p>Same Old Coffee</p>
                    </div>
                </div>
                <div class="item">
                    <img src="D://IT114L GRUB/icons/coffee.jpg" alt="Orange Coffee" />
                    <div class="item-details">
                        <p>Php 130</p>
                        <p><strong>Orange Coffee</strong></p>
                        <p>Same Old Coffee</p>
                    </div>
                </div>
            </div>
            <div class="order-section">
                <h2>Order Details</h2>
                <div class="toggle-buttons">
                    <button type="button" id="btnDelivery" class="toggle-button active" onclick="toggleDelivery('delivery')">Delivery</button>
                    <button type="button" id="btnPickup" class="toggle-button" onclick="toggleDelivery('pickup')">Pickup</button>
                </div>
                <br/>
                <div class="time-picker">
                    <span class="time-display">12:00</span>
                    <div class="am-pm-toggle">
                        <button type="button" class="toggle-button active">am</button>
                        <button type="button" class="toggle-button">pm</button>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>