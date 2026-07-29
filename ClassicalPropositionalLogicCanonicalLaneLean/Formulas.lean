import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure Formula where
  var : String
  not : Option Formula
  and : Option (Formula × Formula)
  or : Option (Formula × Formula)
  implies : Option (Formula × Formula)
  deriving Repr, DecidableEq

def formulaToString (f : Formula) : String := 
  match f.not, f.and, f.or, f.implies with
  | some p, none, none, none => "~" ++ formulaToString p
  | none, some (p, q), none, none => "(" ++ formulaToString p ++ " & " ++ formulaToString q ++ ")"
  | none, none, some (p, q), none => "(" ++ formulaToString p ++ " | " ++ formulaToString q ++ ")"
  | none, none, none, some (p, q) => "(" ++ formulaToString p ++ " -> " ++ formulaToString q ++ ")"
  | _, _, _, _ => f.var

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse