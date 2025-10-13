Always use echo in below format, dont use brackets
echo helloworld
echo "hello world"
echo 'hello world'

Dont give any space between $( while writing scripts

Dont give any space for command substitution
correct one ex :- A=$(hostname)
incorrectone ex:- A = $(hostname)

Day 5
for version 1  -- grep ^- it it will just grep sentense that start with - 
for version 2
   [ ! -d "$DIR" ] → checks if the given path is NOT a directory.
   find "$DIR" -maxdepth 1 -type f → searches inside the given directory ($DIR), but only at the first level (not going into subfolders). It lists only files (-type f).

Day 6

For userinput related files read command is case sensitive.

Script 7 

  Basic match calculator , 

   $((A / B)) is the correct way because:

   $(...) = command substitution (runs external commands)

  $((...)) = arithmetic expansion (does math inside bash)
  
   Spaces inside are optional, but recommended for readability
   
   must have spaces around it → if [ $operation == "+" ]

   both will work if [ $operation == "+" ] and if [ "$operation" == "+" ]


   script 9

   This script will print first 10 lines of file and file name is taken as user input

   script 13

   cp *.jpg "$D" copies all .jpg files to $D.

2>/dev/null hides “No such file” errors if no .jpg files exist.

$? checks if the cp command succeeded.
