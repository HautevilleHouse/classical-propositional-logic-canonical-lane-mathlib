import ClassicalPropositionalLogicCanonicalLaneLean.AdmissibleClass

/-!
# Semantic Tableaux Package
-/

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure SemanticTableauxPackage where
  formulas : List (Prop)
  branchClosed : Prop
  fullyExpanded : Prop
  consistency : Prop
  completeness : Prop

structure SemanticTableauxEvidence (T : SemanticTableauxPackage) where
  branchClosedClosed : T.branchClosed
  fullyExpandedClosed : T.fullyExpanded
  consistencyClosed : T.consistency
  completenessClosed : T.completeness

def SemanticTableauxClosed (T : SemanticTableauxPackage) : Prop :=
  T.branchClosed ∧ T.fullyExpanded ∧ T.consistency ∧ T.completeness

theorem semantic_tableaux_closed_from_evidence (T : SemanticTableauxPackage)
    (E : SemanticTableauxEvidence T) : SemanticTableauxClosed T := by
  exact And.intro E.branchClosedClosed
    (And.intro E.fullyExpandedClosed
      (And.intro E.consistencyClosed E.completenessClosed))

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse