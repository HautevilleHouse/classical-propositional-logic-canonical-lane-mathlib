import ClassicalPropositionalLogicCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure AdmissibleClass where
  object : PropositionalAdmittedObject
  valuationConsistent : Prop
  consistencyRecorded : Prop
  gateWitness : valuationConsistent ∨ consistencyRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PropositionalWitnessClosed A.object ∧ (A.valuationConsistent ∨ A.consistencyRecorded)

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse