import classicalPropositionalLogicCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure TruthTableDecidabilityPackage (O : ClassicalPropositionalLogicObject) where
  valuationSpace : Type u
  truthTableConstruction : Prop
  tautologyDecidable : Prop
  satisfiabilityDecidable : Prop

structure TruthTableDecidabilityEvidence (O : ClassicalPropositionalLogicObject)
    (T : TruthTableDecidabilityPackage O) where
  truthTableConstructionClosed : T.truthTableConstruction
  tautologyDecidableClosed : T.tautologyDecidable
  satisfiabilityDecidableClosed : T.satisfiabilityDecidable

def TruthTableDecidabilityClosed (O : ClassicalPropositionalLogicObject)
    (T : TruthTableDecidabilityPackage O) : Prop :=
  T.truthTableConstruction ∧ T.tautologyDecidable ∧ T.satisfiabilityDecidable

theorem truth_table_closed_from_evidence (O : ClassicalPropositionalLogicObject)
    (T : TruthTableDecidabilityPackage O) (E : TruthTableDecidabilityEvidence O T) :
    TruthTableDecidabilityClosed O T := by
  exact And.intro E.truthTableConstructionClosed
    (And.intro E.tautologyDecidableClosed E.satisfiabilityDecidableClosed)

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse