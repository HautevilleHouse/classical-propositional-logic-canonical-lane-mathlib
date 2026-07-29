import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalPropositionalLogicCanonicalLaneLean

structure Sequent where
  premises : List Formula
  conclusion : Formula

structure Derivation where
  premises : List Formula
  conclusion : Formula
  rules : List String

def proves (d : Derivation) : Prop :=
  entails d.premises d.conclusion

structure SoundnessEvidence where
  derivations : List Derivation
  soundnessClosed : List (d : Derivation) → proves d

def SoundnessClosed (S : SoundnessEvidence) : Prop :=
  S.soundnessClosed != []

end ClassicalPropositionalLogicCanonicalLaneLean
end HautevilleHouse