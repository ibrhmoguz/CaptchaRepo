<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Captcha Control Demo</title>
        <script type="text/javascript" language="javascript">
            function RefreshImage(valImageId) {
                var objImage = document.getElementById(valImageId)
                if (objImage == undefined) {
                    return;
                }
                var now = new Date();
                objImage.src = objImage.src.split('?')[0] + '?x=' + now.toUTCString();
            }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; margin-top: 20px;">
        
        <img src="captcha.ashx" id="imgCaptcha" alt="Güvenlik Resmi" />&nbsp;<a href="javascript:void(0);" onclick="RefreshImage('imgCaptcha');">Yenile</a><br />
        
        <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
