c CLASS = D
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  
        integer nx_default, ny_default, nz_default
        parameter (nx_default=1024, ny_default=1024, nz_default=1024)
        integer nit_default, lm, lt_default
        parameter (nit_default=50, lm = 10, lt_default=10)
        integer debug_default
        parameter (debug_default=0)
        integer ndim1, ndim2, ndim3
        parameter (ndim1 = 10, ndim2 = 10, ndim3 = 10)
        integer one, nr, nv, ir
        parameter (one=1)
        logical  convertdouble
        parameter (convertdouble = .false.)
        character compiletime*11
        parameter (compiletime='26 Oct 2015')
        character npbversion*3
        parameter (npbversion='3.3')
        character cs1*34
        parameter (cs1='ifort -fopenmp -mcmodel=medium -g ')
        character cs2*6
        parameter (cs2='$(F77)')
        character cs3*46
        parameter (cs3='-L/cluster/software/VERSIONS/openmpi.intel-...')
        character cs4*46
        parameter (cs4='-I/cluster/software/VERSIONS/openmpi.intel-...')
        character cs5*12
        parameter (cs5='-O3 -fopenmp')
        character cs6*12
        parameter (cs6='-O3 -fopenmp')
        character cs7*6
        parameter (cs7='randdp')
