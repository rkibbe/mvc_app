
Add-Type -Assembly “system.io.compression.filesystem”

$source = "C:\temp\"

$destination = "C:\TestZip2"

If(Test-path $destination) {Remove-item $destination}


$level = [System.IO.Compression.CompressionLevel]::Optimal

$Include = $false

[io.compression.zipfile]::CreateFromDirectory($source, $destination, $level, $Include)



 # (Get-ChildItem -filter "c:\*.cc") | % { Write-S3Object -BucketName "cognos_dev_s3" -File $_ -Key $_.name}
