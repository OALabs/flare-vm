﻿$ErrorActionPreference = 'Continue'

$packageName = 'flarevm.win11.preconfig.fireeye'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$ps1 = Join-Path $toolsDir 'Win11.ps1'
$psm1 = Join-Path $toolsDir 'Win11.psm1'
$preset = Join-Path $toolsDir 'Default.preset'

powershell.exe -NoProfile -File "$ps1" -include "$psm1" -preset "$preset"