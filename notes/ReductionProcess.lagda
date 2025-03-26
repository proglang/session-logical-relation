## Assumptions

* usual GV-style reduction semantics

## Safety for expressions + add step indexing

safe M = ∀ M'
  : M ⟶* M'
  ⇒ M' is a value
    OR M' ⟶ M''
    OR M' = 𝓔[send c V] and safe 𝓔[c]
    OR M' = 𝓔[recv c] and ∃[ V' ] : safe 𝓔[(c, V')] 	first order: fc(V') = ∅
                                                         higher order: fc(V') ∩ fc(e') = ∅
    OR e' = 𝓔[term c] and safe 𝓔[*]
    OR e' = 𝓔[wait c] and safe 𝓔[*]
    OR e' = 𝓔[fork V] and safe 𝓔[c]     for all c ∉ fc(e')


    OR e' = 𝓔[new]    and safe 𝓔[(c1, c2)]	for all c1 ≠ c2 ∉ fc(e')
    OR e' = 𝓔[fork V] and safe 𝓔[*]

