foreach($line in Get-Content .\gitControl.txt) {
    $toClone = "git clone https://github.com/Geeksltd/"+$line+"/";
    echo $toClone;
    Invoke-Expression $toClone;
}
