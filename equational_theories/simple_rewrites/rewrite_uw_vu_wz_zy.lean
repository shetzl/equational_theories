import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation536 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (y ∘ (z ∘ (w ∘ u)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation739 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (y ∘ ((z ∘ w) ∘ u))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation942 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((y ∘ z) ∘ (w ∘ u))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1145 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ u)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1348 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((y ∘ z) ∘ w) ∘ u)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1551 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ y) ∘ (z ∘ (w ∘ u))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1754 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ u)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1957 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ u)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2160 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ u)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2363 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ u
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2566 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ u
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2769 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ u
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2972 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ u
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3175 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ u
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3378 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = y ∘ (z ∘ (w ∘ u))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3581 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = y ∘ ((z ∘ w) ∘ u)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3784 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (y ∘ z) ∘ (w ∘ u)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3987 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (y ∘ (z ∘ w)) ∘ u
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4190 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((y ∘ z) ∘ w) ∘ u
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4356 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ y) = z ∘ (w ∘ u)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4505 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ y) = (z ∘ w) ∘ u
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4671 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ y = (z ∘ w) ∘ u
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation536 (G : Type*) [Magma G] (h : Equation613 G) : Equation536 G := λ x y z w u => h x y y z w u
theorem Equation816_implies_Equation739 (G : Type*) [Magma G] (h : Equation816 G) : Equation739 G := λ x y z w u => h x y y z w u
theorem Equation1019_implies_Equation942 (G : Type*) [Magma G] (h : Equation1019 G) : Equation942 G := λ x y z w u => h x y y z w u
theorem Equation1222_implies_Equation1145 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1145 G := λ x y z w u => h x y y z w u
theorem Equation1425_implies_Equation1348 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1348 G := λ x y z w u => h x y y z w u
theorem Equation1628_implies_Equation1551 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1551 G := λ x y z w u => h x y y z w u
theorem Equation1831_implies_Equation1754 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1754 G := λ x y z w u => h x y y z w u
theorem Equation2034_implies_Equation1957 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1957 G := λ x y z w u => h x y y z w u
theorem Equation2237_implies_Equation2160 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2160 G := λ x y z w u => h x y y z w u
theorem Equation2440_implies_Equation2363 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2363 G := λ x y z w u => h x y y z w u
theorem Equation2643_implies_Equation2566 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2566 G := λ x y z w u => h x y y z w u
theorem Equation2846_implies_Equation2769 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2769 G := λ x y z w u => h x y y z w u
theorem Equation3049_implies_Equation2972 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2972 G := λ x y z w u => h x y y z w u
theorem Equation3252_implies_Equation3175 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3175 G := λ x y z w u => h x y y z w u
theorem Equation3455_implies_Equation3378 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3378 G := λ x y z w u => h x y y z w u
theorem Equation3658_implies_Equation3581 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3581 G := λ x y z w u => h x y y z w u
theorem Equation3861_implies_Equation3784 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3784 G := λ x y z w u => h x y y z w u
theorem Equation4064_implies_Equation3987 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3987 G := λ x y z w u => h x y y z w u
theorem Equation4267_implies_Equation4190 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4190 G := λ x y z w u => h x y y z w u
theorem Equation4379_implies_Equation4356 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4356 G := λ x y z w u => h x y y z w u
theorem Equation4582_implies_Equation4505 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4505 G := λ x y z w u => h x y y z w u
theorem Equation4694_implies_Equation4671 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4671 G := λ x y z w u => h x y y z w u