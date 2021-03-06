
# Saritasa.NewRelic

## Initialize-NewRelic

### Synopsis
Initialize New Relic interactions.

### Syntax
Initialize-NewRelic \[-ApiKey\] &lt;String&gt; \[&lt;CommonParameters&gt;\]

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
			<td><nobr>ApiKey</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Your API key used to access the New Relic.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

### Note
Read more about how to generate an API key: https://docs.newrelic.com/docs/apis/rest-api-v2/requirements/api-keys\#rest-api


## Update-NewRelicDeployment

### Synopsis
Notifies New Relic about a new deployment.

### Syntax
Update-NewRelicDeployment \[-ApplicationId\] &lt;String&gt; \[-Revision\] &lt;String&gt; \[&lt;CommonParameters&gt;\]

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
			<td><nobr>ApplicationId</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Application Id in New Relic to update.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Revision</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>Unique ID of current deployment.  
Can be any string, but usually is a version number or Git commit checksum.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

### Note
Initialize-NewRelic cmdlet should be called prior to this cmdlet.


### Examples
**EXAMPLE 1**
```
Initialize-NewRelic $env:NewRelicApiKey

```
Update-NewRelicDeployment 'aaabbbccc123' '1.1.2'  
  
Notifies New Relic about a new deployment with key name '1.1.2' for the 'aaabbbccc123' application.
