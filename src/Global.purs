module Global
  ( nan
  , isNaN
  , infinity
  , isFinite
  , readInt
  , readFloat
  ) where

foreign import nan "var nan = NaN;" :: Number

foreign import isNaN :: Number -> Boolean

foreign import infinity "var infinity = Infinity;" :: Number

foreign import isFinite :: Number -> Boolean

foreign import readInt
  "function readInt(radix) {\
  \  return function(n) {\
  \    return parseInt(n, radix);\
  \  };\
  \}" :: Number -> String -> Number

foreign import readFloat "var readFloat = parseFloat;" :: String -> Number

