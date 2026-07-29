import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure PropositionalSequentCalculus where
  sequentType : Type
  inferenceRules : List (Type → Type → Prop)
  initialSequents : Prop
  cutAdmissibility : Prop
  initialSequentsClosed : initialSequents
  cutAdmissibilityClosed : cutAdmissibility

structure SequentCalculusEvidence (C : PropositionalSequentCalculus) where
  initialSequentsProved : C.initialSequents
  cutAdmissibilityProved : C.cutAdmissibility

def SequentCalculusClosed (C : PropositionalSequentCalculus) : Prop :=
  C.initialSequents ∧ C.cutAdmissibility

theorem sequent_calculus_closed_from_evidence (C : PropositionalSequentCalculus) (E : SequentCalculusEvidence C) : SequentCalculusClosed C := by
  exact And.intro E.initialSequentsProved E.cutAdmissibilityProved

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse