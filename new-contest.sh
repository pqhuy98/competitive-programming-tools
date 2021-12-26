echo "Enter contest's path (e.g. \"Codeforces/635div2\"): "
read CONTEST

mkdir -p src/$CONTEST
cp -R template/* src/$CONTEST

cd src/$CONTEST
echo
echo "Created contest directory $CONTEST !"
echo "Run \`./new\` to create new solution."
echo "Run \`./run a.go\` to run solution."
echo "Happy coding !"
echo
echo "To move to contest directory, run this:"
echo "cd src/$CONTEST"