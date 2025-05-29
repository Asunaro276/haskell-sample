module Math
  ( add,
    fact,
    fib,
    fib2,
  )
where

-- 加算関数
add :: Int -> Int -> Int
add x y = x + y

-- 階乗関数
fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)

-- フィボナッチ数列（再帰版）
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- フィボナッチ数列（ガード版）
fib2 :: Int -> Int
fib2 n
  | n == 0 = 0
  | n == 1 = 1
  | n > 1 = fib2 (n - 1) + fib2 (n - 2)
  | otherwise = 0 -- 負の数の場合
