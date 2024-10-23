
# start
# input the directory path
$directory = Read-Host "Please enter the directory you want to search"

# input the type that want to search
$filetype = Read-Host "Please enter the file type you want to search for (e.g., .txt, .ps1)"

# start search and show file
Get-ChildItem -Path $directory* -Filter *$filetype | Select-Object Name, Directory | Format-Table -AutoSize
# end