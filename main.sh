#!/bin/bash
echo "Make a directory called output"
mkdir output
echo "move/copy your text file into output"
mv text.txt ./output
echo "cd into output"
cd output
echo "read the contends of your created text file into a new text file called read.txt"
cat text.txt > read.txt
echo "run a pwd command and ls command, save their outputs to files called pwd.txt and ls.txt"
pwd > pwd.txt 
ls > ls.txt
echo "make a copy of your text file into a file called copy.txt"
cp text.txt copy.txt
echo "create an alias to print today's date"
alias printdate='date "+%Y-%m-%d"'
printdate > date.txt 
echo "count the words in your text file into a file called textcount.txt" 
wc -w text.txt > textcount.txt
echo "save first five lines of a ps command as process.txt"
ps aux | head -n 5 > process.txt 
echo "save first five lines of ifconfig command as netstat.txt"
ifconfig | head -n 5 > netstat.txt
echo "save first five lines of mount command as mount.txt"
mount | head -n 5 > mount.txt
echo "make a file called permissions.txt and it give it rwx to all groups"
touch permissions.txt 
chmod 777 permissions.txt 
echo "create a shell variable called TESTENV1 and set it to "test""
export TESTENV="test"
echo "run a grep command for all words in your text file with at least 3 letters, save to a file called regex.txt"
grep -o '\b[a-zA-Z]\{3,\}\b' text.txt > regex.txt 
echo "navigate up a level - back to the extra-credit directory"
cd ..
