import ClassicalPropositionalLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PropositionalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse