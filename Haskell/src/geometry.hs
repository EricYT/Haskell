module Geometry
( sphereVolume
, sphereArea
, cubeVolume
, cubeArea
, cuboidArea
, cuboidVolume
) where


sphereVolume :: Float -> Float
sphereVolume radius = (4.0 / 3.0) * pi * (radius ^ 3)

sphereArea :: Float -> Float
sphereArea radius = 4 * pi * (radius ^ 2)

cubeVolume :: Float -> Float
cubeVolume side = cuboidVolume side side side

cubeArea :: Float -> Float
cubeArea side = cuboidArea side side side

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume x y z = rectArea x y * z

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea x y z = rectArea x y * 2 + rectArea x z * 2 + rectArea y z * 2 

rectArea :: Float -> Float -> Float
rectArea x y = x * y
 
