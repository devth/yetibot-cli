import Network.HTTP
import System.Environment
import System.IO
import Data.List (intercalate)
import Data.Text (strip, pack, unpack)

main :: IO ()
main = do
    base <- getEnv "YETIBOT_ENDPOINT"
    token <- getEnv "YETIBOT_ACCESS_TOKEN"
    args <- getArgs
    putStrLn $ show args
    -- optionally read in stdin only if it was piped (i.e. if it's not a terminal
    -- device)
    contents <- hIsTerminalDevice stdin >>= \isT -> if isT then return "" else getContents

    let argsWithContents = case contents of
                                [] -> args
                                c -> args ++ [unpack $ strip $ pack $ contents]
        url = endpoint base token $ intercalate " " argsWithContents
    putStrLn $ "url is " ++ url
    -- resp <- simpleHTTP (getRequest url) >>= getResponseBody
    -- putStrLn resp

endpoint :: String -> String -> String -> String
endpoint base token = ((base ++ "/api?token=" ++ token ++ "&command=") ++) . urlEncode
