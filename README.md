# Posh-Santiago
My personal module.

# To test/debug:
Download module -> run Posh-Santiago.sandbox.ps1 to load.

### Step One: Install psget
```powershell
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
(new-object Net.WebClient).DownloadString("https://raw.githubusercontent.com/psget/psget/master/GetPsGet.ps1") | iex
```


### Step Two: Install Posh-Santiago
```powershell
psget\Install-Module -ModuleUrl https://github.com/sbe-arg/Posh-Santiago/archive/master.zip
```

## Upgrading
From time-to-time *Posh-Santiago* will be updated to include new features.
To update *Posh-Santiago*, execute the following:
```powershell
psget\Install-Module -ModuleUrl https://github.com/sbe-arg/Posh-Santiago/archive/master.zip -Update
```

```powershell
# examples go here
```
