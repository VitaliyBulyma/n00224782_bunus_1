<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartesian.aspx.cs" Inherits="Cartesian_Plane.cartesian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cartesian Plane</title>
    <link rel="stylesheet" type="text/css " href="styles.css" />
</head>
<body>
    <div id="page_wraper">
        <h1>Quadrant Checker Tool</h1>
        <form id="form1" runat="server">
            
            <section id="x_section">
                <label>Enter X value: </label>
                <asp:TextBox runat="server" ID="user_input_x"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    EnableClientScript="true"
                    ErrorMessage="<br>Please enter X value as a number:"
                    ControlToValidate="user_input_x"></asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server"
                    Operator="DataTypeCheck"
                    Type="Integer"
                    ControlToValidate="user_input_x"
                    ErrorMessage="<br>Value must be a whole number"></asp:CompareValidator>
            </section>
            <section id="y_section">
                <label>Enter Y value: </label>
                <asp:TextBox runat="server" ID="user_input_y"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    EnableClientScript="true"
                    ErrorMessage="<br>Please enter Y value as a number:"
                    ControlToValidate="user_input_y"></asp:RequiredFieldValidator>
                <%--validator copied from bdukesbdukes. “Asp.net Validation to Make Sure Textbox Has Integer Values.” 
                Stack Overflow, stackoverflow.com/questions/1427629/asp-net-validation-to-make-sure-textbox-has-integer-values.--%>
                <asp:CompareValidator runat="server"
                    Operator="DataTypeCheck"
                    Type="Integer"
                    ControlToValidate="user_input_y"
                    ErrorMessage="<br>Value must be a whole number"></asp:CompareValidator>
            </section>

            <section>
                <asp:Button runat="server" Text="Submit" />
            </section>
        </form>
        <div id="result_q1" runat="server"></div>
        <div id="result_q2" runat="server"></div>
        <div id="result_q3" runat="server"></div>
        <div id="result_q4" runat="server"></div>
        
        <img src="gr1.gif" id="graph" />
     
        <%-- image copied from “Graphs.” Cartesian Coordinates in 2D,
        MathsFirst, Institute of Fundamental Sciences, Massey University,
        mathsfirst.massey.ac.nz/Algebra/CoordSystems/Coordinates2D.htm.--%>
                
    </div>
</body>
</html>
