{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}

module Main where

import Database.Persist.TH
  ( mkMigrate,
    mkPersist,
    persistLowerCase,
    share,
    sqlSettings,
  )
import qualified MyLib (someFunc)

share
  [mkPersist sqlSettings, mkMigrate "migrateAll"]
  [persistLowerCase|
User
    name String
    age Int
    deriving Show
|]

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc
