$root="./";

$DFSFolders = get-childitem -path $root | where-object {$_.Psiscontainer -eq "True"} |select-object name

foreach ($DFSfolder in $DFSfolders)
{
#For Each Folder obtain objects in a specified directory, recurse then filter for .sft file type, obtain the filename, then group, sort and eventually show the file name and total incidences of it.
$folder = Join-Path -Path $root -ChildPath $DFSfolder.Name;
cd $folder;
git pull;
cd ..;

}
