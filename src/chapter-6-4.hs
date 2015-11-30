{-# LANGUAGE TypeSynonymInstances, FlexibleInstances #-}

import Data.List

class Foo a where
    foo :: a -> String

-- Now will error due to the compiler don't know which one to call between
-- String and [char]
instance (Foo a) => Foo [a] where
    foo = concat . intersperse ", " . map foo

instance Foo Char where
    foo c = [c]

instance Foo String where
    foo = id
