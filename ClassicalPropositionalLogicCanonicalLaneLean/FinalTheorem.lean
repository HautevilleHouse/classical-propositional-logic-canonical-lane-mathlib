import ClassicalPropositionalLogicCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

def ConstrainedLogicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_logic_endgame (A : AdmissibleClass) :
    ConstrainedLogicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse