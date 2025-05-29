import qualified IoMonadSpec
import qualified RandomSpec
import Test.Hspec (hspec)

main :: IO ()
main = hspec $ do
  RandomSpec.spec
  IoMonadSpec.spec
