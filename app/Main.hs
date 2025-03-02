module Main (main) where

import System.Random
import Lib

main :: IO ()
-- main = someFunc
-- main = putStrLn "Hello world!"
-- x = 123 :: Int
-- y = 234 :: Int
-- main = print $ x + y
add x y = x + y
fact 0 = 1
fact n = n * fact (n - 1)
f 1 = "1"
f a = "?"
fib 0 = 0 
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)
fib2 n
    | n == 0 = 0
    | n == 1 = 1
    | n > 1 = fib2 (n - 1) + fib2 (n - 2)
-- main = do
--     print $ add 3 5
--     print $ add 10 5
--     print c
--     print $ 6 `add` 5
--     print $ (+) 6 5
--     print $ fact 5
--     print $ f 1
--     print $ f 2
--     print $ f 3
--     print $ fib 2
--     print $ fib 3
--     print $ fib 4
--     print $ fib 5
--     print $ fib 6
--     print $ fib 7
--     print $ fib2 2
--     print $ fib2 3
--     print $ fib2 4
--     print $ fib2 5
--     print $ fib2 6
--     print $ fib2 7
--     where
--         a = 10
--         b = 20
--         c = add a b

randAlpha = randomRIO ('a', 'z')

main = do
    r <- randAlpha
    print r

data Color = Red | Green | Blue | Yellow
