module Test.Main where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

import Global (readFloat, readInt, isFinite, infinity, nan, isNaN)
import Global.Unsafe (unsafeToPrecision, unsafeToExponential, unsafeToFixed)

import Test.Assert (ASSERT, assert)

main :: Eff (console :: CONSOLE, assert :: ASSERT) Unit
main = do
  let num = 12345.6789

  log "nan /= nan"
  assert $ nan /= nan

  log "not (isNaN 6.0)"
  assert $ not (isNaN 6.0)

  log "isNaN nan"
  assert $ isNaN nan

  log "infinity > 0.0"
  assert $ infinity > 0.0

  log "-infinity < 0.0"
  assert $ -infinity < 0.0

  log "not (isFinite infinity)"
  assert $ not (isFinite infinity)

  log "isFinite 0.0"
  assert $ isFinite 0.0

  log "readInt 16 \"0xFF\" == 255.0"
  assert $ readInt 16 "0xFF" == 255.0

  log "readInt 10 \"3.5\" == 3.0"
  assert $ readInt 10 "3.5" == 3.0

  log "readFloat \"3.5\" == 3.5"
  assert $ readFloat "3.5" == 3.5

  -- note the rounding
  log $ "unsafeToFixed " <> (show num) <> " 1 == \"12345.7\""
  assert $ unsafeToFixed num 1 == "12345.7"

  -- padded with zeros
  log $ "unsafeToFixed " <> (show num) <> " 6 == \"12345.678900\""
  assert $ unsafeToFixed num 6 == "12345.678900"

  log $ "unsafeToExponential " <> (show num) <> " 4 == \"1.2346e+4\""
  assert $ unsafeToExponential num 4 == "1.2346e+4"

  log $ "unsafeToPrecision " <> (show num) <> " 3 == \"1.23e+4\""
  assert $ unsafeToPrecision num 3 == "1.23e+4"

  log $ "unsafeToPrecision " <> (show num) <> " 6 == \"12345.7\""
  assert $ unsafeToPrecision num 6 == "12345.7"

