## Assumptions

* usual GV-style reduction semantics

## Safety for expressions + add step indexing

safe e = ∀ e'
  → e ⟶* e'
  → e' is a value
    OR e' ⟶ e''
    OR e' = E[send c v] and safe E[c]
    OR e' = E[recv c] and ∃[ v' ] safe E[(c, v')] 	first order: fc(v') = ∅
                                                         higher order: fc(v') ∩ fc(e') = ∅
    OR e' = E[clos c] and safe E[()]
    OR e' = E[wait c] and safe E[()]
    OR e' = E[fork v] and safe E[c]     for all c ∉ fc(e')


    OR e' = E[new]    and safe E[(c1, c2)]	for all c1 ≠ c2 ∉ fc(e')
    OR e' = E[fork v] and safe E[()]

