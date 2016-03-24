module Test.Main where

import Prelude (Unit, (==), ($), bind, not, negate, (<), (>), (/=))

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

import Global

import Test.Assert (ASSERT, assert)

main :: Eff (console :: CONSOLE, assert :: ASSERT) Unit
main = do

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
