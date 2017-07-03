<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="LoaiSanPham.aspx.cs" Inherits="Assignment.LoaiSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    Loại sản phẩm
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource1" Width="310px">
        <Columns>
            <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại" InsertVisible="False" ReadOnly="True" SortExpression="MaLoaiSP" />
            <asp:BoundField DataField="TenLoaiSP" HeaderText="Tên loại" SortExpression="TenLoaiSP" />
            <asp:CommandField CancelText="Bỏ qua" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" ButtonType="Button" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [MaLoaiSP], [TenLoaiSP] FROM [LoaiSanPham]"></asp:SqlDataSource>
</asp:Content>
