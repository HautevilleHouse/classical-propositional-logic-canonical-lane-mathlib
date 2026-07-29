import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

def models (v : Valuation) (Γ : List Formula) : Prop :=
  ∀ f ∈ Γ, eval v f = true

def entails (Γ : List Formula) (φ : Formula) : Prop :=
  ∀ v : Valuation, models v Γ → eval v φ = true

structure EntailmentEvidence (Γ : List Formula) (φ : Formula) where
  entailmentProperty : entails Γ φ

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse