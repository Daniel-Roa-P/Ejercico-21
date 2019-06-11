import System.Random

escribir::String->IO ()
escribir m= do putStr m
               putStr "\n" 

mayor :: Int->Int->Int
mayor a b = if a >= b then a
		else b
		
menor :: Int->Int->Int
menor a b = if a < b then a
		else b

getInt :: IO Int
getInt = do line <- getLine
            return (read line :: Int)
 
primeraSuma::Int->Int->Int
primeraSuma a b= if a == 1 && b>=10 then 21
		else if a == 1 && b<10 then 11+b
		else if b>=10 then a+10
		else a+b		
		
preguntar::Int->IO()
preguntar x 
  = do do escribir "ingrese una opcion: "
	  escribir "1. pedir carta"
	  escribir "2. plantarse"
	  n <- getInt
	  if n == 1 then escribir "pasando carta"
	  else escribir "te quedaste"
	  
main = do
 carta1 <- randomRIO (1,13)
 carta2 <- randomRIO (1,13)
 
 print(carta1)
 print(carta2)
 
 print(primeraSuma (menor carta1 carta2) (mayor carta1 carta2))
 
 preguntar 5