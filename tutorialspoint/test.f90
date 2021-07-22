program main
   real origo(3), x(3)
   real d, dist
   common/silly/origo

   read (*, *) origo(1), origo(2), origo(3)
10 continue
   read (*, *) x(1), x(2), x(3)
   d = dist(x)
   write (*, *) 'The distance is ', d
   if (x(1) .ge. 0.) goto 10

   stop
end

real function dist(x)
   real x(3)
   real x0, y0, z0
   common/silly/x0, y0, z0

   dist = sqrt((x(1) - x0)**2 + (x(2) - y0)**2 + (x(3) - z0)**2)

   return
end
