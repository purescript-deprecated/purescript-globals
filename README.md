# Module Documentation

## Module Global

### Types

    data Error :: *


### Type Class Instances

    instance showError :: Show Error


### Values

    infinity :: Prim.Number

    isFinite :: Prim.Number -> Prim.Boolean

    isNaN :: Prim.Number -> Prim.Boolean

    nan :: Prim.Number

    readFloat :: Prim.String -> Prim.Number

    readInt :: Prim.Number -> Prim.String -> Prim.Number