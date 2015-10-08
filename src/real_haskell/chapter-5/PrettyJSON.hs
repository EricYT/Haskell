
module PrettyJSON where

import SimpleJSON
import PrettyStub

renderJSON :: JValue -> Doc
renderJSON (JBool True) = text "true"
