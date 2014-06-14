# Module Documentation

## Module Global

### Types

    data Error :: *


### Type Class Instances

    instance showError :: Show Error


### Values

    error :: String -> Error

    infinity :: Number

    isFinite :: Number -> Boolean

    isNaN :: Number -> Boolean

    nan :: Number

    readFloat :: String -> Number

    readInt :: Number -> String -> Number