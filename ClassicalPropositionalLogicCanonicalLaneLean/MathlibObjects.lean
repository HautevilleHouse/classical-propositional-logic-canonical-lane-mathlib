import classicalPropositionalLogicCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib
import Mathlib.Logic.Basic

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlib

structure PropositionalFormula where
  carrier : Type

structure ClassicalPropositionalLogicObject where
  formulas : PropositionalFormula
  tautology : Prop
  satisfiable : Prop
  conclusion : tautology

def PropositionalWitnessClosed (O : ClassicalPropositionalLogicObject) : Prop :=
  O.tautology

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse