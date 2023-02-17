module MyLib (someFunc) where

import qualified Amazonka
import qualified Amazonka.SNS as Sns
import qualified Amazonka.SQS as Sqs
import qualified Amazonka.S3


someFunc :: IO ()
someFunc = putStrLn "someFunc"
