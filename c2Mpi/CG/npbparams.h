c NPROCS = 16 CLASS = C
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  
        integer            na, nonzer, niter
        double precision   shift, rcond
        parameter(  na=150000,
     >              nonzer=15,
     >              niter=75,
     >              shift=110.,
     >              rcond=1.0d-1 )

c number of nodes for which this version is compiled
        integer    nnodes_compiled
        parameter( nnodes_compiled = 16)
        integer    num_proc_cols, num_proc_rows
        parameter( num_proc_cols=4, num_proc_rows=4 )
        logical  convertdouble
        parameter (convertdouble = .false.)
        character*11 compiletime
        parameter (compiletime='13 Oct 2015')
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
