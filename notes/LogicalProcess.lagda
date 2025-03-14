## Logical relation for GV processes

### Definition: safety for processes

psafe p = ∀ p′ → p ⇒ p′ →
      p′ terminated
    ⊎ (∃[ p″ ] p′ → p″)
    ⊎ (∃[ p″ , α ] p′ →α p″ × psafe p″)

### Definition: logical relation for processes

Let Σ and Γ be disjoint contexts of external and internal channels.

p ∈ 𝓛⟦ Σ | Γ ⟧

iff

[external reductions]

* Σ = Σ′, c:?T.S ; Γ = ∅ ; ∀ Σ″, v ∈ 𝓥⟦ Σ″ ⊢ T ] → ∃[ p′ ] p →c?v p′ and p′ ∈ 𝓛⟦ Σ′, c:S, Σ″ | ∅ ⟧
* Σ = Σ′, Σ″, c:!T.S ; Γ = ∅ ; ∃ v ∈ 𝓥⟦ Σ″ ⊢ T ] → ∃[ p′ ] p →c!v p′ and p′ ∈ 𝓛⟦ Σ′, c:S | ∅ ⟧

[internal reductions]

* p = (νc: ?T.S) (p′ ∥ p″) ; Σ = Σ′, Σ″, Σ‴ ; Γ = Γ′, Γ″, Γ‴
  p′ →c?v q′ ; p″ → c!v q″
  q′ ∈ 𝓛⟦ Σ′ | Γ′, c: S ⟧ ; q″ ∈ 𝓛⟦ Σ″, Σ‴ | Γ″, Γ‴, c: dual S ⟧ ; v ∈ 𝓥⟦ Σ‴, Γ‴ ⊢ T ⟧

* p = (νc: S) (p′ ∥ p″) ; Σ = Σ′, Σ″ ; Γ = Γ′, Γ″
  p′ ∈ 𝓛⟦ Σ′ | Γ′, c:S ⟧ ; p″ ∈ 𝓛⟦ Σ″ | Γ″, c:dual S ⟧


  
