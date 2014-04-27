module Global where

foreign import nan "var nan = NaN;" :: Number

foreign import isNaN :: Number -> Boolean

foreign import infinity "var infinity = Infinity;" :: Number

foreign import isFinite :: Number -> Boolean

foreign import parseInt
  "function parseInt(n) {\
  \  return function(radix) {\
  \    return parseInt(n, radix);\
  \  };\
  \}" :: String -> Number -> Number

foreign import parseFloat :: String -> Number
