import System.Random

main = do
 carta1 <- randomRIO (1,13)
 carta2 <- randomRIO (1,13)
 
 print(carta1)
 print(carta2)
 
 print(primeraSuma (menor carta1 carta2) (mayor carta1 carta2))
 
mayor :: Int->Int->Int
mayor a b = if a >= b then a
		else b
		
menor :: Int->Int->Int
menor a b = if a < b then a
		else b

 
primeraSuma::Int->Int->Int
primeraSuma a b= if a == 1 && b>=10 then 21
		else if a == 1 && b<10 then 11+b
		else if b>=10 then a+10
		else a+b
