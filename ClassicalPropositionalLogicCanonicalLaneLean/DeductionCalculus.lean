import ClassicalPropositionalLogicCanonicalLaneLean.SoundnessCompleteness

/-!
# Hilbert-Style Deduction Calculus Package
-/

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure HilbertCalculusPackage where
  axioms : List (Prop)
  modusPonens : Prop
  deductionTheorem : Prop
  consistency : Prop

structure HilbertCalculusEvidence (H : HilbertCalculusPackage) where
  axiomsClosed : H.axioms
  modusPonensClosed : H.modusPonens
  deductionTheoremClosed : H.deductionTheorem
  consistencyClosed : H.consistency

def HilbertCalculusClosed (H : HilbertCalculusPackage) : Prop :=
  H.axioms ∧ H.modusPonens ∧ H.deductionTheorem ∧ H.consistency

theorem hilbert_calculus_closed_from_evidence (H : HilbertCalculusPackage)
    (E : HilbertCalculusEvidence H) : HilbertCalculusClosed H := by
  exact And.intro E.axiomsClosed
    (And.intro E.modusPonensClosed
      (And.intro E.deductionTheoremClosed E.consistencyClosed))

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse