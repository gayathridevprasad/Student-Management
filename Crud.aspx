
<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Crud.aspx.cs" Inherits="SIS.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD</title>
    <style type="text/css">  
        .auto-style1 {  
            /*width: 100%;  */
        }  
        .auto-style2 {  
            /* margin-left: 0px; */ 
        }  
        .auto-style3 {  
            /* width: 121px;  */
        }  
    </style>  
</head>
<body>
    <header class="page-header text-center font-small unique-color-dark" id="header">
        <div style="background-color:#0c2f44;">
            <div class="container">
                <div class="row py-4 d-flex align-items-center">
                    <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                        <h2 class="mb-0" style="color:white;"><center>Student Information Management</center></h2>
                    </div>

                </div>




            </div>
        </div>
   

    </header>
    <form id="form1" runat="server">
        <center>
<div style="text-align:center">  
           <h4>Furnish the details given below:</h4>  
            <table class="auto-style1" align="center">  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label1" runat="server" Text="Roll Number"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2"></asp:TextBox></td>  
                </tr> 

                <tr>  
                    <td class="auto-style3">  
                        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />  </td>  
                    <td>  
                        <asp:Button ID="Button2" runat="server" Text="Fetch" OnClick="Button2_Click" />  </td>  
                </tr> 


                
                <tr>  
                    <td class="auto-style3">  
                        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click"/>
                    </td>  
                    <td>  
                        <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click"/>
                    </td>  
                </tr> 


                
            </table>          
        </div>  
            </center>
    </form>
    <footer class="page-footer text-center font-small unique-color-dark" id="footer">
        <div style="background-color:#0c2f44;">
            <div class="container">
                <div class="row py-4 d-flex align-items-center">
                    <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                        <h2 class="mb-0" style="color:white;"><center>Stay Connected with us!!!</center></h2>
                    </div>

                </div>
            </div>
        </div>
        <div class="footer-copyright text-center py-3">
            <center>&copy; <%: DateTime.Now.Year %> - Student Information Management <a href="#">Privacy Policy</a></center>
        </div>

    </footer>
</body>
</html>
