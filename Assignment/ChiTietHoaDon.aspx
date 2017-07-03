<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="ChiTietHoaDon.aspx.cs" Inherits="Assignment.ChiTietHoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaHD,MaSP" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            MaSP:
            <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Bỏ qua" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MaHD:
            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
            <br />
            MaSP:
            <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
            &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Bỏ qua" />
        </InsertItemTemplate>
        <ItemTemplate>
            Mã hóa đơn:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            Mã sản phẩm:
            <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            Số lượng:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
            &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
            &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaHD] = @original_MaHD AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (@MaHD, @MaSP, @SoLuong)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaHD], [MaSP], [SoLuong] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuong] = @SoLuong WHERE [MaHD] = @original_MaHD AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong">
        <DeleteParameters>
            <asp:Parameter Name="original_MaHD" Type="Int32" />
            <asp:Parameter Name="original_MaSP" Type="Int32" />
            <asp:Parameter Name="original_SoLuong" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
            <asp:Parameter Name="MaSP" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="original_MaHD" Type="Int32" />
            <asp:Parameter Name="original_MaSP" Type="Int32" />
            <asp:Parameter Name="original_SoLuong" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
