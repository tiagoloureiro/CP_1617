import Cp
import List 
import Nat  
import Exp
import BTree
import LTree
import St 
import Probability hiding (cond)
import Data.List
import Test.QuickCheck hiding ((><))
import System.Random  hiding (split)
import GHC.IO.Exception
import System.IO.Unsafe

wc_w_final :: [Char] -> Int
wc_w_final = wrapper . worker

wrapper l = foldr (\x y -> y+1) 0 l

worker l = words l