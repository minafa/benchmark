c NPROCS = 8 CLASS = B
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  
        integer nx, ny, nz, maxdim, niter_default, ntdivnp, np_min
        parameter (nx=512, ny=256, nz=256, maxdim=512)
        parameter (niter_default=20)
        parameter (np_min = 8)
        parameter (ntdivnp=((nx*ny)/np_min)*nz)
        double precision ntotal_f
        parameter (ntotal_f=1.d0*nx*ny*nz)
        logical  convertdouble
        parameter (convertdouble = .false.)
        character*11 compiletime
        parameter (compiletime='10 Sep 2015')
        character*3 npbversion
        parameter (npbversion='3.3')
        character*46 cs1
        parameter (cs1='mpifort -mcmodel=medium -fno-range-check -g...')
        character*9 cs2
        parameter (cs2='$(MPIF77)')
        character*12 cs3
        parameter (cs3='-L/usr/local')
        character*20 cs4
        parameter (cs4='-I/usr/local/include')
        character*2 cs5
        parameter (cs5='-O')
        character*2 cs6
        parameter (cs6='-O')
        character*6 cs7
        parameter (cs7='randdp')
