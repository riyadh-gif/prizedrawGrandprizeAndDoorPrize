<%@ Page Title="motorListrik" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="motorListrik.aspx.cs" Inherits="pricedraw._motorListrik" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Gaya tombol */
        .btn {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
        }

        /* Gaya tombol saat dihover */
        .btn:hover {
            background-color: #45a049;
        }

        /* Gaya tombol saat ditekan */
        .btn:active {
            background-color: #4CAF50;
            transform: translateY(4px);
        }

        /* Pusatkan elemen */
        .center {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        /* Pusatkan tombol */
        .center-button {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding-top: 100px; /* Add padding to move the button down */
        }

        /* Gaya tabel */
        .table-pastel {
            background-color: #f2f2f2;
            border-collapse: collapse;
            width: 100%;
        }

        .table-pastel th, .table-pastel td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .table-pastel th {
            background-color: #4CAF50;
            color: white;
        }

        /* Gaya pop-up */
        .popup-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .popup {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .popup-message {
            margin-bottom: 20px;
        }

        .popup-button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition-duration: 0.3s;
        }

        .popup-button:hover {
            background-color: #45a049;
        }
    </style>

    <!-- Tombol untuk melakukan pengundian hadiah secara acak -->
    <div class="center-button">
        <asp:Button ID="btnResult" runat="server" Text="Result" CssClass="btn btn-success" OnClick="btnResult_Click" />
        <asp:Button ID="btnShuffle" runat="server" Text="Shuffle" CssClass="btn btn-primary" OnClick="btnShuffle1_Click" />
    </div>

    <!-- Tabel untuk menampilkan hasil pengundian hadiah -->
    <asp:GridView ID="MyGridViewPrizeWinners" runat="server" CssClass="table-pastel" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="No" HeaderText="No" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="Nip" HeaderText="NIP" />
            <asp:BoundField DataField="Nama" HeaderText="Nama" />
            <asp:BoundField DataField="Divisi" HeaderText="Divisi" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Jenis Hadiah" HeaderText="Jenis Hadiah" />
            <asp:BoundField DataField="Hadiah" HeaderText="Hadiah" />
        </Columns>
    </asp:GridView>

    <!-- Popup untuk menampilkan pesan -->
    <div id="popupContainer" class="popup-container" style="display: none;">
        <div class="popup">
            <div class="popup-message">
                Pemenang telah ditentukan, silahkan klik tombol result untuk melihat.
            </div>
            <asp:Button ID="btnClosePopup" runat="server" Text="Close" CssClass="popup-button" OnClick="btnClosePopup_Click" />
        </div>
    </div>

    <script>
        // Fungsi untuk menampilkan popup
        function ShowPopup() {
            document.getElementById('popupContainer').style.display = 'flex';
        }

        // Fungsi untuk menyembunyikan popup
        function HidePopup() {
            document.getElementById('popupContainer').style.display = 'none';
        }
    </script>
</asp:Content>
