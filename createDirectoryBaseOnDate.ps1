param([String]$dateFormat="yyyy-MM-dd", [String]$baseDir=(Split-Path $PSCommandPath -Parent));
$myDate = Get-Date -Format $dateFormat;
$pathToCheck = $baseDir+"/"+$myDate;

if(Test-Path -Path $pathToCheck) {
    Write-Output "Folder '$myDate' arleady exists in '$baseDir'";
    timeout /t 10;
} else {
    New-Item -Path $baseDir -ItemType Directory -Name $myDate;
    Write-Output "Folder '$myDate' was created in '$baseDir'";
    timeout /t 10;
}