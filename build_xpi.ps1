# Build script for Minimize on Close (Fork) XPI
$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$srcDir = Join-Path $scriptDir "src"
$distDir = Join-Path $scriptDir "dist"
$buildDir = Join-Path $scriptDir "build_tmp"
$xpiName = "minimize-on-close-revamped.xpi"
$xpiPath = Join-Path $distDir $xpiName

Write-Host "Building $xpiName..."

# Clean previous build
if (Test-Path $distDir) {
    Remove-Item -Path $distDir -Recurse -Force
}
if (Test-Path $buildDir) {
    Remove-Item -Path $buildDir -Recurse -Force
}

# Create directories
New-Item -ItemType Directory -Path $distDir | Out-Null
New-Item -ItemType Directory -Path $buildDir | Out-Null

# Copy source files
Write-Host "Copying source files..."
Copy-Item -Path "$srcDir\*" -Destination $buildDir -Recurse
if (Test-Path "$scriptDir\LICENSE") {
    Copy-Item -Path "$scriptDir\LICENSE" -Destination $buildDir
}
else {
    Write-Warning "LICENSE file not found in root directory."
}

$zipPath = Join-Path $distDir "minimize-on-close-revamped.zip"

# Create ZIP
Write-Host "Creating ZIP package..."
Compress-Archive -Path "$buildDir\*" -DestinationPath $zipPath -Force

# Rename to XPI
Write-Host "Renaming to XPI..."
Move-Item -Path $zipPath -Destination $xpiPath -Force

# Cleanup
Remove-Item -Path $buildDir -Recurse -Force

Write-Host "Build complete: $xpiPath"
Write-Host "You can now install this file in Thunderbird via 'Install Add-on From File'."
