echo -n "Enter contest's path (e.g. \"Codeforces/635div2\"): "
read CONTEST

mkdir -p $CONTEST
cp -R template/* $CONTEST

cd $CONTEST
echo
echo "Created contest directory $CONTEST !"
echo "Run ./new to create new solution."
echo "Run ./run to run solution."
echo "Happy coding !"
echo
echo "To move to contest directory, run this:"
echo "cd $CONTEST"