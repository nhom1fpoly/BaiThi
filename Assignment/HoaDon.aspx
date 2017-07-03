<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="HoaDon.aspx.cs" Inherits="Assignment.HoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MaHD" HeaderText="Mã hóa đơn" InsertVisible="False" ReadOnly="True" SortExpression="MaHD" />
            <asp:BoundField DataField="NgayLap" HeaderText="Ngày lập" SortExpression="NgayLap" />
            <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" SortExpression="MaKH" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([NgayLap], [MaKH]) VALUES (@NgayLap, @MaKH)" SelectCommand="SELECT [MaHD], [NgayLap], [MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayLap] = @NgayLap, [MaKH] = @MaKH WHERE [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NgayLap" Type="DateTime" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NgayLap" Type="DateTime" />
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="MaHD" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
