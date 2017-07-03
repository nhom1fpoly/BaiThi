<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="Assignment.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    Danh mục sản phẩm
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaSP" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="810px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaSP" HeaderText="MÃ" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
            <asp:BoundField DataField="MaLoaiSP" HeaderText="MÃ LOẠI" SortExpression="MaLoaiSP" />
            <asp:BoundField DataField="TenSP" HeaderText="TÊN" SortExpression="TenSP" />
            <asp:BoundField DataField="Gia" HeaderText="GIÁ" SortExpression="Gia" />
            <asp:BoundField DataField="SoLuongSP" HeaderText="SỐ LƯỢNG" SortExpression="SoLuongSP" />
            <asp:BoundField DataField="DonViTinh" HeaderText="ĐƠN VỊ" SortExpression="DonViTinh" />
            <asp:BoundField DataField="DuongDanAnh" HeaderText="ĐƯỜNG DẪN ẢNH" SortExpression="DuongDanAnh" />
            <asp:CommandField ButtonType="Button" CancelText="Bỏ qua" DeleteText="Xóa" EditText="Sửa" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [MaSP], [MaLoaiSP], [TenSP], [Gia], [SoLuongSP], [DonViTinh], [TrangThai], [DuongDanAnh] FROM [SanPham]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaLoaiSP], [TenSP], [Gia], [SoLuongSP], [DonViTinh], [TrangThai]) VALUES (@MaLoaiSP, @TenSP, @Gia, @SoLuongSP, @DonViTinh, @TrangThai)" SelectCommand="SELECT [MaSP], [MaLoaiSP], [TenSP], [Gia], [SoLuongSP], [DonViTinh], [TrangThai] FROM [SanPham] ORDER BY [MaSP]" UpdateCommand="UPDATE [SanPham] SET [MaLoaiSP] = @MaLoaiSP, [TenSP] = @TenSP, [Gia] = @Gia, [SoLuongSP] = @SoLuongSP, [DonViTinh] = @DonViTinh, [TrangThai] = @TrangThai WHERE [MaSP] = @MaSP">
        <DeleteParameters>
            <asp:Parameter Name="MaSP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaLoaiSP" Type="Int32" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="SoLuongSP" Type="Int32" />
            <asp:Parameter Name="DonViTinh" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaLoaiSP" Type="Int32" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="SoLuongSP" Type="Int32" />
            <asp:Parameter Name="DonViTinh" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
            <asp:Parameter Name="MaSP" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

