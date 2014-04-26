module Global where

foreign import nan "var nan = NaN;" :: Number

foreign import infinity "var infinity = Infinity;" :: Number

foreign import toExponential
  "function toExponential(n) {\
  \  return n.toExponential();\
  \}" :: Number -> String

foreign import toFixed
  "function toFixed(d) {\
  \  return function(n) {\
  \    return n.toFixed(d);\
  \  };\
  \}" :: Number -> Number -> String

foreign import toPrecision
  "function toPrecision(d) {\
  \  return function(n) {\
  \    return n.toPrecision(d);\
  \  };\
  \}" :: Number -> Number -> String

foreign import isFinite :: Number -> Boolean

foreign import parseFloat :: String -> Number

foreign import parseInt
  "function parseInt(n) {\
  \  return function(radix) {\
  \    return parseInt(n, radix);\
  \  };\
  \}" :: String -> Number -> Number

foreign import encodeURIComponent :: String -> String

foreign import decodeURIComponent :: String -> String

foreign import encodeURI :: String -> String

foreign import decodeURI :: String -> String

foreign import isNaN :: Number -> Boolean
