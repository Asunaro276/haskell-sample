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

-- 代数的データ型の例
-- 列挙型
-- data Color = Red | Green | Blue | Yellow deriving (Enum, Show)
-- main = do
--     print $ fromEnum Blue
--     print $ fromEnum Yellow
--     print $ fromEnum Red
--     print $ fromEnum Green
--     print (toEnum 0 :: Color)
--     print (toEnum 1 :: Color)
--     print (toEnum 2 :: Color)
--     print (toEnum 3 :: Color)
    
-- 直積型
data Point = Point Int Int deriving (Show)
-- offset (Point x1 y1) (Point x2 y2) = Point (x1 + x2) (y1 + y2)
-- main = do
--     let p1 = Point 1 2
--         p2 = Point 3 4
--         p3 = offset p1 p2
--     print p3

-- ex)
data Rect = Rect Int Int Int Int deriving (Show)
contains (Rect x y w h) (Point px py) = px >= x && px < x + w && py >= y && py < y + h
-- main = do
--     print $ contains (Rect 2 2 3 3) (Point 1 1)
--     print $ contains (Rect 2 2 3 3) (Point 2 2)
--     print $ contains (Rect 2 2 3 3) (Point 3 3)
--     print $ contains (Rect 2 2 3 3) (Point 4 4)
--     print $ contains (Rect 2 2 3 3) (Point 5 5)

-- 直和型
data Test = TestInt Int
          | TestStr String
          deriving Show

foo (TestInt 1)   = "bar"
foo (TestStr "1") = "baz"
foo _             = "?"
-- main = do
--     print $ foo $ TestInt 0
--     print $ foo $ TestInt 1
--     print $ foo $ TestStr "0"
--     print $ foo $ TestStr "1"

data Shape = Rect Double Double

area :: Shape -> Double
area（Rect x y）= x * y

main = print $ area（Rect 2 3）



-- アクションの例
-- randAlpha = randomRIO ('a', 'z')

-- main = do
--     r <- randAlpha
--     print r
