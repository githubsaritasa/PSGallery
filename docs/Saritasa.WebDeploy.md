
# Saritasa.WebDeploy

## Initialize-WebDeploy

### Synopsis
Configure Web Deploy default settings.

### Syntax
Initialize-WebDeploy \[\[-Credential\] &lt;PSCredential&gt;\] \[\[-MsdeployPath\] &lt;String&gt;\] \[\[-MsdeployPort\] &lt;Int32&gt;\] \[&lt;CommonParameters&gt;\]

### Parameters

<table class="table table-striped table-bordered table-condensed visible-on">
	<thead>
		<tr>
			<th>Name</th>
			<th class="visible-lg visible-md">Alias</th>
			<th>Description</th>
			<th class="visible-lg visible-md">Required?</th>
			<th class="visible-lg">Pipeline Input</th>
			<th class="visible-lg">Default Value</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><nobr>Credential</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Credentials to be used for authorization.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>MsdeployPath</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Provide to override folder location of Microsoft Web Deploy utility.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>MsdeployPort</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Provide to override default MS Deploy port.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg">0</td>
		</tr>
	</tbody>
</table>

### Note
Leave -Credential empty for NTLM.
For NTLM support execute on server:
Set-ItemProperty HKLM:Software\\Microsoft\\WebManagement\\Server WindowsAuthenticationEnabled 1
Restart-Service WMSVC
https://blogs.msdn.microsoft.com/carlosag/2011/12/13/using-windows-authentication-with-web-deploy-and-wmsvc/


## Invoke-PackageBuild

### Synopsis
Package a project.

### Syntax
Invoke-PackageBuild \[-ProjectPath\] &lt;String&gt; \[-PackagePath\] &lt;String&gt; \[\[-Configuration\] &lt;String&gt;\] \[\[-Platform\] &lt;String&gt;\] \[\[-Precompile\] &lt;Boolean&gt;\] \[\[-BuildParams\] &lt;String\[\]&gt;\] \[&lt;CommonParameters&gt;\]

### Parameters

<table class="table table-striped table-bordered table-condensed visible-on">
	<thead>
		<tr>
			<th>Name</th>
			<th class="visible-lg visible-md">Alias</th>
			<th>Description</th>
			<th class="visible-lg visible-md">Required?</th>
			<th class="visible-lg">Pipeline Input</th>
			<th class="visible-lg">Default Value</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><nobr>ProjectPath</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Path to project file.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>PackagePath</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Path to where the resulting package should be saved.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Configuration</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Target build configuration.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg">Release</td>
		</tr>
		<tr>
			<td><nobr>Platform</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Target build platform.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg">AnyCPU</td>
		</tr>
		<tr>
			<td><nobr>Precompile</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Whether or not project should be precompiled before packaging.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg">True</td>
		</tr>
		<tr>
			<td><nobr>BuildParams</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Any additional parameters to be passed to MSBuild utility.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

### Examples
**EXAMPLE 1**
```
Invoke-PackageBuild src/WebApp.csproj WebApp.zip -BuildParams ('/p:AspnetMergePath="C:\Program Files (x86)\Microsoft SDKs\Windows\v8.1A\bin\NETFX 4.5.1 Tools"')

```


## Invoke-WebDeployment

### Synopsis
Invokes a web deployment process.

### Syntax
Invoke-WebDeployment \[-PackagePath\] &lt;String&gt; \[-ServerHost\] &lt;String&gt; \[-SiteName\] &lt;String&gt; \[-Application\] &lt;String&gt; \[-AllowUntrusted\] \[\[-MSDeployParams\] &lt;String\[\]&gt;\] \[&lt;CommonParameters&gt;\]

### Parameters

<table class="table table-striped table-bordered table-condensed visible-on">
	<thead>
		<tr>
			<th>Name</th>
			<th class="visible-lg visible-md">Alias</th>
			<th>Description</th>
			<th class="visible-lg visible-md">Required?</th>
			<th class="visible-lg">Pipeline Input</th>
			<th class="visible-lg">Default Value</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><nobr>PackagePath</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Path to package to be deployed.  
To generate the package the Invoke-PackageBuild command can be used.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>ServerHost</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Hostname of target machine.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>SiteName</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Web site name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Application</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Application name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>AllowUntrusted</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>When specified, untrusted SSL connections are allowed. Otherwise, untrusted SSL connections are not allowed.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg">False</td>
		</tr>
		<tr>
			<td><nobr>MSDeployParams</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Any additional parameters to be passed to MSDeploy utility.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

## Invoke-WebSiteDeployment

### Synopsis
Deploys ASP.NET web site \(app without project\) to remote server. It's similar to Sync-WebContent, but creates IIS application.

