echo "# Build MMORPGC"

echo "## Clear unused resource"
make clean

echo "## Generate Object"
make generateObj

echo "## Compile"
make

echo "# Done"