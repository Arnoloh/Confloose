#!bin/bash
cd ~/afs
clear
for files in *
do
if [ -d "$files" ]
then
cd $files/
for file in *
do
mv "$file" ".$file"
done
echo $files
ls -a
cd ..
fi
echo "---------------------------"
mv "$files" ".$files"
done
echo "---------------------------"
echo "Repo courant"
ls -a
cd .confs/
echo "---------------------------"
echo ".confs"
ls -a
echo "Done"




