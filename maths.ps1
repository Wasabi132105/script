# start,set continue to y
Write-Host "Thank you for using my Math script. input '!' to quit"
$continue = "y"
while ( $continue -ne "n" ) {

# input num1,type '!' to quit
     write-host "Please enter first number:"
     $num1 = read-host
     if ($num1 -eq "!") {
        write-host "thank you for using!Exiting..."
        break
     }
     $num1 = [int]$num1


# input num2,type '!' to quit 
     write-host "Please enter second number:"
     $num2 = read-host
     if ($num2 -eq "!") {
        write-host "thank you for using!Exiting..."
        break
     }
     $num2 = [int]$num2


# choose Optype
     write-host "please choose operation type(+,-,*,/,also type '!'to exit)"
     $Optype = read-host
     if ($Optype -eq "!") {
        write-host "thank you for using!Exiting..."
        break
     }
     


# calculation
     if ($Optype -eq "+") {
        $NumOutput = $num1 + $num2
     }

     elseif ($Optype -eq "-") {
        $NumOutput = $num1 - $num2
     }

     elseif ($Optype -eq "*") {
        $NumOutput = $num1 * $num2
     }

     elseif ($Optype -eq "/") {
        $NumOutput = $num1 / $num2
     }

     else {
        write-host "Invalid input,please try again"
        continue
     }

# output
     write-host "Output: $NumOutput"

# ask if user wants to continue
   do {
       write-host "Do you want to continue? please type 'y' or 'n'"
         $continue = Read-Host

     if ($continue -eq "y") {
        break
     }

     elseif ($continue -eq "n") {
        Write-Host "Exiting..."
        break
     } 
     
     else {
        Write-Host "Invalid input, please try again."
        continue
     } 
   } while ($true)
}
#end
Write-Host "Thank you for using! Ending..."