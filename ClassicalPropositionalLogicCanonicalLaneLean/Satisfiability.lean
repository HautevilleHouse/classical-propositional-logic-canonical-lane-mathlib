import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure SATInstance where
  formulaType : Type
  modelType : Type
  satisfiability : Prop
  finiteValuations : Prop
  SATDecidable : satisfiability → Decidable
  satisfiabilityClosed : satisfiability
  finiteValuationsClosed : finiteValuations

structure SATEvidence (S : SATInstance) where
  satisfiabilityProved : S.satisfiability
  finiteValuationsProved : S.finiteValuations

def SATClosed (S : SATInstance) : Prop :=
  S.satisfiability ∧ S.finiteValuations

theorem sat_closed_from_evidence (S : SATInstance) (E : SATEvidence S) : SATClosed S := by
  exact And.intro E.satisfiabilityProved E.finiteValuationsProved

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse