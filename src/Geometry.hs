module Geometry
  ( Color (..),
    Point (..),
    Rect (..),
    Shape (..),
    offset,
    contains,
    area,
  )
where

-- 色の列挙型
data Color = Red | Green | Blue | Yellow deriving (Enum, Show)

-- 点の直積型
data Point = Point Int Int deriving (Show)

-- 矩形の型
data Rect = Rect Int Int Int Int deriving (Show)

-- 図形の型
data Shape = Rectangle Double Double deriving (Show)

-- 点のオフセット計算
offset :: Point -> Point -> Point
offset (Point x1 y1) (Point x2 y2) = Point (x1 + x2) (y1 + y2)

-- 矩形内に点が含まれるかチェック
contains :: Rect -> Point -> Bool
contains (Rect x y w h) (Point px py) = px >= x && px < x + w && py >= y && py < y + h

-- 図形の面積計算
area :: Shape -> Double
area (Rectangle x y) = x * y
