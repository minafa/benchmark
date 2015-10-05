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
        parameter (compiletime='13 Apr 2015')
        character npbversion*3
        parameter (npbversion='3.3')
        character cs1*42
        parameter (cs1='gfortran-4.8 -fopenmp -mcmodel=medium -m64')
        character cs2*6
        parameter (cs2='$(F77)')
        character cs3*6
        parameter (cs3='(none)')
        character cs4*6
        parameter (cs4='(none)')
        character cs5*2
        parameter (cs5='-O')
        character cs6*2
        parameter (cs6='-O')
        character cs7*6
        parameter (cs7='randi8')
