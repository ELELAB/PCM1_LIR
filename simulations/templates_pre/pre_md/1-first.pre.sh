cd 2-min
cp ../1-box/* .
gmx_mpi grompp -f min.mdp -c wbox.gro -p start.top -o min.tpr
mpirun -np 8 gmx_mpi mdrun -s min.tpr -ntomp 1 -v
cd ../3-ions
cp ../2-min/*itp .
cp ../2-min/confout.gro conf.gro
cp ../2-min/start.top .
gmx_mpi grompp -f min.mdp -c conf.gro -p start.top -o ions.tpr
gmx_mpi genion -s ions.tpr -neutral -p start.top -conc 0.150 -o subions.150mM.gro <<EOF
SOL
EOF
cd ../4-min.ions
cp ../3-ions/*itp .
cp ../3-ions/*top .
cp ../3-ions/subions* .
gmx_mpi grompp -f min.mdp -c subions.150mM.gro -p start.top -o min.tpr
mpirun -np 8 gmx_mpi mdrun -s min.tpr -ntomp 1 -v
cd ../5-equil/
cp ../4-min.ions/confout.gro conf.gro
cp ../4-min.ions/*itp .
cp ../4-min.ions/start.top .
gmx_mpi genrestr -f conf.gro <<EOF
Protein
EOF
gmx_mpi grompp -f equil.mdp -c conf.gro -p start.top -o equil.tpr
