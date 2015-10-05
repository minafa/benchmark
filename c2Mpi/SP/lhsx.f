
c---------------------------------------------------------------------
c---------------------------------------------------------------------

       subroutine lhsx(c)

c---------------------------------------------------------------------
c---------------------------------------------------------------------

c---------------------------------------------------------------------
c This function computes the left hand side for the three x-factors  
c---------------------------------------------------------------------

       include 'header.h'

       double precision ru1
       integer          i, j, k, c


c---------------------------------------------------------------------
c      treat only cell c             
c---------------------------------------------------------------------

c---------------------------------------------------------------------
c      first fill the lhs for the u-eigenvalue                   
c---------------------------------------------------------------------
       do  k = start(3,c), cell_size(3,c)-end(3,c)-1
          do  j = start(2,c), cell_size(2,c)-end(2,c)-1
             do  i = start(1,c)-1, cell_size(1,c)-end(1,c)
                ru1 = c3c4*rho_i(i,j,k,c)
                cv(i) = us(i,j,k,c)
                rhon(i) = dmax1(dx2+con43*ru1, 
     >                          dx5+c1c5*ru1,
     >                          dxmax+ru1,
     >                          dx1)
             end do

             do  i = start(1,c), cell_size(1,c)-end(1,c)-1
                lhs(i,j,k,1,c) =   0.0d0
                lhs(i,j,k,2,c) = - dttx2 * cv(i-1) - dttx1 * rhon(i-1)
                lhs(i,j,k,3,c) =   1.0d0 + c2dttx1 * rhon(i)
                lhs(i,j,k,4,c) =   dttx2 * cv(i+1) - dttx1 * rhon(i+1)
                lhs(i,j,k,5,c) =   0.0d0
             end do
          end do
       end do

c---------------------------------------------------------------------
c      add fourth order dissipation                             
c---------------------------------------------------------------------
       if (start(1,c) .gt. 0) then
          i = 1
          do   k = start(3,c), cell_size(3,c)-end(3,c)-1
             do   j = start(2,c), cell_size(2,c)-end(2,c)-1
                lhs(i,j,k,3,c) = lhs(i,j,k,3,c) + comz5
                lhs(i,j,k,4,c) = lhs(i,j,k,4,c) - comz4
                lhs(i,j,k,5,c) = lhs(i,j,k,5,c) + comz1
  
                lhs(i+1,j,k,2,c) = lhs(i+1,j,k,2,c) - comz4
                lhs(i+1,j,k,3,c) = lhs(i+1,j,k,3,c) + comz6
                lhs(i+1,j,k,4,c) = lhs(i+1,j,k,4,c) - comz4
                lhs(i+1,j,k,5,c) = lhs(i+1,j,k,5,c) + comz1
             end do
          end do
       endif

       do   k = start(3,c), cell_size(3,c)-end(3,c)-1
          do   j = start(2,c), cell_size(2,c)-end(2,c)-1
             do   i=3*start(1,c), cell_size(1,c)-3*end(1,c)-1
                lhs(i,j,k,1,c) = lhs(i,j,k,1,c) + comz1
                lhs(i,j,k,2,c) = lhs(i,j,k,2,c) - comz4
                lhs(i,j,k,3,c) = lhs(i,j,k,3,c) + comz6
                lhs(i,j,k,4,c) = lhs(i,j,k,4,c) - comz4
                lhs(i,j,k,5,c) = lhs(i,j,k,5,c) + comz1
             end do
          end do
       end do

       if (end(1,c) .gt. 0) then
          i = cell_size(1,c)-3
          do   k = start(3,c), cell_size(3,c)-end(3,c)-1
             do   j = start(2,c), cell_size(2,c)-end(2,c)-1
                lhs(i,j,k,1,c) = lhs(i,j,k,1,c) + comz1
                lhs(i,j,k,2,c) = lhs(i,j,k,2,c) - comz4
                lhs(i,j,k,3,c) = lhs(i,j,k,3,c) + comz6
                lhs(i,j,k,4,c) = lhs(i,j,k,4,c) - comz4

                lhs(i+1,j,k,1,c) = lhs(i+1,j,k,1,c) + comz1
                lhs(i+1,j,k,2,c) = lhs(i+1,j,k,2,c) - comz4
                lhs(i+1,j,k,3,c) = lhs(i+1,j,k,3,c) + comz5
             end do
          end do
       endif

c---------------------------------------------------------------------
c      subsequently, fill the other factors (u+c), (u-c) by a4ing to 
c      the first  
c---------------------------------------------------------------------
       do   k = start(3,c), cell_size(3,c)-end(3,c)-1
          do   j = start(2,c), cell_size(2,c)-end(2,c)-1
             do   i = start(1,c), cell_size(1,c)-end(1,c)-1
                lhs(i,j,k,1+5,c)  = lhs(i,j,k,1,c)
                lhs(i,j,k,2+5,c)  = lhs(i,j,k,2,c) - 
     >                            dttx2 * speed(i-1,j,k,c)
                lhs(i,j,k,3+5,c)  = lhs(i,j,k,3,c)
                lhs(i,j,k,4+5,c)  = lhs(i,j,k,4,c) + 
     >                            dttx2 * speed(i+1,j,k,c)
                lhs(i,j,k,5+5,c) = lhs(i,j,k,5,c)
                lhs(i,j,k,1+10,c) = lhs(i,j,k,1,c)
                lhs(i,j,k,2+10,c) = lhs(i,j,k,2,c) + 
     >                            dttx2 * speed(i-1,j,k,c)
                lhs(i,j,k,3+10,c) = lhs(i,j,k,3,c)
                lhs(i,j,k,4+10,c) = lhs(i,j,k,4,c) - 
     >                            dttx2 * speed(i+1,j,k,c)
                lhs(i,j,k,5+10,c) = lhs(i,j,k,5,c)
             end do
          end do
       end do

       return
       end