### Syntax
Invoke-WebSiteDeployment \[-Path\] &lt;String&gt; \[-ServerHost\] &lt;String&gt; \[-SiteName\] &lt;String&gt; \[-Application\] &lt;String&gt; \[-AllowUntrusted\] \[\[-MSDeployParams\] &lt;String\[\]&gt;\] \[&lt;CommonParameters&gt;\]

### Parameters

<table class="table table-striped table-bordered table-condensed visible-on">
	<thead>
		<tr>
			<th>Name</th>
			<th class="visible-lg visible-md">Alias</th>
			<th>Description</th>
			<th class="visible-lg visible-md">Required?</th>
			<th class="visible-lg">Pipeline Input</th>
			<th class="visible-lg">Default Value</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><nobr>Path</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Folder path to be deployed.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>ServerHost</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Hostname of target machine.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>SiteName</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Web site name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Application</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Application name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>AllowUntrusted</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>When specified, untrusted SSL connections are allowed. otherwise, untrusted SSL connections are not allowed.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg">False</td>
		</tr>
		<tr>
			<td><nobr>MSDeployParams</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Any additional parameters to be passed to MSDeploy utility.</td>
			<td class="visible-lg visible-md">false</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

## Start-AppPool

### Synopsis
Starts the application pool for specified application on a remote machine.

### Syntax
Start-AppPool \[-ServerHost\] &lt;String&gt; \[-SiteName\] &lt;String&gt; \[-Application\] &lt;String&gt; \[&lt;CommonParameters&gt;\]

### Parameters

<table class="table table-striped table-bordered table-condensed visible-on">
	<thead>
		<tr>
			<th>Name</th>
			<th class="visible-lg visible-md">Alias</th>
			<th>Description</th>
			<th class="visible-lg visible-md">Required?</th>
			<th class="visible-lg">Pipeline Input</th>
			<th class="visible-lg">Default Value</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><nobr>ServerHost</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Hostname of target machine.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>SiteName</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Web site name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Application</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Application name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

### Note
The recycleApp provider should be delegated to WDeployAdmin.


## Stop-AppPool

### Synopsis
Stops the application pool for specified application on a remote machine.

### Syntax
Stop-AppPool \[-ServerHost\] &lt;String&gt; \[-SiteName\] &lt;String&gt; \[-Application\] &lt;String&gt; \[&lt;CommonParameters&gt;\]

### Parameters

<table class="table table-striped table-bordered table-condensed visible-on">
	<thead>
		<tr>
			<th>Name</th>
			<th class="visible-lg visible-md">Alias</th>
			<th>Description</th>
			<th class="visible-lg visible-md">Required?</th>
			<th class="visible-lg">Pipeline Input</th>
			<th class="visible-lg">Default Value</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><nobr>ServerHost</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Hostname of target machine.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>SiteName</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Web site name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Application</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Application name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

### Note
The recycleApp provider should be delegated to WDeployAdmin.


## Sync-IisApp

### Synopsis
Copies IIS app content from local server to remote server.

### Syntax
Sync-IisApp \[-SiteName\] &lt;String&gt; \[-Application\] &lt;String&gt; \[-ServerHost\] &lt;String&gt; \[&lt;CommonParameters&gt;\]

### Parameters

<table class="table table-striped table-bordered table-condensed visible-on">
	<thead>
		<tr>
			<th>Name</th>
			<th class="visible-lg visible-md">Alias</th>
			<th>Description</th>
			<th class="visible-lg visible-md">Required?</th>
			<th class="visible-lg">Pipeline Input</th>
			<th class="visible-lg">Default Value</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><nobr>SiteName</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Web site name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Application</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Application name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>ServerHost</nobr></td>
			<td class="visible-lg visible-md">DestinationServer</td>
			<td>Hostname of target machine.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

## Sync-WebContent

### Synopsis
Synchronizes web site file structure between local and remote servers.

### Syntax
Sync-WebContent -ContentPath &lt;String&gt; -ServerHost &lt;String&gt; -SiteName &lt;String&gt; -Application &lt;String&gt; \[&lt;CommonParameters&gt;\]

Sync-WebContent -ContentPath &lt;String&gt; -ServerHost &lt;String&gt; -SiteName &lt;String&gt; -AutoDestination \[&lt;CommonParameters&gt;\]

### Parameters

<table class="table table-striped table-bordered table-condensed visible-on">
	<thead>
		<tr>
			<th>Name</th>
			<th class="visible-lg visible-md">Alias</th>
			<th>Description</th>
			<th class="visible-lg visible-md">Required?</th>
			<th class="visible-lg">Pipeline Input</th>
			<th class="visible-lg">Default Value</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><nobr>ContentPath</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Folder path on local machine to be synchronized.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>ServerHost</nobr></td>
			<td class="visible-lg visible-md">DestinationServer</td>
			<td>Hostname of target machine.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>SiteName</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Web site name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Application</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Application name.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>AutoDestination</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>If set, the destination will be specified automatically.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg">False</td>
		</tr>
	</tbody>
</table>
