<%@ Control Language="c#" Inherits="OnlineFastFood.Header" CodeFile="Header.ascx.cs" %>
<style type="text/css">P:first-letter { FONT-SIZE: xx-large; COLOR: #ff0000 }
    .style1
    {
        width: 100%;
        height: 150px;
        margin-bottom: 0px;
    }
    .style2
    {
        width: 448px;
    }
    </style>


<table class="style1">
    <tr>
        <td bgcolor="#CCFFFF" class="style2">
        <asp:Label ID="lalla" runat="server" 
                Text="Taste Buds" Font-Bold="True" Font-Size="XX-Large" 
                ForeColor="Black" />
            </td>
        <td rowspan="2" bgcolor="#CCFFFF">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="176px" 
                ImageUrl="~/Images/fast-food-flash-drive-1.jpg" style="margin-left: 53px" 
                Width="445px" />
        </td>
    </tr>
    <tr>
        <td bgcolor="#CCFFFF" class="style2">
            <asp:label ID="nkss" runat="server" 
                Text="The Food Ordering Solution" BackColor="#CCFFFF" Font-Bold="True" 
                Font-Size="Large" ForeColor="Black" />
        &nbsp;
        </td>
    </tr>
</table>




