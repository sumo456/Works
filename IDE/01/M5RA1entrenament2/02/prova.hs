-- Funció per sumar 1
suma1 :: Int -> Int
suma1 x = x + 1

-- Funció per multiplicar per 2
multiplicaPer2 :: Int -> Int
multiplicaPer2 x = x * 2

-- Funció per convertir un nombre a una cadena
aCadena :: Int -> String
aCadena x = "El resultat és: " ++ show x

-- Composició de funcions
composicio :: (a -> b) -> (b -> c) -> (a -> c)
composicio f g = \x -> g (f x)

-- Funció principal per mostrar el resultat
mostraResultat :: Int -> IO ()
mostraResultat valorInicial = do
    -- Combinem les funcions per sumar 1, multiplicar per 2 i convertir a cadena
    let operacio = aCadena . multiplicaPer2 . suma1
    -- Mostrem el resultat
    putStrLn (operacio valorInicial)

-- Cridem la funció amb un valor inicial
main :: IO ()
main = mostraResultat 5

