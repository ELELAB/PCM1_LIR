#comparative modeling with multiple templates
from modeller import *              # Load standard Modeller classes
from modeller.automodel import *    # Load the automodel class

class MyModel(automodel):
     def select_atoms(self):
        # Select residues 1 and 2 (PDB numbering)
        #return selection(self.residue_range('1:', '2:'))

        # The same thing from chain A (required for multi-chain models):
        # return selection(self.residue_range('1:A', '2:A'))
        
        # Residues 4, 6, 10:
        # return selection(self.residues['4'], self.residues['6'],
        #                  self.residues['10'])
           return selection(self)
     def user_after_single_model(self):
        # Report on symmetry violations greater than 1A after building
        # each model:
        self.rename_segments(segment_ids=('A', 'B'), renumber_residues=[1, 1090])
        # All residues except 1-5:
        #  return selection(self) - selection(self.residue_range('6:A', '28:A'), self.residue_range('42:A', '63:A'))
        #       Restrain the specified CA-CA distance to 10 angstroms (st. dev.=0.1)
        #       Use a harmonic potential and X-Y distance group.
     def special_restraints(self, aln):
        rsr = self.restraints
        at = self.atoms   
        rsr.add(forms.gaussian(group=physical.xy_distance,
                               feature=features.distance(at['OH:25:A'],
                                                         at['NZ:128:B']),
                               mean=3.0, stdev=0.5))
env = environ()
# directories for input atom files
env.io.atom_files_directory = ['.', '../atom_files']

env.io.hetatm = True
# selected atoms do not feel the neighborhood
# env.edat.nonbonded_sel_atoms = 2

a = MyModel(env,
            alnfile  = 'xxx.ali', # alignment filename
            knowns   = ('4xc2_B_F'),     # codes of the templates
            sequence = 'gabarap_pcm1_lir2')               # code of the target
a.starting_model= 1                 # index of the first model
a.ending_model  = 1000              # index of the last model
                                    # (determines how many models to calculate)
a.make()                            # do the actual comparative modeling
