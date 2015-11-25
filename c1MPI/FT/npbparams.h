c NPROCS = 4 CLASS = D
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  
        integer nx, ny, nz, maxdim, niter_default, ntdivnp, np_min
        parameter (nx=2048, ny=1024, nz=1024, maxdim=2048)
        parameter (niter_default=25)
        parameter (np_min = 4)
        parameter (ntdivnp=((nx*ny)/np_min)*nz)
        double precision ntotal_f
        parameter (ntotal_f=1.d0*nx*ny*nz)
        logical  convertdouble
        parameter (convertdouble = .false.)
        character*11 compiletime
        parameter (compiletime='24 Oct 2015')
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
