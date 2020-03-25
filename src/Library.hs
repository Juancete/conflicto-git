module Library where
import PdePreludat

bonoPara :: Number -> Number
bonoPara sueldo | sueldo < 10000 = 10000
 | sueldo < 30000 = 5000
 | otherwise = 0
