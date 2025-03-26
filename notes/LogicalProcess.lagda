## Logical relation for GV processes

### Definition: safety for processes

psafe P = ∀ P′ : P ⟶ P′ ⇒
      P′ terminated
    ⊎ (∃[ P″ ] : P′ ⟶ P″)
    ⊎ (∃[ P″ , α ] : P′ ⟶α P″ × psafe P″)

### Definition: logical relation for processes

Let Σ and Γ be disjoint contexts of external and internal channels.

P ∈ 𝓛⟦ Σ | Γ ⟧

iff

[external reductions]

* Σ = Σ′, c:?T.S ; Γ = ∅ ; ∀ Σ″ : V ∈ 𝓥⟦ Σ″ ⊢ T ⟧ ⇒ ∃[ P′ ] : P ⟶c?V P′ × P′ ∈ 𝓛⟦ Σ′, c:S, Σ″ | ∅ ⟧
* Σ = Σ′, Σ″, c:!T.S ; Γ = ∅ ; ∃ V ∈ 𝓥⟦ Σ″ ⊢ T ⟧ : ∃[ P′ ] : P ⟶c!V P′ × P′ ∈ 𝓛⟦ Σ′, c:S | ∅ ⟧

[internal reductions]

* P = (νc: ?T.S. P′ ∥ P″) ; Σ = Σ′, Σ″, Σ‴ ; Γ = Γ′, Γ″, Γ‴
  P′ ⟶c?V Q′ ; P″ ⟶c!V Q″
  Q′ ∈ 𝓛⟦ Σ′ | Γ′, c:S ⟧ ; Q″ ∈ 𝓛⟦ Σ″, Σ‴ | Γ″, Γ‴, c:dual S ⟧ ; V ∈ 𝓥⟦ Σ‴, Γ‴ ⊢ T ⟧

* P = (νc: S. P′ ∥ P″) ; Σ = Σ′, Σ″ ; Γ = Γ′, Γ″
  P′ ∈ 𝓛⟦ Σ′ | Γ′, c:S ⟧ ; P″ ∈ 𝓛⟦ Σ″ | Γ″, c:dual S ⟧


  
