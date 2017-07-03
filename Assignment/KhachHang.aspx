<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="Assignment.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
            <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="SoDienThoai" HeaderText="SoDienThoai" SortExpression="SoDienThoai" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([TenKH], [Email], [SoDienThoai], [DiaChi]) VALUES (@TenKH, @Email, @SoDienThoai, @DiaChi)" SelectCommand="SELECT [MaKH], [TenKH], [Email], [SoDienThoai], [DiaChi] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [Email] = @Email, [SoDienThoai] = @SoDienThoai, [DiaChi] = @DiaChi WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="SoDienThoai" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="SoDienThoai" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaHD,MaSP" DataSourceID="SqlDataSource2">
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
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaHD:
            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
            <br />
            MaSP:
            <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaHD] = @original_MaHD AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (@MaHD, @MaSP, @SoLuong)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaHD], [MaSP], [SoLuong] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuong] = @SoLuong WHERE [MaHD] = @original_MaHD AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong">
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
