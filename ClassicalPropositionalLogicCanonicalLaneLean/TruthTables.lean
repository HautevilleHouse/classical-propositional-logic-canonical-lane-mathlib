import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure TruthTable where
  variables : List String
  rows : List (List Bool)
  resultantColumn : List Bool
  soundnessProof : Prop
  completenessProof : Prop
  soundnessProofTerm : soundnessProof
  completenessProofTerm : completenessProof

structure TruthTableEvidence (T : TruthTable) where
  soundnessClosed : T.soundnessProof
  completenessClosed : T.completenessProof

def TruthTableClosed (T : TruthTable) : Prop :=
  T.soundnessProof ∧ T.completenessProof

theorem truth_table_closed_from_evidence (T : TruthTable) (E : TruthTableEvidence T) : TruthTableClosed T := by
  exact And.intro E.soundnessClosed E.completenessClosed

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse