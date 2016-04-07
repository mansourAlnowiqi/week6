<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="templatemo_post_top">
    <h1>Login</h1>
    </div>
   <div class="templatemo_post_mid">
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
           <table style="width: 100%;">
           <tr>
               <td>
                   &nbsp;
               </td>
               <td>
                   &nbsp;
                   </td>
               <td>
                   &nbsp;
               </td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   &nbsp;
               </td>
               <td>
                   &nbsp;
               </td>
               <td>
                   &nbsp;
               </td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   &nbsp;
                   </td>
               <td style="text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="User ID"></asp:Label>
               </td>
               <td style="text-align: left">
                <asp:TextBox ID="tbid" runat="server"></asp:TextBox>
               </td>
               <td style="text-align: left">
                   &nbsp;</td>
           </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbpass" runat="server" TextMode="Password"></asp:TextBox>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       &nbsp;</td>
                   <td style="text-align: left">
                       <asp:Label ID="lblerr" runat="server" ></asp:Label>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       <table style="width:100%;">
                           <tr>
                               <td style="text-align: center">
                                   <asp:Button ID="btnlogin" runat="server" CssClass="button" Text="Login" 
                                       onclick="btnlogin_Click" />
                               </td>
                               <td style="text-align: center">
                                   <asp:Button ID="btnregister" runat="server" CssClass="button" Text="Register" 
                                       onclick="btnregister_Click" />
                               </td>
                               <td width="400px">
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                       SelectCommand="SELECT * FROM [Area]"></asp:SqlDataSource>
                               </td>
                           </tr>
                       </table>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
       </table>             	                        
                 
       </ContentTemplate>
       </asp:UpdatePanel>
                        
     <div class="clear"></div>
                        
   </div>

</asp:Content>

