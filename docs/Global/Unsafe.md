## Module Global.Unsafe

#### `unsafeStringify`

``` purescript
unsafeStringify :: forall a. a -> String
```

Uses the global JSON object to turn anything into a string. Careful! Trying
to serialize functions returns undefined


