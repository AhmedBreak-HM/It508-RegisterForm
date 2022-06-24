<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="WebFormApp.RegisterForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <div class="form-group row">
        <label for="txtFirstName" class="col-sm-2 col-form-label"></label>
        <div class="col-sm-10">
            <label for="txtFirstName" class="col-form-label text-center text-danger">User Register Form</label>

        </div>

    </div>

    <br />
    <form>

        <div class="form-group row">
            <label for="txtFirstName" class="col-sm-2 col-form-label">First Name</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtFirstName" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group row">

            <label for="txtLastName" class="col-sm-2 col-form-label">Last Name</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtLastName" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </div>
        </div>


        <div class="form-group row">

            <label for="txtUserName" class="col-sm-2 col-form-label">User Name</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtUserName" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </div>
        </div>


        <div class="form-group row">

            <label for="txtUserName" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtPassword" runat="server" type="password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtPassword" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </div>
        </div>


        <div class="form-group row">

            <label for="txtUserName" class="col-sm-2 col-form-label">Confirm Password</label>
            <div class="col-sm-10">

                <asp:TextBox ID="txtConfirmPassword" ForeColor="Red" runat="server" type="password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtConfirmPassword" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="comparePasswords"
                    runat="server"
                    ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirmPassword"
                    ErrorMessage="Your passwords do not match up!"
                    Display="Dynamic" Font-Names="Verdana" ForeColor="Red" />
            </div>
        </div>

        <div class="form-group row">

            <label for="txtUserName" class="col-sm-2 col-form-label">Gender</label>
            <div class="col-sm-10">

                <asp:RadioButtonList ID="RadioButtonListGender" runat="server">
                    <asp:ListItem> Male</asp:ListItem>
                    <asp:ListItem> Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ControlToValidate="RadioButtonListGender" ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group row">

            <label for="txtUserName" class="col-sm-2 col-form-label">address</label>
            <div class="col-sm-10">
                <textarea id="TextAddress" cols="26" rows="2" runat="server" cssclass="form-control"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label for="txtEmail" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtEmail" ForeColor="Red" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </div>
        </div>


        <div class="form-group row">
            <div class="col-sm-10">
                <%--                <button type="submit" class="btn btn-primary" onclick="btnRegister_Click">Sign in</button>--%>
                <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-primary" Text="Sign in" OnClick="btnRegister_Click" />

            </div>
        </div>

        <div class="form-group row">
            <label id="lbResult" runat="server" class="col-sm-2 col-form-label text-success"></label>

            <div class="col-sm-10">
            </div>
        </div>

    </form>



</asp:Content>
