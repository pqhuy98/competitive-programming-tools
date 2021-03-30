# Competitive Programming Tool
Contain solution template generator for competitive programming using CPP and JS on Linux terminal without IDE.

## Installation:
```
git clone https://github.com/pqhuy98/competitive-programming-tools
cd competitive-programming-tools
```

## Start coding for a new competition
When joining a new competition, the user wants to create a new directory to store his solution files for many problems.
Run the script `new-contest.sh`. Type in the competition's name, it will automatically create a directory for the competition and template files.

```
./new-contest.sh
```

Output and input:
```
Enter contest's path (e.g. \"Codeforces/635div2\"):
>> Codeforces/635div2
Created contest directory Codeforces/635div2 !
Run ./new to create new solution.
Run ./run to run solution.
Happy coding !"

To move to contest directory, run this:
cd Codeforces/635div2
```
Change directory to the new competition's directory. Copy the last output line above!
```
cd Codeforces/635div2
```

## Initiate new solution
To create a new solution, run the script `new.sh`, type in your programming language, problem name, an whether this is an interactive problem.
```
./new.sh
```
Output and input:
```
Enter programming language (cpp or js): js
Enter problem's name: A
Is this an interactive solution (\"y\" for yes, anything else for no)? No
Created A.js and A.txt
```
In the example above, two files `A.js` and `A.txt` will be created. `A.js` is your solution file to code on, `A.txt` is the input file.

## Run solution
After you have done coding, run the script `run.sh` with the solution's file name. It will compile the code and run with content of `A.txt` redirected to program's stdin.
```
./run.sh A.js
```

## Run interactive problem
This part is for interactive problems in Google Code Jam. I'm too lazy to explain, please read the script `run-i.sh` and section <b>Interactive Problems</b> [here](https://codingcompetitions.withgoogle.com/codejam/faq).
