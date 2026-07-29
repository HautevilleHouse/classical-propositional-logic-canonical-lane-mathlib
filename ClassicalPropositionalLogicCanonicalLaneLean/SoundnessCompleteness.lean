import ClassicalPropositionalLogicCanonicalLaneLean.SemanticTableaux

/-!
# Soundness and Completeness Package
-/

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure SoundnessPackage where
  tarskiSemantics : Prop
  validityDefined : Prop
  soundnessProved : Prop

structure CompletenessPackage where
  entailmentDefined : Prop
  completenessProved : Prop
  compactness : Prop

structure SoundnessEvidence (S : SoundnessPackage) where
  tarskiSemanticsClosed : S.tarskiSemantics
  validityDefinedClosed : S.validityDefined
  soundnessProvedClosed : S.soundnessProved

structure CompletenessEvidence (C : CompletenessPackage) where
  entailmentDefinedClosed : C.entailmentDefined
  completenessProvedClosed : C.completenessProved
  compactnessClosed : C.compactness

def SoundnessClosed (S : SoundnessPackage) : Prop :=
  S.tarskiSemantics ∧ S.validityDefined ∧ S.soundnessProved

def CompletenessClosed (C : CompletenessPackage) : Prop :=
  C.entailmentDefined ∧ C.completenessProved ∧ C.compactness

theorem soundness_closed_from_evidence (S : SoundnessPackage)
    (E : SoundnessEvidence S) : SoundnessClosed S := by
  exact And.intro E.tarskiSemanticsClosed
    (And.intro E.validityDefinedClosed E.soundnessProvedClosed)

theorem completeness_closed_from_evidence (C : CompletenessPackage)
    (E : CompletenessEvidence C) : CompletenessClosed C := by
  exact And.intro E.entailmentDefinedClosed
    (And.intro E.completenessProvedClosed E.compactnessClosed)

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse