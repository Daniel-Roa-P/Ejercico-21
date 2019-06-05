import System.Random

main = do
 carta1 <- randomRIO (1,13)
 carta2 <- randomRIO (1,13)
 
 print(carta1)
 print(carta2)
 
 print(primeraSuma (mayor carta1 carta2))
 
mayor :: Int->Int->Int
mayor a b = if a >= b then a
		else b
		
menor :: Int->Int->Int
menor a b = if a < b then a
		else b

 
primeraSuma::Int->Int
primeraSuma a = if a == 1 then 11
		else a
