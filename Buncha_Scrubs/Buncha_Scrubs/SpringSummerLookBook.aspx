<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SpringSummerLookBook.aspx.cs" Inherits="Buncha_Scrubs.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
     <!-- start of gallery -->

        <asp:Repeater ID="rptGallery" runat="server">
            <ItemTemplate>
                <div class="col-lg-3 col-md-4 col-sm-6">
                   <%-- <a href='<%#Eval("Link")%>'>--%>
                        <img src='<%#Eval("Path")%>' />
                    <%--</a>--%>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <!-- end of gallery -->
</asp:Content>
