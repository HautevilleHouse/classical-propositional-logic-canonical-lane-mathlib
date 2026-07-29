import ClassicalPropositionalLogicCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.valuationConsistent ∨ A.consistencyRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse