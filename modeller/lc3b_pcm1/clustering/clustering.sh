#concatenate pdb files with theseus
#theseus can be downloaded from http://www.theseus3d.org/
#it is also in the template dir
cp ../../templates/theseus_x86.gzip
tar -xvf theseus_x86.gzip
rm theseus_x86.gzip #after checking that the thesues folder is properly extracted
cd theseus_x86/
rm -r -f examples
cp ../../lc3b_cep131_lir2.B9999*pdb.
cp ../../lc3b_cep131_lir2.B9999*pdb .
./theseus lc3b_cep131_lir2.B9999*.pdb
rm lc3b_cep131_lir2.B9999*pdb #after checking that theseus have run properly
# remove the first lines from the the  theseus_sup.pdb file and save it as merged_models.pdb which could be use for the clustering
cp theseus_sup.pdb merged_models.pdb
vim merged_models.pdb
# create two new groups to add to the gromacs default ones with a index.ndx - we need a group for the protein (ri 1-125) and a group for the peptide (ri 132-137) - ask to make_ndx the list of residues (l) to check if they are all there - also consider that make_ndx will renumber everything in a continuous way so they residue id do not correspond to the one in the pdb file - for the peptide group select only the core residues of the LIR (i.e. the one corresponding to the XXWXXL)
make_ndx -f model1.pdb -o index.ndx <<eof
ri 1-125
ri 132-137
q
eof
#calculate the rmsd matrix aligning on the protein chain and calculating the rmds on the core peptide
g_rms -f merged_models.pdb -s model1.pdb -o rmsd.xvg -m rmsd_matrix.xpm -n index.ndx << eof
10
11
eof 
#clustering - different algorithm could be used in this example linkage
# run  with the cutoff equal to average rmsd
g_cluster -f merged_models.pdb -s model1.pdb -dm rmsd_matrix.xpm -o rmsd_clust.xpm -g cluster.log -sz clust_size.xvg -cl clusters.pdb -clid clust_id.xvg -n index.ndx -method gromos -cutoff 0.12 << eof
10
11
eof
#remove backupped copies from the first g_cluster run
rm *.1*
#plot (for example with gnuplot) cluster size over cluster ID to identify the most populated clusters
# a template file for gnuplot is provided as cluster_size_plot.pnl and can be customized
#if you are working in remote you would need the graphical interface to run it
#it is advisable to put a limit to the xaxis to the first 10-20 clusters if there are many more 
cp ../../templates/cluster_size_plot.pnl .
xvg2octave clust_size.xvg
gnuplot cluster_size_plot.pnl
pdb_split -n 1,2,3 clusters.pdb  # to extract the average structures of the cluster of interest

