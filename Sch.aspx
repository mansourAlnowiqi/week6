<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="Sch.aspx.cs" Inherits="Sch" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="templatemo_post_top">
    <h1>schedule </h1>
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
                   <asp:Label ID="lblid" runat="server" style="display:none"></asp:Label>
                   </td>
               <td>
                   &nbsp;
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       
                       SelectCommand="SELECT * FROM [Schdata]"></asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT [AreaID], [AreaName] FROM [Area]"></asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [Interval]"></asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [TankType]"></asp:SqlDataSource>
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
                    <asp:Label ID="Label2" runat="server" Text="schedule ID"></asp:Label>
               </td>
               <td style="text-align: left">
                <asp:TextBox ID="tbid" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
               </td>
               <td style="text-align: left">
                   &nbsp;</td>
           </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbdate" runat="server" Width="200px"></asp:TextBox>
                       <asp:CalendarExtender ID="tbdate_CalendarExtender" runat="server" 
                           Enabled="True" Format="MM/dd/yyyy" TargetControlID="tbdate">
                       </asp:CalendarExtender>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label4" runat="server" Text="Area "></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:DropDownList ID="cmbarea" runat="server" DataSourceID="SqlDataSource2" 
                           DataTextField="AreaName" DataValueField="AreaID" Width="400px">
                       </asp:DropDownList>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label6" runat="server" Text="Tank Type"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:DropDownList ID="cmbtype" runat="server" DataSourceID="SqlDataSource3" 
                           DataTextField="TypeName" DataValueField="TypeID" Width="400px">
                       </asp:DropDownList>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label10" runat="server" Text="Interval"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:DropDownList ID="cmbi" runat="server" DataSourceID="SqlDataSource4" 
                           DataTextField="IntervalName" DataValueField="IntervalID" Width="400px">
                       </asp:DropDownList>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbprice" runat="server"></asp:TextBox>
                       <asp:FilteredTextBoxExtender ID="tbprice_FilteredTextBoxExtender" 
                           runat="server" Enabled="True" TargetControlID="tbprice" ValidChars="1234567890">
                       </asp:FilteredTextBoxExtender>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td style="text-align: right">
                       <asp:Label ID="Label9" runat="server" Text="Tank number"></asp:Label>
                   </td>
                   <td style="text-align: left">
                       <asp:TextBox ID="tbno" runat="server"></asp:TextBox>
                       <asp:FilteredTextBoxExtender ID="tbno_FilteredTextBoxExtender" runat="server" 
                           Enabled="True" TargetControlID="tbno" ValidChars="0123456789">
                       </asp:FilteredTextBoxExtender>
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
                       &nbsp;</td>
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
                                   <asp:Button ID="btnclear" runat="server" CssClass="button" Text="Reset" 
                                       onclick="btnclear_Click" />
                               </td>
                               <td style="text-align: center">
                                   <asp:Button ID="btnadd" runat="server" CssClass="button" Text="Add" 
                                       onclick="btnadd_Click" />
                               </td>
                               <td style="text-align: center">
                                   <asp:Button ID="btnupdate" runat="server" CssClass="button" Text="Update" 
                                       onclick="btnupdate_Click" />
                               </td>
                               <td style="text-align: center">
                                   <asp:Button ID="btndelete" runat="server" CssClass="button" 
                                       onclick="btndelete_Click" Text="Delete" />
                               </td>
                           </tr>
                       </table>
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       &nbsp;</td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: center">
                       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                           AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                           DataKeyNames="SchID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                           GridLines="None" Width="100%" 
                           onselectedindexchanged="GridView1_SelectedIndexChanged">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:BoundField DataField="SchID" HeaderText="Schedule ID" 
                                   ReadOnly="True" SortExpression="SchID" />
                               <asp:TemplateField HeaderText="Schedule Date" SortExpression="schDate">
                                   <EditItemTemplate>
                                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("schDate","{0:MM/dd/yyyy}") %>'></asp:TextBox>
                                   </EditItemTemplate>
                                   <ItemTemplate>
                                       <asp:Label ID="Label1" runat="server" Text='<%# Bind("schDate","{0:MM/dd/yyyy}") %>'></asp:Label>
                                   </ItemTemplate>
                               </asp:TemplateField>
                               <asp:BoundField DataField="Price" HeaderText="Price" 
                                   SortExpression="Price" />
                               <asp:BoundField DataField="TankNo" HeaderText="TankNo" 
                                   SortExpression="TankNo" />
                               <asp:BoundField DataField="TypeName" HeaderText="TypeName" 
                                   SortExpression="TypeName" />
                               <asp:BoundField DataField="AreaName" HeaderText="AreaName" 
                                   SortExpression="AreaName" />
                               <asp:BoundField DataField="IntervalName" HeaderText="IntervalName" 
                                   SortExpression="IntervalName" />
                               <asp:CommandField SelectText="Show" ShowSelectButton="True" />
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
                   </td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td colspan="2" style="text-align: right">
                       &nbsp;</td>
                   <td style="text-align: left">
                       &nbsp;</td>
               </tr>
       </table>             	                        
                 
       </ContentTemplate>
       </asp:UpdatePanel>
                  
     <div class="clear"></div>
                        
   </div>

</asp:Content>

