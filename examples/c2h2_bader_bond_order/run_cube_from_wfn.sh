#!/bin/bash -l

FOLDER="../c2h2_cp2k_scf"

mkdir out

mpirun -n 2 python3 ../../cube_from_wfn.py \
  --cp2k_input_file "$FOLDER"/cp2k.inp \
  --basis_set_file ../BASIS_MOLOPT \
  --xyz_file "$FOLDER"/geom.xyz \
  --wfn_file "$FOLDER"/PROJ-RESTART.wfn \
  --output_dir "./out/" \
\
  --dx 0.1 \
  --eval_cutoff 14.0 \
  --eval_region "n-2.0_H" "p2.0_H" "n-3.0_C" "p3.0_C" "n-3.0_C" "p3.0_C" \
\
  --n_homo 2 \
  --n_lumo 2 \
  --orb_square \
\
  --charge_dens \
  --charge_dens_artif_core \
  --spin_dens \
\
