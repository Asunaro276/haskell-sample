module Random
  ( randAlpha,
    dice,
    showDice,
    shuffle,
  )
where

import Data.List (sortOn)
import System.Random

-- ランダムなアルファベット文字を生成
randAlpha :: IO Char
randAlpha = randomRIO ('a', 'z')

-- サイコロを振る
dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

-- サイコロを振って結果を表示
showDice :: IO Int
showDice = do
  a <- getStdRandom $ randomR (1, 6)
  print a
  return a

-- リストをシャッフル
shuffle :: [a] -> IO [a]
shuffle [] = return []
shuffle xs = do
  gen <- newStdGen
  let pairs = zip (randoms gen :: [Int]) xs
      sorted = map snd $ sortOn fst pairs
  return sorted
