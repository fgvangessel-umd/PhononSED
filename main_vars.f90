!-------------------------------------------------------------------------------------
! Global variable storage area
!-------------------------------------------------------------------------------------
! Copyright (c) 2017 Daniel C. Elton
!
! This software is licensed under The MIT License (MIT)
! Permission is hereby granted, free of charge, to any person obtaining a copy of this
! software and associated documentation files (the "Software"), to deal in the Software
! without restriction, including without limitation the rights to use, copy, modify, merge,
! publish, distribute, sublicense, and/or sell copies of the Software, and to permit
! persons to whom the Software is furnished to do so, subject to the following conditions:
!
! The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
!
! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
! BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
! NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
! DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
!-------------------------------------------------------------------------------------
module main_vars
 use mpi
 implicit none
 integer :: Natoms, Nunitcells, AtomsPerMolecule, MoleculesPerUnitCell, AtomsPerUnitCell
 integer :: Neig, lun, luneig, lunout, ik, ia, i, j, idx, ix, Ntimesteps, t, Nk, ie
 integer :: NPointsOut, length, BlockSize, NFullSEDPoints, Ncorrptsout, trun
 logical :: READALL, FULLSED, BTEMD, GULPINPUT, C_TYPE_EIGENVECTOR,  SUPERCELL_EIGENVECTOR
 real(8), parameter :: TwoPi = 2*3.14159d0
 real(8) :: timestep, MaxFreqOut, MinFreqOut, tau_window
 real(8), dimension(3) :: lattice_vector, recip_lat_vec
 real(8), dimension(:), allocatable :: MassPrefac, spectrum_freqs, freqs_smoothed
 real(8), dimension(:), allocatable :: window_fn
 real(8), dimension(:,:), allocatable :: freqs, r, r_eq, k_vectors
 real(8), dimension(:,:,:), allocatable :: all_SED_smoothed, all_corr_fns
 real(8), dimension(3,3) :: box
 double complex, dimension(:,:,:,:), allocatable :: eig_vecs
 real(8), dimension(:,:,:), allocatable :: velocities, coordinates
 double complex, dimension(:), allocatable :: qdot
 double precision, parameter :: Cspeed=3.00d10 ! cm/s
 double precision, parameter :: ps2s=1d-12 ! 1ps in s
 character(len=200) :: model, fvel, feig, fcoord, fileheader, fcoords
 !MPI variables
 integer :: Nnodes=1, pid=0, ierr=0
 integer :: status2(MPI_STATUS_SIZE)

end module main_vars
