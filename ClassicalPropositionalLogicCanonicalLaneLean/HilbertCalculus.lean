import classicalPropositionalLogicCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure HilbertCalculusPackage (O : ClassicalPropositionalLogicObject) where
  axioms : Type u
  inferenceRules : Prop
  deductionTheorem : Prop
  soundness : Prop

structure HilbertCalculusEvidence (O : ClassicalPropositionalLogicObject)
    (H : HilbertCalculusPackage O) where
  inferenceRulesClosed : H.inferenceRules
  deductionTheoremClosed : H.deductionTheorem
  soundnessClosed : H.soundness

def HilbertCalculusClosed (O : ClassicalPropositionalLogicObject)
    (H : HilbertCalculusPackage O) : Prop :=
  H.inferenceRules ∧ H.deductionTheorem ∧ H.soundness

theorem hilbert_calculus_closed_from_evidence (O : ClassicalPropositionalLogicObject)
    (H : HilbertCalculusPackage O) (E : HilbertCalculusEvidence O H) :
    HilbertCalculusClosed O H := by
  exact And.intro E.inferenceRulesClosed
    (And.intro E.deductionTheoremClosed E.soundnessClosed)

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse