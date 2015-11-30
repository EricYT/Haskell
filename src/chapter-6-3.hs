{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

class MyClass a where
  test :: a -> a

instance MyClass String where
  test str = str
