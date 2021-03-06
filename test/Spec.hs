import Library
import PdePreludat
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Test de pago" $ do
    it "Si una persona cobra menos del mínimo, el bono es del valor correcto" $ do
      10000 `shouldBe` bono 9999
    it "Si una persona cobra entre el mínimo y el máximo, el bono es del valor correcto" $ do
      5000 `shouldBe` bono 29999
    it "Si una persona cobra más del máximo, el bono es del valor correcto" $ do
      0 `shouldBe` bono 30001
