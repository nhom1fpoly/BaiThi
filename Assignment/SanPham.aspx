<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="Assignment.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    Danh mục sản phẩm<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaSP" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Mã sản phẩm:
            <br />
            <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            Tên sản phẩm:<br />
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            Mã loại sản phẩm:<br />
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            Giá:<br />
            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            Số lượng:<br />
            <asp:TextBox ID="SoLuongSPTextBox" runat="server" Text='<%# Bind("SoLuongSP") %>' />
            <br />
            Đơn vị tính:<br />
            <asp:TextBox ID="DonViTinhTextBox" runat="server" Text='<%# Bind("DonViTinh") %>' />
            <br />
            Trạng thái:<br />
            <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Bind("TrangThai") %>' />
            <br />
            Đường dẫn ảnh:<br />
            <asp:TextBox ID="DuongDanAnhTextBox" runat="server" Text='<%# Bind("DuongDanAnh") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Bỏ qua" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Tên sản phẩm:<br />
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            Mã loại sản phẩm:<br />
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            Giá:<br />
            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            Số lượng:<br />
            <asp:TextBox ID="SoLuongSPTextBox" runat="server" Text='<%# Bind("SoLuongSP") %>' />
            <br />
            Đơn vị tính:<br />
            <asp:TextBox ID="DonViTinhTextBox" runat="server" Text='<%# Bind("DonViTinh") %>' />
            <br />
            Trạng thái:<br />
            <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Bind("TrangThai") %>' />
            <br />
            Đường dẫn ảnh:<br />
            <asp:TextBox ID="DuongDanAnhTextBox" runat="server" Text='<%# Bind("DuongDanAnh") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Bỏ qua" />
        </InsertItemTemplate>
        <ItemTemplate>
            Mã sản phẩm:
            <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            Tên sản phẩm:
            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            Mã loại sản phẩm:
            <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            Giá:
            <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            Số lượng:
            <asp:Label ID="SoLuongSPLabel" runat="server" Text='<%# Bind("SoLuongSP") %>' />
            <br />
            Đơn vị tính:
            <asp:Label ID="DonViTinhLabel" runat="server" Text='<%# Bind("DonViTinh") %>' />
            <br />
            Trạng thái:
            <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Bind("TrangThai") %>' Enabled="false" />
            <br />
            Đường dẫn ảnh:
            <asp:Label ID="DuongDanAnhLabel" runat="server" Text='<%# Bind("DuongDanAnh") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
            &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
            &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND [MaLoaiSP] = @original_MaLoaiSP AND [Gia] = @original_Gia AND [SoLuongSP] = @original_SoLuongSP AND [DonViTinh] = @original_DonViTinh AND [TrangThai] = @original_TrangThai AND [DuongDanAnh] = @original_DuongDanAnh" InsertCommand="INSERT INTO [SanPham] ([TenSP], [MaLoaiSP], [Gia], [SoLuongSP], [DonViTinh], [TrangThai], [DuongDanAnh]) VALUES (@TenSP, @MaLoaiSP, @Gia, @SoLuongSP, @DonViTinh, @TrangThai, @DuongDanAnh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaSP], [TenSP], [MaLoaiSP], [Gia], [SoLuongSP], [DonViTinh], [TrangThai], [DuongDanAnh] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [MaLoaiSP] = @MaLoaiSP, [Gia] = @Gia, [SoLuongSP] = @SoLuongSP, [DonViTinh] = @DonViTinh, [TrangThai] = @TrangThai, [DuongDanAnh] = @DuongDanAnh WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND [MaLoaiSP] = @original_MaLoaiSP AND [Gia] = @original_Gia AND [SoLuongSP] = @original_SoLuongSP AND [DonViTinh] = @original_DonViTinh AND [TrangThai] = @original_TrangThai AND [DuongDanAnh] = @original_DuongDanAnh">
        <DeleteParameters>
            <asp:Parameter Name="original_MaSP" Type="Int32" />
            <asp:Parameter Name="original_TenSP" Type="String" />
            <asp:Parameter Name="original_MaLoaiSP" Type="Int32" />
            <asp:Parameter Name="original_Gia" Type="Decimal" />
            <asp:Parameter Name="original_SoLuongSP" Type="Int32" />
            <asp:Parameter Name="original_DonViTinh" Type="String" />
            <asp:Parameter Name="original_TrangThai" Type="Boolean" />
            <asp:Parameter Name="original_DuongDanAnh" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="MaLoaiSP" Type="Int32" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="SoLuongSP" Type="Int32" />
            <asp:Parameter Name="DonViTinh" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
            <asp:Parameter Name="DuongDanAnh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="MaLoaiSP" Type="Int32" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="SoLuongSP" Type="Int32" />
            <asp:Parameter Name="DonViTinh" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
            <asp:Parameter Name="DuongDanAnh" Type="String" />
            <asp:Parameter Name="original_MaSP" Type="Int32" />
            <asp:Parameter Name="original_TenSP" Type="String" />
            <asp:Parameter Name="original_MaLoaiSP" Type="Int32" />
            <asp:Parameter Name="original_Gia" Type="Decimal" />
            <asp:Parameter Name="original_SoLuongSP" Type="Int32" />
            <asp:Parameter Name="original_DonViTinh" Type="String" />
            <asp:Parameter Name="original_TrangThai" Type="Boolean" />
            <asp:Parameter Name="original_DuongDanAnh" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;
    </asp:Content>

