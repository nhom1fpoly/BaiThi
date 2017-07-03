<%@ Page Title="Sản phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewSanPham.aspx.cs" Inherits="Assignment.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="631px">
        <ItemTemplate>
            <asp:Image ID="DuongDanAnhLabel" runat="server" ImageUrl='<%# Eval("DuongDanAnh") %>' Width="144px" Height="200px"/>
            <br />
            MaSP:
            <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            TenSP:
            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
            <br />
            Gia:
            <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [DuongDanAnh], [MaSP], [TenSP], [Gia] FROM [SanPham]"></asp:SqlDataSource>
    </asp:Content>
