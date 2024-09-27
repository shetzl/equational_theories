import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation602 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (z ∘ u)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation805 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ z) ∘ u))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation1008 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (z ∘ u))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1211 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ z)) ∘ u)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1414 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ z) ∘ u)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1617 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (z ∘ u))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1820 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ z) ∘ u)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation2023 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (z ∘ u)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2226 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (z ∘ u)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2429 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ z))) ∘ u
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2632 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ z)) ∘ u
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2835 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ z)) ∘ u
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3038 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ z) ∘ u
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3241 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ z) ∘ u
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3444 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (z ∘ u))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3647 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ z) ∘ u)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3850 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (z ∘ u)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4053 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ z)) ∘ u
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4256 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ z) ∘ u
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4377 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (z ∘ u)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4571 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ z) ∘ u
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4692 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ z) ∘ u
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation602 (G : Type*) [Magma G] (h : Equation613 G) : Equation602 G := λ x y z w u => h x y z w z u
theorem Equation816_implies_Equation805 (G : Type*) [Magma G] (h : Equation816 G) : Equation805 G := λ x y z w u => h x y z w z u
theorem Equation1019_implies_Equation1008 (G : Type*) [Magma G] (h : Equation1019 G) : Equation1008 G := λ x y z w u => h x y z w z u
theorem Equation1222_implies_Equation1211 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1211 G := λ x y z w u => h x y z w z u
theorem Equation1425_implies_Equation1414 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1414 G := λ x y z w u => h x y z w z u
theorem Equation1628_implies_Equation1617 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1617 G := λ x y z w u => h x y z w z u
theorem Equation1831_implies_Equation1820 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1820 G := λ x y z w u => h x y z w z u
theorem Equation2034_implies_Equation2023 (G : Type*) [Magma G] (h : Equation2034 G) : Equation2023 G := λ x y z w u => h x y z w z u
theorem Equation2237_implies_Equation2226 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2226 G := λ x y z w u => h x y z w z u
theorem Equation2440_implies_Equation2429 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2429 G := λ x y z w u => h x y z w z u
theorem Equation2643_implies_Equation2632 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2632 G := λ x y z w u => h x y z w z u
theorem Equation2846_implies_Equation2835 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2835 G := λ x y z w u => h x y z w z u
theorem Equation3049_implies_Equation3038 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3038 G := λ x y z w u => h x y z w z u
theorem Equation3252_implies_Equation3241 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3241 G := λ x y z w u => h x y z w z u
theorem Equation3455_implies_Equation3444 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3444 G := λ x y z w u => h x y z w z u
theorem Equation3658_implies_Equation3647 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3647 G := λ x y z w u => h x y z w z u
theorem Equation3861_implies_Equation3850 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3850 G := λ x y z w u => h x y z w z u
theorem Equation4064_implies_Equation4053 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4053 G := λ x y z w u => h x y z w z u
theorem Equation4267_implies_Equation4256 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4256 G := λ x y z w u => h x y z w z u
theorem Equation4379_implies_Equation4377 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4377 G := λ x y z w u => h x y z w z u
theorem Equation4582_implies_Equation4571 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4571 G := λ x y z w u => h x y z w z u
theorem Equation4694_implies_Equation4692 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4692 G := λ x y z w u => h x y z w z u