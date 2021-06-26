<%@ Control Language="c#" Inherits="OnlineFastFood.Header" CodeFile="Header.ascx.cs" %>
<style type="text/css">
    P:first-letter { FONT-SIZE: xx-large; COLOR: #ff0000 }
    .style1
    {
        width: 100%;
        height: 150px;
    }
    .style2
    {
        width: 448px;
    }
</style>


<table class="style1">
    <tr>
        <td bgcolor="#AAAAFF" class="style2">
            <asp:Label ID="lalla" runat="server" Text="HUNGER BUDS" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black" style="text-decoration: underline; color: #800000; font-size: 35pt; font-family: Narkisim" />
        </td>
        <td rowspan="2" bgcolor="#AAAAFF">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="250px" ImageUrl="~/Pics.jpg" style="margin-left: 53px" Width="545px" />
        </td>
    </tr>
    <tr>
        <td bgcolor="#AAAAFF" class="style2">
            <asp:label ID="nkss" runat="server" Text="The Food Ordering Solution" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Large" ForeColor="Black" style="font-family: Mistral; font-weight: 400; font-size: 20pt" />
        </td>
    </tr>
</table>






