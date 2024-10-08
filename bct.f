csssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
c
c
      subroutine bct
c
c
c     temperature-boundary-conditions for the confining surfaces  
c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
	include 'covar'
c
c     write(6,*) 'has entered bct'
      s1 = (1-jn1)*0.5
      s2 = (1+jn1)*0.5
      s3 = (1-jnim)*0.5
      s4 = (1+jnim)*0.5
      s5 = (1-kn1)*0.5 
      s6 = (1+kn1)*0.5
      s7 = (1-knim)*0.5
      s8 = (1+knim)*0.5
c
      tw5 = 5.*twall
      te4 = 4.*tentry
      f112 = 11./2.
      f32 = 3./2.
c
c
      if(ipara.eq.1) then
      i = 1
      do 700 j=1,jim
      do 700 k=1,kim
      t1(i,j,k) = 4.*tinlet(j,k)-4.*t1(i+1,j,k)+t1(i+2,j,k) 
c      t1(i,j,k) = tinlet(j,k)
 700  continue
      else
      i = 1
      do 100 j=1,jim
      do 100 k=1,kim
      t1(i,j,k) = te4-4.*t1(i+1,j,k)+t1(i+2,j,k)
 100  continue
      end if
c
c
      j=1
      do 200 i=1,iim
      do 200 k=1,kim
      t1(i,j,k) = s1*(tw5-f112*t1(i,j+1,k)+f32*t1(i,j+2,k))
     *           +s2*t1(i,j+1,k)
 200  continue
c
c
      j=jim
      do 300 i=1,iim
      do 300 k=1,kim
      t1(i,j,k) = s3*(tw5-f112*t1(i,j-1,k)+f32*t1(i,j-2,k))
     *          +s4*t1(i,j-1,k)
 300  continue
c
c                      
      k = 1
      do 400 i=1,iim
      do 400 j=1,jim
      t1(i,j,k) = s5*(tw5-f112*t1(i,j,k+1)+f32*t1(i,j,k+2))
     *          +s6*t1(i,j,k+1)
 400  continue
c
c
      k = kim
      do 500 i=1,iim
      do 500 j=1,jim
      t1(i,j,k) = s7*(tw5-f112*t1(i,j,k-1)+f32*t1(i,j,k-2))
     *          +s8*t1(i,j,k-1)
 500  continue
c
c                                                 
      i = iim
      do 600 j=1,jim
      do 600 k=1,kim
      t1(i,j,k) = 2.*t1(i-1,j,k)-t1(i-1,j,k) 
 600  continue
c
c
c     write (6,*) 'leaving bct'      
      return
      end
c
c
csssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
