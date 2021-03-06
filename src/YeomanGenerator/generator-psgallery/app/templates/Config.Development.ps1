Expand-PsakeConfiguration `
@{
    Configuration = 'Debug'
<% if (webEnabled) { %>    WebServer = 'localhost'
    SiteName = 'example.com'
    DeployUsername = 'undefined'
    DeployPassword = 'undefined'
    WwwrootPath = 'C:\inetpub\wwwroot'<% } %>
<% if (desktopEnabled || windowsServiceEnabled) { %>    AppServer = 'localhost'
    ApprootPath = 'C:\approot'<% } %>
<% if (adminTasksEnabled || desktopEnabled || windowsServiceEnabled) { %>    AdminUsername = 'Administrator'
    AdminPassword = 'secret'<% } %>
<% if (windowsServiceEnabled) { %>    ServiceUsername = 'Administrator'
    ServicePassword = 'secret'<% } %>
<% if (webEnabled || windowsServiceEnabled) { %>
    DatabaseServer = '.\SQLEXPRESS'
    DatabaseUsername = 'sa'
    DatabasePassword = '123'
<% } %>
}