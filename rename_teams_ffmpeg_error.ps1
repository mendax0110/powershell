$FolderList = @("\AppData\Local\Microsoft\Teams",
                "\AppData\Roaming\Microsoft\Teams")
cls
 while ($true) {                        
     $menu = Read-Host "Möchten Sie den Teams Ordner ändern? (Y/N): "
     if ($menu -match "n") {       
         write-host "Ende" 
         start-sleep 5             
         break                     
     } 
     if ($menu -match "y") {      
         $Username = Read-Host "Bitte gib den Benutzername ein: "
         if ($Username -eq "") {                                   
             Write-Host "Benutzername kann nicht leer sein!"
             continue                                              
         }
         foreach ($fldr in $FolderList) {                          
             $TargetDir = "C:\Users\" + $username + $fldr 
             Rename-Item $TargetDir                                
         }    
     } else {
         Write-host "Eingabe nicht korrekt! Bitte erneut versuchen"            
     }
 }
