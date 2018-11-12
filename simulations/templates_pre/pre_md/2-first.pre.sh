cd 5-equil
mpirun -np 8 gmx_mpi mdrun -s equil.tpr -ntomp 1 -v > Log 
cd ../6-pre.nvt
cp ../5-equil/confout.gro conf.gro
cp ../5-equil/start.top .
cp ../5-equil/*itp .
gmx_mpi grompp -f pre.nvt.mdp -c conf.gro -p start.top -o nvt.tpr -maxwarn 2
mpirun -np 8 gmx_mpi mdrun -s nvt.tpr -ntomp 1 -v > log
cd ../7-pre.npt
cp ../6-pre.nvt/confout.gro conf.gro
cp ../6-pre.nvt/start.top .
cp ../6-pre.nvt/*itp .
gmx_mpi grompp -f pre.npt.mdp -c conf.gro -p start.top -o npt.tpr -maxwarn 2
mpirun -np 8 gmx_mpi mdrun -s npt.tpr -ntomp 1 -v > log 
cd ../8-eq
cp ../7-pre.npt/confout.gro conf.gro
cp ../7-pre.npt/start.top .
cp ../7-pre.npt/*itp .
gmx_mpi grompp -f eq.mdp -c conf.gro -p start.top -o eq.tpr -maxwarn 2
mpirun -np 8 gmx_mpi mdrun -s eq.tpr -ntomp 1 -v > log

