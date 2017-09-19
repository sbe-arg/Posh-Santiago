# Posh-Santiago
My personal module.

# To test/debug:
Download module -> run Posh-Santiago.sandbox.ps1 to load.

### Step One: Install psget
```powershell
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex
```


### Step Two: Install Posh-AwsEasy
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
