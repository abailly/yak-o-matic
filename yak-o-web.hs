import Web.Scotty
import Network.Wai.Middleware.RequestLogger
import Network.Wai.Middleware.Static


main :: IO ()
main = do 
  scotty 3000 $ do
    middleware logStdoutDev
    middleware (staticPolicy $ addBase "static/")
