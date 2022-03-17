<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Claims: <%= ((System.Security.Claims.ClaimsIdentity)User.Identity).Claims.Count() %></h2>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div>
                        <b><%# DataBinder.Eval(Container, "DataItem.Type") %> (<%# DataBinder.Eval(Container, "DataItem.ValueType") %>): </b>
                        <%# DataBinder.Eval(Container, "DataItem.Value")%>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-md-4">
            <% foreach (var key in Request.Headers.AllKeys)
                { %>
            <div><%= key %>: <%= Request.Headers[key] %></div>
            <%} %>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
