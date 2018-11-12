mkdir 1-box
cd 1-box
cp ../0-start/* .
editconf -f start.gro -bt dodecahedron -d 1.6 -o box.16.gro
genbox -cp box.16.gro -cs spc216.gro -p start.top -o wbox.gro
