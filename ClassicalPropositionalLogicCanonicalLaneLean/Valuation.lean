import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure Valuation where
  assignment : String → Bool

def eval (v : Valuation) (f : Formula) : Bool :=
  match f.not, f.and, f.or, f.implies with
  | some p, none, none, none => ¬ eval v p
  | none, some (p, q), none, none => eval v p ∧ eval v q
  | none, none, some (p, q), none => eval v p ∨ eval v q
  | none, none, none, some (p, q) => eval v p → eval v q
  | _, _, _, _ => v.assignment f.var

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse