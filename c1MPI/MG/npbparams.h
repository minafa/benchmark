c NPROCS = 128 CLASS = C
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  
        integer nprocs_compiled
        parameter (nprocs_compiled = 128)
        integer nx_default, ny_default, nz_default
        parameter (nx_default=512, ny_default=512, nz_default=512)
        integer nit_default, lm, lt_default
        parameter (nit_default=20, lm = 7, lt_default=9)
        integer debug_default
        parameter (debug_default=0)
        integer ndim1, ndim2, ndim3
        parameter (ndim1 = 7, ndim2 = 7, ndim3 = 6)
        logical  convertdouble
        parameter (convertdouble = .false.)
        character*11 compiletime
        parameter (compiletime='19 Jan 2016')
        character*3 npbversion
        parameter (npbversion='3.3')
        character*45 cs1
        parameter (cs1='mpifort -mcmodel=medium -fno-range-check -g  ')
        character*9 cs2
        parameter (cs2='$(MPIF77)')
        character*46 cs3
        parameter (cs3='-L/cluster/software/VERSIONS/openmpi.intel-...')
        character*46 cs4
        parameter (cs4='-I/cluster/software/VERSIONS/openmpi.intel-...')
        character*3 cs5
        parameter (cs5='-O3')
        character*3 cs6
        parameter (cs6='-O3')
        character*6 cs7
        parameter (cs7='randi8')
