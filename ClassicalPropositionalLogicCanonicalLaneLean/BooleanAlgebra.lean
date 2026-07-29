import ClassicalPropositionalLogicCanonicalLaneLean.DeductionCalculus

/-!
# Boolean Algebra Package
-/

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure BooleanAlgebraPackage where
  carrier : Type u
  meet : carrier → carrier → carrier
  join : carrier → carrier → carrier
  complement : carrier → carrier
  zero : carrier
  one : carrier
  latticeLaws : Prop
  distributiveLaws : Prop
  complementLaws : Prop
  booleanAlgebraLaws : Prop

structure BooleanAlgebraEvidence (B : BooleanAlgebraPackage) where
  latticeLawsClosed : B.latticeLaws
  distributiveLawsClosed : B.distributiveLaws
  complementLawsClosed : B.complementLaws
  booleanAlgebraLawsClosed : B.booleanAlgebraLaws

def BooleanAlgebraClosed (B : BooleanAlgebraPackage) : Prop :=
  B.latticeLaws ∧ B.distributiveLaws ∧ B.complementLaws ∧ B.booleanAlgebraLaws

theorem boolean_algebra_closed_from_evidence (B : BooleanAlgebraPackage)
    (E : BooleanAlgebraEvidence B) : BooleanAlgebraClosed B := by
  exact And.intro E.latticeLawsClosed
    (And.intro E.distributiveLawsClosed
      (And.intro E.complementLawsClosed E.booleanAlgebraLawsClosed))

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse