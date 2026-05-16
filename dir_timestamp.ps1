#Get-ChildItem * | Sort-Object -Property LastWriteTime -Descending | Select-Object FullName, LastWritetime

Get-ChildItem * | Sort-Object -Property LastWriteTime -Descending | Select-Object @{n='LastWriteTime';e={'{0:yyyy-MM-dd HH:mm:ss}' -f $_.LastWriteTime}}, Name, Length

