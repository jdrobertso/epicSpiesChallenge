<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="epicSpiesChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="newStyle1">
            <asp:Image ID="Image1" runat="server" Height="190px" ImageUrl="D:\User\Documents\repos\epicSpiesChallenge\epicSpiesChallenge\App_Data\epic-spies-logo.jpg" Width="140px" />
                <br />
                <br />
                Spy New Assignment Form</h1>
                Spy Code Name:
            <asp:TextBox ID="spyNameBox" runat="server"></asp:TextBox>
            <br />
            <br />
            New Assignment Name:
            <asp:TextBox ID="assignNameBox" runat="server"></asp:TextBox>
            <br />
            <br />
            End Date of Previous Assignment: <br />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            Start Date of New Assignment:<br />
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            <br />
            Projected End Date of New Assignment:<br />
            <asp:Calendar ID="Calendar3" runat="server"></asp:Calendar>
            <br />
            <asp:Button ID="okButton" runat="server" OnClick="okButton_Click" Text="Assign Spy" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
            <br />
            <br />
                <br />

        </div>
    </form>
</body>
</html>
