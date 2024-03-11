<%@ Page Title="Grandprize" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grandprize.aspx.cs" Inherits="pricedraw._Grandprize" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        /* CSS untuk button */
        .btn {
            width: 100%;
            max-width: 250px; /* Atur lebar maksimum */
            margin: 360px auto 0; /* Atur jarak atas, kiri-kanan, dan bawah */
            font-size: 18px; /* Atur ukuran font */
            padding: 10px 30px; /* Atur padding */
            border: 2px solid #0F6AB7; /* Atur border */
            border-radius: 10px; /* Atur sudut border */
            background-color: #0F6AB7;
            color: #ffffff; /* Atur warna teks */
            cursor: pointer;
            transition: all 0.3s ease; /* Animasi saat hover */
        }

        /* Gaya teks di atas tombol */
        .button-text {
            position: absolute;
            top: 200px; /* Atur jarak antara teks dan tombol */
            left: 50%; /* Pusatkan teks horizontal */
            transform: translateX(-50%); /* Pusatkan teks horizontal */
            font-size: 50px; /* Atur ukuran font */
            font-family: 'Poppins', sans-serif; /* Atur font Poppins */
            color: #000; /* Atur warna teks */
        }

        /* CSS untuk hover effect */
        .btn:hover {
            background-color: #0056b3; /* Ubah warna latar belakang saat hover */
            border-color: #0056b3; /* Ubah warna border saat hover */
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.5); /* Tambahkan efek bayangan saat hover */
            transform: scale(1.05); /* Tambahkan efek scaling saat hover */
        }
    </style>

    <div style="text-align: center;">
        <span id="buttonText" class="button-text">Choose Your Prize!</span>
        <div style="display: flex; flex-wrap: wrap; justify-content: center;">
            <asp:Button ID="btnMotorListrik" runat="server" Text="Motor Listrik" CssClass="btn" OnClick="btnMotorListrik_Click" Font-Names="Poppins" />
            <asp:Button ID="btnBigTv" runat="server" Text="TV 32 Inch" CssClass="btn" OnClick="btnBigTv_Click" Font-Names="Poppins" />
            <asp:Button ID="btnSmartphone" runat="server" Text="Smarthphone" CssClass="btn" OnClick="btnSmartphone_Click" Font-Names="Poppins" />
            <asp:Button ID="btnEmas" runat="server" Text="Emas Antam 0,5 Gram" CssClass="btn" OnClick="btnEmas_Click" Font-Names="Poppins" />
        </div>
    </div>
</asp:Content>
