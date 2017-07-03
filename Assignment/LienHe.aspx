<%@ Page Title="Liên hệ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="Assignment.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <h1>Liên hệ</h1>
    <section id="loginForm">
    <hgroup class="title">
     <h3>Nếu bạn có vấn đề gì cần liên hệ trực tiếp <br />
            với chúng tôi vui lòng xem thông tin bên dưới:</h3>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>Nguyễn Đổng Chi, Cầu Diễn, Từ Liêm, Hà Nội, Việt Nam</p>
    </section>

    <section class="contact">
        <header>
            <h3>Số điện thoại:</h3>
        </header>
        <p>
            <span class="label">Cơ quan:</span>
            <span>04.32312345</span>
        </p>
        <p>
            <span class="label">Di động:</span>
            <span>016123456789</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ:</span>
            <span><a href="mailto:hotro24h@gmail.com">hotro24h@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Kinh doanh:</span>
            <span><a href="mailto:kinhdoanh24@gmail.com">kinhdoanh24@gmail.com</a></span>
        </p>
    </section>
    </section>
    <section id="socialLoginForm">
    <h3>Bản đồ:</h3>
    <br />
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d711.1845783247513!2d105.76288947587301!3d21.03951405451654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfdcfb79087ef6e73!2sTeppi+Shop!5e1!3m2!1svi!2s!4v1497368794657" width="450" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
</asp:Content>