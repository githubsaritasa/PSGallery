
# Saritasa.Prtg

## Get-PrtgSensorId

### Synopsis
Retrieves the sensor information by server key.

### Syntax
Get-PrtgSensorId \[-Server\] &lt;String&gt; \[&lt;CommonParameters&gt;\]

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
			<td><nobr>Server</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>The server key.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

### Examples
**EXAMPLE 1**
```
Initialize-Prtg prtg.local admin Qwerty123 @{ Server1 = 10123; Server2 = 10124; }

```
Get-PrtgSensorId Server1

## Initialize-Prtg

### Synopsis


### Syntax
Initialize-Prtg \[-PrtgUrl\] &lt;String&gt; \[-Credential\] &lt;PSCredential&gt; \[-Sensors\] &lt;Hashtable&gt; \[&lt;CommonParameters&gt;\]

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
			<td><nobr>PrtgUrl</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td></td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Credential</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td></td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
		<tr>
			<td><nobr>Sensors</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td></td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

### Examples
**EXAMPLE 1**
```
Initialize-Prtg prtg.local admin Qwerty123 @{ Server1 = 10123; Server2 = 10124; }

```


## Start-PrtgSensor

### Synopsis
Starts the PRTG sesor.

### Syntax
Start-PrtgSensor \[-Server\] &lt;String&gt; \[&lt;CommonParameters&gt;\]

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
			<td><nobr>Server</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>The server key associated with a sensor.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

### Examples
**EXAMPLE 1**
```
Initialize-Prtg prtg.local admin Qwerty123 @{ Server1 = 10123; Server2 = 10124; }

```
Start-PrtgSensor Server1

## Stop-PrtgSensor

### Synopsis
Stops the PRTG sensor.

### Syntax
Stop-PrtgSensor \[-Server\] &lt;String&gt; \[&lt;CommonParameters&gt;\]

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
			<td><nobr>Server</nobr></td>
			<td class="visible-lg visible-md"></td>
			<td>The server key associated with a sensor.</td>
			<td class="visible-lg visible-md">true</td>
			<td class="visible-lg">false</td>
			<td class="visible-lg"></td>
		</tr>
	</tbody>
</table>

### Examples
**EXAMPLE 1**
```
Initialize-Prtg prtg.local admin Qwerty123 @{ Server1 = 10123; Server2 = 10124; }

```
Stop-PrtgSensor Server1
