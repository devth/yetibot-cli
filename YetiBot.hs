import Data.List
import Network.HTTP
import System.Environment

main :: IO ()
main = do
    base <- getEnv "YETIBOT_ENDPOINT"
    args <- getArgs
    let url = endpoint base $ intercalate " " args
    resp <- simpleHTTP (getRequest url) >>= fmap (take 100) . getResponseBody
    putStrLn resp

endpoint :: String -> String -> String
endpoint base = ((base ++ "/api?command=") ++) . urlEncode
