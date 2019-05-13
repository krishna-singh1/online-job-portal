<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLogin.master" AutoEventWireup="true" CodeFile="JPShow.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button ID="Button1" runat="server" Text="Show all Resume" OnClick="Button1_Click" />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Size in bytes" DataField="Size" />
                <asp:BoundField HeaderText="File Type" DataField="Type" />
            </Columns>
            <EmptyDataTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
</asp:Content>

