import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation18 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ z)
def Equation22 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ w)
def Equation33 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ z
def Equation37 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ w
def Equation44 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ z
def Equation46 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ w
def Equation57 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ (y ∘ z))
def Equation61 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (z ∘ w))
def Equation67 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (y ∘ z))
def Equation71 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (z ∘ w))
def Equation74 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (x ∘ z))
def Equation77 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (y ∘ z))
def Equation78 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ x))
def Equation79 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ y))
def Equation80 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ z))
def Equation81 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ w))
def Equation85 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (x ∘ w))
def Equation89 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ w))
def Equation93 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (z ∘ w))
def Equation94 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ x))
def Equation95 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ y))
def Equation96 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ z))
def Equation97 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ w))
def Equation109 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ y) ∘ z)
def Equation113 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ z) ∘ w)
def Equation119 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ y) ∘ z)
def Equation123 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ z) ∘ w)
def Equation126 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ x) ∘ z)
def Equation129 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ y) ∘ z)
def Equation130 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ x)
def Equation131 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ y)
def Equation132 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ z)
def Equation133 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ w)
def Equation137 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ x) ∘ w)
def Equation141 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ w)
def Equation145 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ z) ∘ w)
def Equation146 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ x)
def Equation147 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ y)
def Equation148 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ z)
def Equation149 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ w)
def Equation161 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ (y ∘ z)
def Equation165 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (z ∘ w)
def Equation171 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (y ∘ z)
def Equation175 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (z ∘ w)
def Equation178 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (x ∘ z)
def Equation181 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (y ∘ z)
def Equation182 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ x)
def Equation183 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ y)
def Equation184 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ z)
def Equation185 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ w)
def Equation189 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (x ∘ w)
def Equation193 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ w)
def Equation197 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (z ∘ w)
def Equation198 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ x)
def Equation199 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ y)
def Equation200 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ z)
def Equation201 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ w)
def Equation213 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ y)) ∘ z
def Equation217 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ z)) ∘ w
def Equation223 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ y)) ∘ z
def Equation227 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ z)) ∘ w
def Equation230 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ x)) ∘ z
def Equation233 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ y)) ∘ z
def Equation234 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ x
def Equation235 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ y
def Equation236 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ z
def Equation237 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ w
def Equation241 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ x)) ∘ w
def Equation245 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ w
def Equation249 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ z)) ∘ w
def Equation250 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ x
def Equation251 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ y
def Equation252 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ z
def Equation253 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ w
def Equation265 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ y) ∘ z
def Equation269 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ z) ∘ w
def Equation275 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ y) ∘ z
def Equation279 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ z) ∘ w
def Equation282 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ x) ∘ z
def Equation285 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ y) ∘ z
def Equation286 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ x
def Equation287 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ y
def Equation288 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ z
def Equation289 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ w
def Equation293 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ x) ∘ w
def Equation297 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ w
def Equation301 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ z) ∘ w
def Equation302 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ x
def Equation303 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ y
def Equation304 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ z
def Equation305 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ w
def Equation317 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ (y ∘ z)
def Equation321 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (z ∘ w)
def Equation327 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (y ∘ z)
def Equation331 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (z ∘ w)
def Equation334 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (x ∘ z)
def Equation337 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (y ∘ z)
def Equation338 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ x)
def Equation339 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ y)
def Equation340 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ z)
def Equation341 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ w)
def Equation345 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (x ∘ w)
def Equation349 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ w)
def Equation353 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (z ∘ w)
def Equation354 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ x)
def Equation355 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ y)
def Equation356 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ z)
def Equation357 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ w)
def Equation369 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ y) ∘ z
def Equation373 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ z) ∘ w
def Equation379 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ y) ∘ z
def Equation383 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ z) ∘ w
def Equation386 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ x) ∘ z
def Equation389 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ y) ∘ z
def Equation390 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ x
def Equation391 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ y
def Equation392 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ z
def Equation393 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ w
def Equation397 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ x) ∘ w
def Equation401 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ w
def Equation405 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ z) ∘ w
def Equation406 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ x
def Equation407 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ y
def Equation408 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ z
def Equation409 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ w
def Equation421 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (x ∘ (y ∘ (y ∘ z)))
def Equation425 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (x ∘ (y ∘ (z ∘ w)))
def Equation431 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ (x ∘ (y ∘ z)))
def Equation435 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (x ∘ (z ∘ w)))
def Equation438 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ (y ∘ (x ∘ z)))
def Equation441 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ (y ∘ (y ∘ z)))
def Equation442 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ (y ∘ (z ∘ x)))
def Equation443 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ (y ∘ (z ∘ y)))
def Equation444 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ (y ∘ (z ∘ z)))
def Equation445 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (y ∘ (z ∘ w)))
def Equation449 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (z ∘ (x ∘ w)))
def Equation453 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (z ∘ (y ∘ w)))
def Equation457 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (z ∘ (z ∘ w)))
def Equation458 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (z ∘ (w ∘ x)))
def Equation459 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (z ∘ (w ∘ y)))
def Equation460 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (z ∘ (w ∘ z)))
def Equation461 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (z ∘ (w ∘ w)))
def Equation468 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (x ∘ (y ∘ z)))
def Equation472 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (x ∘ (z ∘ w)))
def Equation475 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (y ∘ (x ∘ z)))
def Equation478 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (y ∘ (y ∘ z)))
def Equation479 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (y ∘ (z ∘ x)))
def Equation480 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (y ∘ (z ∘ y)))
def Equation481 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (y ∘ (z ∘ z)))
def Equation482 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (y ∘ (z ∘ w)))
def Equation486 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (z ∘ (x ∘ w)))
def Equation490 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (z ∘ (y ∘ w)))
def Equation494 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (z ∘ (z ∘ w)))
def Equation495 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (z ∘ (w ∘ x)))
def Equation496 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (z ∘ (w ∘ y)))
def Equation497 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (z ∘ (w ∘ z)))
def Equation498 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (z ∘ (w ∘ w)))
def Equation502 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (x ∘ (x ∘ z)))
def Equation505 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (x ∘ (y ∘ z)))
def Equation506 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (x ∘ (z ∘ x)))
def Equation507 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (x ∘ (z ∘ y)))
def Equation508 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (x ∘ (z ∘ z)))
def Equation509 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (x ∘ (z ∘ w)))
def Equation512 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (y ∘ (x ∘ z)))
def Equation515 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (y ∘ (y ∘ z)))
def Equation516 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (y ∘ (z ∘ x)))
def Equation517 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (y ∘ (z ∘ y)))
def Equation518 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (y ∘ (z ∘ z)))
def Equation519 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (y ∘ (z ∘ w)))
def Equation520 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (x ∘ x)))
def Equation521 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (x ∘ y)))
def Equation522 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (x ∘ z)))
def Equation523 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (x ∘ w)))
def Equation524 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (y ∘ x)))
def Equation525 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (y ∘ y)))
def Equation526 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (y ∘ z)))
def Equation527 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (y ∘ w)))
def Equation528 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (z ∘ x)))
def Equation529 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (z ∘ y)))
def Equation530 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (z ∘ z)))
def Equation531 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (z ∘ w)))
def Equation532 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (w ∘ x)))
def Equation533 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (w ∘ y)))
def Equation534 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (w ∘ z)))
def Equation535 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (w ∘ w)))
def Equation540 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (x ∘ (x ∘ w)))
def Equation544 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (x ∘ (y ∘ w)))
def Equation548 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (x ∘ (z ∘ w)))
def Equation549 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (x ∘ (w ∘ x)))
def Equation550 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (x ∘ (w ∘ y)))
def Equation551 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (x ∘ (w ∘ z)))
def Equation552 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (x ∘ (w ∘ w)))
def Equation557 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ (x ∘ w)))
def Equation561 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ (y ∘ w)))
def Equation565 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ (z ∘ w)))
def Equation566 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ (w ∘ x)))
def Equation567 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ (w ∘ y)))
def Equation568 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ (w ∘ z)))
def Equation569 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ (w ∘ w)))
def Equation574 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (z ∘ (x ∘ w)))
def Equation578 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (z ∘ (y ∘ w)))
def Equation582 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (z ∘ (z ∘ w)))
def Equation583 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (z ∘ (w ∘ x)))
def Equation584 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (z ∘ (w ∘ y)))
def Equation585 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (z ∘ (w ∘ z)))
def Equation586 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (z ∘ (w ∘ w)))
def Equation588 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (x ∘ x)))
def Equation589 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (x ∘ y)))
def Equation590 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (x ∘ z)))
def Equation591 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (x ∘ w)))
def Equation593 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (y ∘ x)))
def Equation594 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (y ∘ y)))
def Equation595 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (y ∘ z)))
def Equation596 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (y ∘ w)))
def Equation598 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (z ∘ x)))
def Equation599 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (z ∘ y)))
def Equation600 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (z ∘ z)))
def Equation601 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (z ∘ w)))
def Equation603 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (w ∘ x)))
def Equation604 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (w ∘ y)))
def Equation605 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (w ∘ z)))
def Equation606 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (w ∘ w)))
def Equation624 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (x ∘ ((y ∘ y) ∘ z))
def Equation628 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (x ∘ ((y ∘ z) ∘ w))
def Equation634 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ ((x ∘ y) ∘ z))
def Equation638 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((x ∘ z) ∘ w))
def Equation641 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ ((y ∘ x) ∘ z))
def Equation644 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ ((y ∘ y) ∘ z))
def Equation645 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ ((y ∘ z) ∘ x))
def Equation646 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ ((y ∘ z) ∘ y))
def Equation647 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ ((y ∘ z) ∘ z))
def Equation648 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((y ∘ z) ∘ w))
def Equation652 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((z ∘ x) ∘ w))
def Equation656 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((z ∘ y) ∘ w))
def Equation660 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((z ∘ z) ∘ w))
def Equation661 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((z ∘ w) ∘ x))
def Equation662 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((z ∘ w) ∘ y))
def Equation663 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((z ∘ w) ∘ z))
def Equation664 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((z ∘ w) ∘ w))
def Equation671 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((x ∘ y) ∘ z))
def Equation675 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((x ∘ z) ∘ w))
def Equation678 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((y ∘ x) ∘ z))
def Equation681 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((y ∘ y) ∘ z))
def Equation682 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((y ∘ z) ∘ x))
def Equation683 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((y ∘ z) ∘ y))
def Equation684 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((y ∘ z) ∘ z))
def Equation685 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((y ∘ z) ∘ w))
def Equation689 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((z ∘ x) ∘ w))
def Equation693 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((z ∘ y) ∘ w))
def Equation697 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((z ∘ z) ∘ w))
def Equation698 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((z ∘ w) ∘ x))
def Equation699 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((z ∘ w) ∘ y))
def Equation700 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((z ∘ w) ∘ z))
def Equation701 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((z ∘ w) ∘ w))
def Equation705 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((x ∘ x) ∘ z))
def Equation708 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((x ∘ y) ∘ z))
def Equation709 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((x ∘ z) ∘ x))
def Equation710 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((x ∘ z) ∘ y))
def Equation711 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((x ∘ z) ∘ z))
def Equation712 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((x ∘ z) ∘ w))
def Equation715 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((y ∘ x) ∘ z))
def Equation718 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((y ∘ y) ∘ z))
def Equation719 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((y ∘ z) ∘ x))
def Equation720 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((y ∘ z) ∘ y))
def Equation721 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((y ∘ z) ∘ z))
def Equation722 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((y ∘ z) ∘ w))
def Equation723 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ x) ∘ x))
def Equation724 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ x) ∘ y))
def Equation725 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ x) ∘ z))
def Equation726 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ x) ∘ w))
def Equation727 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ y) ∘ x))
def Equation728 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ y) ∘ y))
def Equation729 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ y) ∘ z))
def Equation730 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ y) ∘ w))
def Equation731 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ z) ∘ x))
def Equation732 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ z) ∘ y))
def Equation733 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ z) ∘ z))
def Equation734 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ z) ∘ w))
def Equation735 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ w) ∘ x))
def Equation736 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ w) ∘ y))
def Equation737 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ w) ∘ z))
def Equation738 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ w) ∘ w))
def Equation743 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((x ∘ x) ∘ w))
def Equation747 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((x ∘ y) ∘ w))
def Equation751 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((x ∘ z) ∘ w))
def Equation752 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((x ∘ w) ∘ x))
def Equation753 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((x ∘ w) ∘ y))
def Equation754 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((x ∘ w) ∘ z))
def Equation755 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((x ∘ w) ∘ w))
def Equation760 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((y ∘ x) ∘ w))
def Equation764 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((y ∘ y) ∘ w))
def Equation768 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((y ∘ z) ∘ w))
def Equation769 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((y ∘ w) ∘ x))
def Equation770 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((y ∘ w) ∘ y))
def Equation771 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((y ∘ w) ∘ z))
def Equation772 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((y ∘ w) ∘ w))
def Equation777 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((z ∘ x) ∘ w))
def Equation781 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((z ∘ y) ∘ w))
def Equation785 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((z ∘ z) ∘ w))
def Equation786 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((z ∘ w) ∘ x))
def Equation787 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((z ∘ w) ∘ y))
def Equation788 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((z ∘ w) ∘ z))
def Equation789 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((z ∘ w) ∘ w))
def Equation791 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ x) ∘ x))
def Equation792 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ x) ∘ y))
def Equation793 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ x) ∘ z))
def Equation794 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ x) ∘ w))
def Equation796 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ y) ∘ x))
def Equation797 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ y) ∘ y))
def Equation798 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ y) ∘ z))
def Equation799 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ y) ∘ w))
def Equation801 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ z) ∘ x))
def Equation802 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ z) ∘ y))
def Equation803 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ z) ∘ z))
def Equation804 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ z) ∘ w))
def Equation806 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ w) ∘ x))
def Equation807 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ w) ∘ y))
def Equation808 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ w) ∘ z))
def Equation809 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ w) ∘ w))
def Equation827 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((x ∘ y) ∘ (y ∘ z))
def Equation831 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((x ∘ y) ∘ (z ∘ w))
def Equation837 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ x) ∘ (y ∘ z))
def Equation841 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ x) ∘ (z ∘ w))
def Equation844 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ y) ∘ (x ∘ z))
def Equation847 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ y) ∘ (y ∘ z))
def Equation848 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ y) ∘ (z ∘ x))
def Equation849 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ y) ∘ (z ∘ y))
def Equation850 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ y) ∘ (z ∘ z))
def Equation851 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ y) ∘ (z ∘ w))
def Equation855 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ z) ∘ (x ∘ w))
def Equation859 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ z) ∘ (y ∘ w))
def Equation863 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ z) ∘ (z ∘ w))
def Equation864 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ z) ∘ (w ∘ x))
def Equation865 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ z) ∘ (w ∘ y))
def Equation866 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ z) ∘ (w ∘ z))
def Equation867 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ z) ∘ (w ∘ w))
def Equation874 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ x) ∘ (y ∘ z))
def Equation878 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ x) ∘ (z ∘ w))
def Equation881 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ y) ∘ (x ∘ z))
def Equation884 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ y) ∘ (y ∘ z))
def Equation885 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ y) ∘ (z ∘ x))
def Equation886 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ y) ∘ (z ∘ y))
def Equation887 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ y) ∘ (z ∘ z))
def Equation888 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ y) ∘ (z ∘ w))
def Equation892 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ z) ∘ (x ∘ w))
def Equation896 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ z) ∘ (y ∘ w))
def Equation900 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ z) ∘ (z ∘ w))
def Equation901 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ z) ∘ (w ∘ x))
def Equation902 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ z) ∘ (w ∘ y))
def Equation903 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ z) ∘ (w ∘ z))
def Equation904 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ z) ∘ (w ∘ w))
def Equation908 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ x) ∘ (x ∘ z))
def Equation911 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ x) ∘ (y ∘ z))
def Equation912 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ x) ∘ (z ∘ x))
def Equation913 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ x) ∘ (z ∘ y))
def Equation914 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ x) ∘ (z ∘ z))
def Equation915 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ x) ∘ (z ∘ w))
def Equation918 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ y) ∘ (x ∘ z))
def Equation921 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ y) ∘ (y ∘ z))
def Equation922 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ y) ∘ (z ∘ x))
def Equation923 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ y) ∘ (z ∘ y))
def Equation924 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ y) ∘ (z ∘ z))
def Equation925 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ y) ∘ (z ∘ w))
def Equation926 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (x ∘ x))
def Equation927 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (x ∘ y))
def Equation928 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (x ∘ z))
def Equation929 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (x ∘ w))
def Equation930 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (y ∘ x))
def Equation931 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (y ∘ y))
def Equation932 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (y ∘ z))
def Equation933 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (y ∘ w))
def Equation934 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (z ∘ x))
def Equation935 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (z ∘ y))
def Equation936 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (z ∘ z))
def Equation937 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (z ∘ w))
def Equation938 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (w ∘ x))
def Equation939 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (w ∘ y))
def Equation940 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (w ∘ z))
def Equation941 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (w ∘ w))
def Equation946 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ x) ∘ (x ∘ w))
def Equation950 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ x) ∘ (y ∘ w))
def Equation954 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ x) ∘ (z ∘ w))
def Equation955 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ x) ∘ (w ∘ x))
def Equation956 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ x) ∘ (w ∘ y))
def Equation957 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ x) ∘ (w ∘ z))
def Equation958 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ x) ∘ (w ∘ w))
def Equation963 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ (x ∘ w))
def Equation967 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ (y ∘ w))
def Equation971 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ (z ∘ w))
def Equation972 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ (w ∘ x))
def Equation973 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ (w ∘ y))
def Equation974 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ (w ∘ z))
def Equation975 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ (w ∘ w))
def Equation980 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ z) ∘ (x ∘ w))
def Equation984 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ z) ∘ (y ∘ w))
def Equation988 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ z) ∘ (z ∘ w))
def Equation989 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ z) ∘ (w ∘ x))
def Equation990 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ z) ∘ (w ∘ y))
def Equation991 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ z) ∘ (w ∘ z))
def Equation992 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ z) ∘ (w ∘ w))
def Equation994 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (x ∘ x))
def Equation995 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (x ∘ y))
def Equation996 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (x ∘ z))
def Equation997 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (x ∘ w))
def Equation999 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (y ∘ x))
def Equation1000 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (y ∘ y))
def Equation1001 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (y ∘ z))
def Equation1002 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (y ∘ w))
def Equation1004 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (z ∘ x))
def Equation1005 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (z ∘ y))
def Equation1006 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (z ∘ z))
def Equation1007 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (z ∘ w))
def Equation1009 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (w ∘ x))
def Equation1010 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (w ∘ y))
def Equation1011 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (w ∘ z))
def Equation1012 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (w ∘ w))
def Equation1030 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((x ∘ (y ∘ y)) ∘ z)
def Equation1034 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((x ∘ (y ∘ z)) ∘ w)
def Equation1040 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ (x ∘ y)) ∘ z)
def Equation1044 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (x ∘ z)) ∘ w)
def Equation1047 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ (y ∘ x)) ∘ z)
def Equation1050 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ (y ∘ y)) ∘ z)
def Equation1051 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ (y ∘ z)) ∘ x)
def Equation1052 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ (y ∘ z)) ∘ y)
def Equation1053 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ (y ∘ z)) ∘ z)
def Equation1054 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (y ∘ z)) ∘ w)
def Equation1058 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (z ∘ x)) ∘ w)
def Equation1062 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (z ∘ y)) ∘ w)
def Equation1066 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (z ∘ z)) ∘ w)
def Equation1067 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (z ∘ w)) ∘ x)
def Equation1068 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (z ∘ w)) ∘ y)
def Equation1069 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (z ∘ w)) ∘ z)
def Equation1070 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (z ∘ w)) ∘ w)
def Equation1077 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (x ∘ y)) ∘ z)
def Equation1081 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (x ∘ z)) ∘ w)
def Equation1084 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (y ∘ x)) ∘ z)
def Equation1087 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (y ∘ y)) ∘ z)
def Equation1088 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (y ∘ z)) ∘ x)
def Equation1089 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (y ∘ z)) ∘ y)
def Equation1090 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (y ∘ z)) ∘ z)
def Equation1091 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (y ∘ z)) ∘ w)
def Equation1095 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (z ∘ x)) ∘ w)
def Equation1099 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (z ∘ y)) ∘ w)
def Equation1103 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (z ∘ z)) ∘ w)
def Equation1104 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (z ∘ w)) ∘ x)
def Equation1105 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (z ∘ w)) ∘ y)
def Equation1106 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (z ∘ w)) ∘ z)
def Equation1107 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (z ∘ w)) ∘ w)
def Equation1111 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (x ∘ x)) ∘ z)
def Equation1114 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (x ∘ y)) ∘ z)
def Equation1115 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (x ∘ z)) ∘ x)
def Equation1116 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (x ∘ z)) ∘ y)
def Equation1117 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (x ∘ z)) ∘ z)
def Equation1118 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (x ∘ z)) ∘ w)
def Equation1121 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (y ∘ x)) ∘ z)
def Equation1124 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (y ∘ y)) ∘ z)
def Equation1125 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (y ∘ z)) ∘ x)
def Equation1126 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (y ∘ z)) ∘ y)
def Equation1127 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (y ∘ z)) ∘ z)
def Equation1128 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (y ∘ z)) ∘ w)
def Equation1129 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ x)) ∘ x)
def Equation1130 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ x)) ∘ y)
def Equation1131 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ x)) ∘ z)
def Equation1132 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ x)) ∘ w)
def Equation1133 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ y)) ∘ x)
def Equation1134 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ y)) ∘ y)
def Equation1135 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ y)) ∘ z)
def Equation1136 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ y)) ∘ w)
def Equation1137 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ z)) ∘ x)
def Equation1138 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ z)) ∘ y)
def Equation1139 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ z)) ∘ z)
def Equation1140 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ z)) ∘ w)
def Equation1141 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ x)
def Equation1142 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ y)
def Equation1143 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ z)
def Equation1144 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ w)
def Equation1149 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (x ∘ x)) ∘ w)
def Equation1153 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (x ∘ y)) ∘ w)
def Equation1157 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (x ∘ z)) ∘ w)
def Equation1158 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (x ∘ w)) ∘ x)
def Equation1159 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (x ∘ w)) ∘ y)
def Equation1160 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (x ∘ w)) ∘ z)
def Equation1161 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (x ∘ w)) ∘ w)
def Equation1166 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (y ∘ x)) ∘ w)
def Equation1170 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (y ∘ y)) ∘ w)
def Equation1174 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (y ∘ z)) ∘ w)
def Equation1175 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (y ∘ w)) ∘ x)
def Equation1176 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (y ∘ w)) ∘ y)
def Equation1177 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (y ∘ w)) ∘ z)
def Equation1178 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (y ∘ w)) ∘ w)
def Equation1183 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (z ∘ x)) ∘ w)
def Equation1187 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (z ∘ y)) ∘ w)
def Equation1191 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (z ∘ z)) ∘ w)
def Equation1192 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (z ∘ w)) ∘ x)
def Equation1193 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (z ∘ w)) ∘ y)
def Equation1194 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (z ∘ w)) ∘ z)
def Equation1195 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (z ∘ w)) ∘ w)
def Equation1197 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ x)) ∘ x)
def Equation1198 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ x)) ∘ y)
def Equation1199 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ x)) ∘ z)
def Equation1200 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ x)) ∘ w)
def Equation1202 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ y)) ∘ x)
def Equation1203 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ y)) ∘ y)
def Equation1204 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ y)) ∘ z)
def Equation1205 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ y)) ∘ w)
def Equation1207 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ z)) ∘ x)
def Equation1208 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ z)) ∘ y)
def Equation1209 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ z)) ∘ z)
def Equation1210 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ z)) ∘ w)
def Equation1212 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ w)) ∘ x)
def Equation1213 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ w)) ∘ y)
def Equation1214 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ w)) ∘ z)
def Equation1215 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ w)) ∘ w)
def Equation1233 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (((x ∘ y) ∘ y) ∘ z)
def Equation1237 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((x ∘ y) ∘ z) ∘ w)
def Equation1243 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (((y ∘ x) ∘ y) ∘ z)
def Equation1247 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ x) ∘ z) ∘ w)
def Equation1250 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (((y ∘ y) ∘ x) ∘ z)
def Equation1253 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (((y ∘ y) ∘ y) ∘ z)
def Equation1254 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (((y ∘ y) ∘ z) ∘ x)
def Equation1255 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (((y ∘ y) ∘ z) ∘ y)
def Equation1256 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (((y ∘ y) ∘ z) ∘ z)
def Equation1257 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ y) ∘ z) ∘ w)
def Equation1261 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ z) ∘ x) ∘ w)
def Equation1265 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ z) ∘ y) ∘ w)
def Equation1269 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ z) ∘ z) ∘ w)
def Equation1270 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ z) ∘ w) ∘ x)
def Equation1271 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ z) ∘ w) ∘ y)
def Equation1272 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ z) ∘ w) ∘ z)
def Equation1273 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ z) ∘ w) ∘ w)
def Equation1280 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ x) ∘ y) ∘ z)
def Equation1284 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ x) ∘ z) ∘ w)
def Equation1287 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ y) ∘ x) ∘ z)
def Equation1290 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ y) ∘ y) ∘ z)
def Equation1291 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ y) ∘ z) ∘ x)
def Equation1292 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ y) ∘ z) ∘ y)
def Equation1293 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ y) ∘ z) ∘ z)
def Equation1294 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ y) ∘ z) ∘ w)
def Equation1298 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ z) ∘ x) ∘ w)
def Equation1302 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ z) ∘ y) ∘ w)
def Equation1306 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ z) ∘ z) ∘ w)
def Equation1307 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ z) ∘ w) ∘ x)
def Equation1308 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ z) ∘ w) ∘ y)
def Equation1309 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ z) ∘ w) ∘ z)
def Equation1310 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ z) ∘ w) ∘ w)
def Equation1314 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ x) ∘ x) ∘ z)
def Equation1317 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ x) ∘ y) ∘ z)
def Equation1318 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ x) ∘ z) ∘ x)
def Equation1319 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ x) ∘ z) ∘ y)
def Equation1320 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ x) ∘ z) ∘ z)
def Equation1321 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ x) ∘ z) ∘ w)
def Equation1324 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ y) ∘ x) ∘ z)
def Equation1327 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ y) ∘ y) ∘ z)
def Equation1328 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ y) ∘ z) ∘ x)
def Equation1329 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ y) ∘ z) ∘ y)
def Equation1330 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ y) ∘ z) ∘ z)
def Equation1331 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ y) ∘ z) ∘ w)
def Equation1332 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ x) ∘ x)
def Equation1333 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ x) ∘ y)
def Equation1334 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ x) ∘ z)
def Equation1335 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ x) ∘ w)
def Equation1336 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ y) ∘ x)
def Equation1337 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ y) ∘ y)
def Equation1338 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ y) ∘ z)
def Equation1339 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ y) ∘ w)
def Equation1340 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ z) ∘ x)
def Equation1341 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ z) ∘ y)
def Equation1342 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ z) ∘ z)
def Equation1343 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ z) ∘ w)
def Equation1344 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ w) ∘ x)
def Equation1345 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ w) ∘ y)
def Equation1346 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ w) ∘ z)
def Equation1347 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ w) ∘ w)
def Equation1352 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ x) ∘ x) ∘ w)
def Equation1356 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ x) ∘ y) ∘ w)
def Equation1360 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ x) ∘ z) ∘ w)
def Equation1361 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ x) ∘ w) ∘ x)
def Equation1362 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ x) ∘ w) ∘ y)
def Equation1363 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ x) ∘ w) ∘ z)
def Equation1364 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ x) ∘ w) ∘ w)
def Equation1369 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ y) ∘ x) ∘ w)
def Equation1373 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ y) ∘ y) ∘ w)
def Equation1377 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ y) ∘ z) ∘ w)
def Equation1378 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ y) ∘ w) ∘ x)
def Equation1379 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ y) ∘ w) ∘ y)
def Equation1380 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ y) ∘ w) ∘ z)
def Equation1381 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ y) ∘ w) ∘ w)
def Equation1386 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ z) ∘ x) ∘ w)
def Equation1390 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ z) ∘ y) ∘ w)
def Equation1394 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ z) ∘ z) ∘ w)
def Equation1395 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ z) ∘ w) ∘ x)
def Equation1396 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ z) ∘ w) ∘ y)
def Equation1397 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ z) ∘ w) ∘ z)
def Equation1398 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ z) ∘ w) ∘ w)
def Equation1400 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ x) ∘ x)
def Equation1401 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ x) ∘ y)
def Equation1402 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ x) ∘ z)
def Equation1403 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ x) ∘ w)
def Equation1405 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ y) ∘ x)
def Equation1406 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ y) ∘ y)
def Equation1407 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ y) ∘ z)
def Equation1408 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ y) ∘ w)
def Equation1410 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ z) ∘ x)
def Equation1411 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ z) ∘ y)
def Equation1412 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ z) ∘ z)
def Equation1413 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ z) ∘ w)
def Equation1415 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ w) ∘ x)
def Equation1416 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ w) ∘ y)
def Equation1417 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ w) ∘ z)
def Equation1418 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ w) ∘ w)
def Equation1436 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ x) ∘ (y ∘ (y ∘ z))
def Equation1440 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ x) ∘ (y ∘ (z ∘ w))
def Equation1446 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ (x ∘ (y ∘ z))
def Equation1450 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (x ∘ (z ∘ w))
def Equation1453 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ (y ∘ (x ∘ z))
def Equation1456 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ (y ∘ (y ∘ z))
def Equation1457 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ (y ∘ (z ∘ x))
def Equation1458 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ (y ∘ (z ∘ y))
def Equation1459 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ (y ∘ (z ∘ z))
def Equation1460 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (y ∘ (z ∘ w))
def Equation1464 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (z ∘ (x ∘ w))
def Equation1468 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (z ∘ (y ∘ w))
def Equation1472 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (z ∘ (z ∘ w))
def Equation1473 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (z ∘ (w ∘ x))
def Equation1474 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (z ∘ (w ∘ y))
def Equation1475 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (z ∘ (w ∘ z))
def Equation1476 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (z ∘ (w ∘ w))
def Equation1483 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (x ∘ (y ∘ z))
def Equation1487 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (x ∘ (z ∘ w))
def Equation1490 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (y ∘ (x ∘ z))
def Equation1493 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (y ∘ (y ∘ z))
def Equation1494 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (y ∘ (z ∘ x))
def Equation1495 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (y ∘ (z ∘ y))
def Equation1496 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (y ∘ (z ∘ z))
def Equation1497 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (y ∘ (z ∘ w))
def Equation1501 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (z ∘ (x ∘ w))
def Equation1505 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (z ∘ (y ∘ w))
def Equation1509 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (z ∘ (z ∘ w))
def Equation1510 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (z ∘ (w ∘ x))
def Equation1511 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (z ∘ (w ∘ y))
def Equation1512 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (z ∘ (w ∘ z))
def Equation1513 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (z ∘ (w ∘ w))
def Equation1517 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (x ∘ (x ∘ z))
def Equation1520 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (x ∘ (y ∘ z))
def Equation1521 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (x ∘ (z ∘ x))
def Equation1522 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (x ∘ (z ∘ y))
def Equation1523 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (x ∘ (z ∘ z))
def Equation1524 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (x ∘ (z ∘ w))
def Equation1527 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (y ∘ (x ∘ z))
def Equation1530 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (y ∘ (y ∘ z))
def Equation1531 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (y ∘ (z ∘ x))
def Equation1532 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (y ∘ (z ∘ y))
def Equation1533 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (y ∘ (z ∘ z))
def Equation1534 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (y ∘ (z ∘ w))
def Equation1535 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (x ∘ x))
def Equation1536 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (x ∘ y))
def Equation1537 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (x ∘ z))
def Equation1538 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (x ∘ w))
def Equation1539 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (y ∘ x))
def Equation1540 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (y ∘ y))
def Equation1541 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (y ∘ z))
def Equation1542 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (y ∘ w))
def Equation1543 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (z ∘ x))
def Equation1544 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (z ∘ y))
def Equation1545 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (z ∘ z))
def Equation1546 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (z ∘ w))
def Equation1547 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (w ∘ x))
def Equation1548 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (w ∘ y))
def Equation1549 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (w ∘ z))
def Equation1550 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (w ∘ w))
def Equation1555 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (x ∘ (x ∘ w))
def Equation1559 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (x ∘ (y ∘ w))
def Equation1563 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (x ∘ (z ∘ w))
def Equation1564 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (x ∘ (w ∘ x))
def Equation1565 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (x ∘ (w ∘ y))
def Equation1566 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (x ∘ (w ∘ z))
def Equation1567 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (x ∘ (w ∘ w))
def Equation1572 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ (x ∘ w))
def Equation1576 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ (y ∘ w))
def Equation1580 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ (z ∘ w))
def Equation1581 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ (w ∘ x))
def Equation1582 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ (w ∘ y))
def Equation1583 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ (w ∘ z))
def Equation1584 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ (w ∘ w))
def Equation1589 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (z ∘ (x ∘ w))
def Equation1593 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (z ∘ (y ∘ w))
def Equation1597 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (z ∘ (z ∘ w))
def Equation1598 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (z ∘ (w ∘ x))
def Equation1599 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (z ∘ (w ∘ y))
def Equation1600 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (z ∘ (w ∘ z))
def Equation1601 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (z ∘ (w ∘ w))
def Equation1603 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (x ∘ x))
def Equation1604 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (x ∘ y))
def Equation1605 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (x ∘ z))
def Equation1606 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (x ∘ w))
def Equation1608 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (y ∘ x))
def Equation1609 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (y ∘ y))
def Equation1610 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (y ∘ z))
def Equation1611 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (y ∘ w))
def Equation1613 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (z ∘ x))
def Equation1614 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (z ∘ y))
def Equation1615 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (z ∘ z))
def Equation1616 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (z ∘ w))
def Equation1618 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (w ∘ x))
def Equation1619 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (w ∘ y))
def Equation1620 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (w ∘ z))
def Equation1621 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (w ∘ w))
def Equation1639 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ x) ∘ ((y ∘ y) ∘ z)
def Equation1643 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ x) ∘ ((y ∘ z) ∘ w)
def Equation1649 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ ((x ∘ y) ∘ z)
def Equation1653 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((x ∘ z) ∘ w)
def Equation1656 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ ((y ∘ x) ∘ z)
def Equation1659 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ ((y ∘ y) ∘ z)
def Equation1660 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ ((y ∘ z) ∘ x)
def Equation1661 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ ((y ∘ z) ∘ y)
def Equation1662 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ ((y ∘ z) ∘ z)
def Equation1663 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((y ∘ z) ∘ w)
def Equation1667 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((z ∘ x) ∘ w)
def Equation1671 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((z ∘ y) ∘ w)
def Equation1675 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((z ∘ z) ∘ w)
def Equation1676 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((z ∘ w) ∘ x)
def Equation1677 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((z ∘ w) ∘ y)
def Equation1678 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((z ∘ w) ∘ z)
def Equation1679 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((z ∘ w) ∘ w)
def Equation1686 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((x ∘ y) ∘ z)
def Equation1690 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((x ∘ z) ∘ w)
def Equation1693 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((y ∘ x) ∘ z)
def Equation1696 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((y ∘ y) ∘ z)
def Equation1697 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((y ∘ z) ∘ x)
def Equation1698 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((y ∘ z) ∘ y)
def Equation1699 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((y ∘ z) ∘ z)
def Equation1700 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((y ∘ z) ∘ w)
def Equation1704 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((z ∘ x) ∘ w)
def Equation1708 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((z ∘ y) ∘ w)
def Equation1712 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((z ∘ z) ∘ w)
def Equation1713 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((z ∘ w) ∘ x)
def Equation1714 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((z ∘ w) ∘ y)
def Equation1715 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((z ∘ w) ∘ z)
def Equation1716 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((z ∘ w) ∘ w)
def Equation1720 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((x ∘ x) ∘ z)
def Equation1723 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((x ∘ y) ∘ z)
def Equation1724 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((x ∘ z) ∘ x)
def Equation1725 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((x ∘ z) ∘ y)
def Equation1726 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((x ∘ z) ∘ z)
def Equation1727 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((x ∘ z) ∘ w)
def Equation1730 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((y ∘ x) ∘ z)
def Equation1733 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((y ∘ y) ∘ z)
def Equation1734 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((y ∘ z) ∘ x)
def Equation1735 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((y ∘ z) ∘ y)
def Equation1736 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((y ∘ z) ∘ z)
def Equation1737 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((y ∘ z) ∘ w)
def Equation1738 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ x) ∘ x)
def Equation1739 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ x) ∘ y)
def Equation1740 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ x) ∘ z)
def Equation1741 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ x) ∘ w)
def Equation1742 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ y) ∘ x)
def Equation1743 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ y) ∘ y)
def Equation1744 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ y) ∘ z)
def Equation1745 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ y) ∘ w)
def Equation1746 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ z) ∘ x)
def Equation1747 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ z) ∘ y)
def Equation1748 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ z) ∘ z)
def Equation1749 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ z) ∘ w)
def Equation1750 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ x)
def Equation1751 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ y)
def Equation1752 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ z)
def Equation1753 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ w)
def Equation1758 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((x ∘ x) ∘ w)
def Equation1762 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((x ∘ y) ∘ w)
def Equation1766 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((x ∘ z) ∘ w)
def Equation1767 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((x ∘ w) ∘ x)
def Equation1768 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((x ∘ w) ∘ y)
def Equation1769 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((x ∘ w) ∘ z)
def Equation1770 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((x ∘ w) ∘ w)
def Equation1775 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((y ∘ x) ∘ w)
def Equation1779 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((y ∘ y) ∘ w)
def Equation1783 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((y ∘ z) ∘ w)
def Equation1784 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((y ∘ w) ∘ x)
def Equation1785 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((y ∘ w) ∘ y)
def Equation1786 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((y ∘ w) ∘ z)
def Equation1787 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((y ∘ w) ∘ w)
def Equation1792 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((z ∘ x) ∘ w)
def Equation1796 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((z ∘ y) ∘ w)
def Equation1800 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((z ∘ z) ∘ w)
def Equation1801 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((z ∘ w) ∘ x)
def Equation1802 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((z ∘ w) ∘ y)
def Equation1803 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((z ∘ w) ∘ z)
def Equation1804 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((z ∘ w) ∘ w)
def Equation1806 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ x) ∘ x)
def Equation1807 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ x) ∘ y)
def Equation1808 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ x) ∘ z)
def Equation1809 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ x) ∘ w)
def Equation1811 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ y) ∘ x)
def Equation1812 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ y) ∘ y)
def Equation1813 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ y) ∘ z)
def Equation1814 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ y) ∘ w)
def Equation1816 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ z) ∘ x)
def Equation1817 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ z) ∘ y)
def Equation1818 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ z) ∘ z)
def Equation1819 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ z) ∘ w)
def Equation1821 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ w) ∘ x)
def Equation1822 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ w) ∘ y)
def Equation1823 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ w) ∘ z)
def Equation1824 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ w) ∘ w)
def Equation1842 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (x ∘ y)) ∘ (y ∘ z)
def Equation1846 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (x ∘ y)) ∘ (z ∘ w)
def Equation1852 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ x)) ∘ (y ∘ z)
def Equation1856 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ x)) ∘ (z ∘ w)
def Equation1859 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ y)) ∘ (x ∘ z)
def Equation1862 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ y)) ∘ (y ∘ z)
def Equation1863 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ y)) ∘ (z ∘ x)
def Equation1864 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ y)) ∘ (z ∘ y)
def Equation1865 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ y)) ∘ (z ∘ z)
def Equation1866 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ y)) ∘ (z ∘ w)
def Equation1870 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ z)) ∘ (x ∘ w)
def Equation1874 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ z)) ∘ (y ∘ w)
def Equation1878 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ z)) ∘ (z ∘ w)
def Equation1879 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ z)) ∘ (w ∘ x)
def Equation1880 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ z)) ∘ (w ∘ y)
def Equation1881 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ z)) ∘ (w ∘ z)
def Equation1882 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ z)) ∘ (w ∘ w)
def Equation1889 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ x)) ∘ (y ∘ z)
def Equation1893 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ x)) ∘ (z ∘ w)
def Equation1896 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ y)) ∘ (x ∘ z)
def Equation1899 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ y)) ∘ (y ∘ z)
def Equation1900 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ y)) ∘ (z ∘ x)
def Equation1901 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ y)) ∘ (z ∘ y)
def Equation1902 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ y)) ∘ (z ∘ z)
def Equation1903 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ y)) ∘ (z ∘ w)
def Equation1907 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ z)) ∘ (x ∘ w)
def Equation1911 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ z)) ∘ (y ∘ w)
def Equation1915 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ z)) ∘ (z ∘ w)
def Equation1916 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ z)) ∘ (w ∘ x)
def Equation1917 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ z)) ∘ (w ∘ y)
def Equation1918 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ z)) ∘ (w ∘ z)
def Equation1919 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ z)) ∘ (w ∘ w)
def Equation1923 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ x)) ∘ (x ∘ z)
def Equation1926 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ x)) ∘ (y ∘ z)
def Equation1927 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ x)) ∘ (z ∘ x)
def Equation1928 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ x)) ∘ (z ∘ y)
def Equation1929 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ x)) ∘ (z ∘ z)
def Equation1930 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ x)) ∘ (z ∘ w)
def Equation1933 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ y)) ∘ (x ∘ z)
def Equation1936 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ y)) ∘ (y ∘ z)
def Equation1937 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ y)) ∘ (z ∘ x)
def Equation1938 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ y)) ∘ (z ∘ y)
def Equation1939 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ y)) ∘ (z ∘ z)
def Equation1940 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ y)) ∘ (z ∘ w)
def Equation1941 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (x ∘ x)
def Equation1942 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (x ∘ y)
def Equation1943 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (x ∘ z)
def Equation1944 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (x ∘ w)
def Equation1945 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (y ∘ x)
def Equation1946 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (y ∘ y)
def Equation1947 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (y ∘ z)
def Equation1948 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (y ∘ w)
def Equation1949 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (z ∘ x)
def Equation1950 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (z ∘ y)
def Equation1951 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (z ∘ z)
def Equation1952 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (z ∘ w)
def Equation1953 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ x)
def Equation1954 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ y)
def Equation1955 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ z)
def Equation1956 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ w)
def Equation1961 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ x)) ∘ (x ∘ w)
def Equation1965 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ x)) ∘ (y ∘ w)
def Equation1969 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ x)) ∘ (z ∘ w)
def Equation1970 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ x)) ∘ (w ∘ x)
def Equation1971 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ x)) ∘ (w ∘ y)
def Equation1972 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ x)) ∘ (w ∘ z)
def Equation1973 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ x)) ∘ (w ∘ w)
def Equation1978 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ (x ∘ w)
def Equation1982 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ (y ∘ w)
def Equation1986 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ (z ∘ w)
def Equation1987 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ (w ∘ x)
def Equation1988 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ (w ∘ y)
def Equation1989 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ (w ∘ z)
def Equation1990 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ (w ∘ w)
def Equation1995 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ z)) ∘ (x ∘ w)
def Equation1999 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ z)) ∘ (y ∘ w)
def Equation2003 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ z)) ∘ (z ∘ w)
def Equation2004 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ z)) ∘ (w ∘ x)
def Equation2005 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ z)) ∘ (w ∘ y)
def Equation2006 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ z)) ∘ (w ∘ z)
def Equation2007 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ z)) ∘ (w ∘ w)
def Equation2009 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (x ∘ x)
def Equation2010 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (x ∘ y)
def Equation2011 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (x ∘ z)
def Equation2012 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (x ∘ w)
def Equation2014 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (y ∘ x)
def Equation2015 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (y ∘ y)
def Equation2016 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (y ∘ z)
def Equation2017 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (y ∘ w)
def Equation2019 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (z ∘ x)
def Equation2020 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (z ∘ y)
def Equation2021 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (z ∘ z)
def Equation2022 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (z ∘ w)
def Equation2024 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (w ∘ x)
def Equation2025 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (w ∘ y)
def Equation2026 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (w ∘ z)
def Equation2027 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (w ∘ w)
def Equation2045 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ x) ∘ y) ∘ (y ∘ z)
def Equation2049 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ x) ∘ y) ∘ (z ∘ w)
def Equation2055 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ x) ∘ (y ∘ z)
def Equation2059 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ x) ∘ (z ∘ w)
def Equation2062 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ y) ∘ (x ∘ z)
def Equation2065 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ y) ∘ (y ∘ z)
def Equation2066 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ y) ∘ (z ∘ x)
def Equation2067 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ y) ∘ (z ∘ y)
def Equation2068 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ y) ∘ (z ∘ z)
def Equation2069 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ y) ∘ (z ∘ w)
def Equation2073 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ z) ∘ (x ∘ w)
def Equation2077 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ z) ∘ (y ∘ w)
def Equation2081 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ z) ∘ (z ∘ w)
def Equation2082 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ z) ∘ (w ∘ x)
def Equation2083 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ z) ∘ (w ∘ y)
def Equation2084 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ z) ∘ (w ∘ z)
def Equation2085 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ z) ∘ (w ∘ w)
def Equation2092 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ x) ∘ (y ∘ z)
def Equation2096 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ x) ∘ (z ∘ w)
def Equation2099 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ y) ∘ (x ∘ z)
def Equation2102 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ y) ∘ (y ∘ z)
def Equation2103 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ y) ∘ (z ∘ x)
def Equation2104 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ y) ∘ (z ∘ y)
def Equation2105 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ y) ∘ (z ∘ z)
def Equation2106 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ y) ∘ (z ∘ w)
def Equation2110 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ z) ∘ (x ∘ w)
def Equation2114 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ z) ∘ (y ∘ w)
def Equation2118 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ z) ∘ (z ∘ w)
def Equation2119 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ z) ∘ (w ∘ x)
def Equation2120 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ z) ∘ (w ∘ y)
def Equation2121 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ z) ∘ (w ∘ z)
def Equation2122 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ z) ∘ (w ∘ w)
def Equation2126 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ x) ∘ (x ∘ z)
def Equation2129 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ x) ∘ (y ∘ z)
def Equation2130 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ x) ∘ (z ∘ x)
def Equation2131 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ x) ∘ (z ∘ y)
def Equation2132 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ x) ∘ (z ∘ z)
def Equation2133 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ x) ∘ (z ∘ w)
def Equation2136 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ y) ∘ (x ∘ z)
def Equation2139 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ y) ∘ (y ∘ z)
def Equation2140 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ y) ∘ (z ∘ x)
def Equation2141 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ y) ∘ (z ∘ y)
def Equation2142 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ y) ∘ (z ∘ z)
def Equation2143 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ y) ∘ (z ∘ w)
def Equation2144 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (x ∘ x)
def Equation2145 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (x ∘ y)
def Equation2146 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (x ∘ z)
def Equation2147 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (x ∘ w)
def Equation2148 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (y ∘ x)
def Equation2149 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (y ∘ y)
def Equation2150 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (y ∘ z)
def Equation2151 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (y ∘ w)
def Equation2152 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (z ∘ x)
def Equation2153 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (z ∘ y)
def Equation2154 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (z ∘ z)
def Equation2155 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (z ∘ w)
def Equation2156 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ x)
def Equation2157 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ y)
def Equation2158 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ z)
def Equation2159 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ w)
def Equation2164 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ x) ∘ (x ∘ w)
def Equation2168 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ x) ∘ (y ∘ w)
def Equation2172 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ x) ∘ (z ∘ w)
def Equation2173 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ x) ∘ (w ∘ x)
def Equation2174 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ x) ∘ (w ∘ y)
def Equation2175 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ x) ∘ (w ∘ z)
def Equation2176 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ x) ∘ (w ∘ w)
def Equation2181 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ (x ∘ w)
def Equation2185 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ (y ∘ w)
def Equation2189 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ (z ∘ w)
def Equation2190 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ (w ∘ x)
def Equation2191 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ (w ∘ y)
def Equation2192 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ (w ∘ z)
def Equation2193 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ (w ∘ w)
def Equation2198 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ z) ∘ (x ∘ w)
def Equation2202 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ z) ∘ (y ∘ w)
def Equation2206 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ z) ∘ (z ∘ w)
def Equation2207 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ z) ∘ (w ∘ x)
def Equation2208 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ z) ∘ (w ∘ y)
def Equation2209 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ z) ∘ (w ∘ z)
def Equation2210 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ z) ∘ (w ∘ w)
def Equation2212 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (x ∘ x)
def Equation2213 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (x ∘ y)
def Equation2214 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (x ∘ z)
def Equation2215 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (x ∘ w)
def Equation2217 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (y ∘ x)
def Equation2218 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (y ∘ y)
def Equation2219 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (y ∘ z)
def Equation2220 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (y ∘ w)
def Equation2222 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (z ∘ x)
def Equation2223 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (z ∘ y)
def Equation2224 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (z ∘ z)
def Equation2225 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (z ∘ w)
def Equation2227 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (w ∘ x)
def Equation2228 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (w ∘ y)
def Equation2229 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (w ∘ z)
def Equation2230 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (w ∘ w)
def Equation2248 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (x ∘ (y ∘ y))) ∘ z
def Equation2252 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (x ∘ (y ∘ z))) ∘ w
def Equation2258 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ (x ∘ y))) ∘ z
def Equation2262 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (x ∘ z))) ∘ w
def Equation2265 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ (y ∘ x))) ∘ z
def Equation2268 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ (y ∘ y))) ∘ z
def Equation2269 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ (y ∘ z))) ∘ x
def Equation2270 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ (y ∘ z))) ∘ y
def Equation2271 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ (y ∘ z))) ∘ z
def Equation2272 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (y ∘ z))) ∘ w
def Equation2276 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (z ∘ x))) ∘ w
def Equation2280 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (z ∘ y))) ∘ w
def Equation2284 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (z ∘ z))) ∘ w
def Equation2285 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (z ∘ w))) ∘ x
def Equation2286 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (z ∘ w))) ∘ y
def Equation2287 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (z ∘ w))) ∘ z
def Equation2288 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (z ∘ w))) ∘ w
def Equation2295 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (x ∘ y))) ∘ z
def Equation2299 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (x ∘ z))) ∘ w
def Equation2302 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (y ∘ x))) ∘ z
def Equation2305 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (y ∘ y))) ∘ z
def Equation2306 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (y ∘ z))) ∘ x
def Equation2307 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (y ∘ z))) ∘ y
def Equation2308 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (y ∘ z))) ∘ z
def Equation2309 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (y ∘ z))) ∘ w
def Equation2313 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (z ∘ x))) ∘ w
def Equation2317 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (z ∘ y))) ∘ w
def Equation2321 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (z ∘ z))) ∘ w
def Equation2322 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (z ∘ w))) ∘ x
def Equation2323 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (z ∘ w))) ∘ y
def Equation2324 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (z ∘ w))) ∘ z
def Equation2325 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (z ∘ w))) ∘ w
def Equation2329 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (x ∘ x))) ∘ z
def Equation2332 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (x ∘ y))) ∘ z
def Equation2333 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (x ∘ z))) ∘ x
def Equation2334 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (x ∘ z))) ∘ y
def Equation2335 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (x ∘ z))) ∘ z
def Equation2336 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (x ∘ z))) ∘ w
def Equation2339 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (y ∘ x))) ∘ z
def Equation2342 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (y ∘ y))) ∘ z
def Equation2343 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (y ∘ z))) ∘ x
def Equation2344 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (y ∘ z))) ∘ y
def Equation2345 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (y ∘ z))) ∘ z
def Equation2346 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (y ∘ z))) ∘ w
def Equation2347 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ x))) ∘ x
def Equation2348 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ x))) ∘ y
def Equation2349 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ x))) ∘ z
def Equation2350 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ x))) ∘ w
def Equation2351 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ y))) ∘ x
def Equation2352 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ y))) ∘ y
def Equation2353 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ y))) ∘ z
def Equation2354 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ y))) ∘ w
def Equation2355 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ z))) ∘ x
def Equation2356 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ z))) ∘ y
def Equation2357 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ z))) ∘ z
def Equation2358 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ z))) ∘ w
def Equation2359 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ x
def Equation2360 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ y
def Equation2361 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ z
def Equation2362 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ w
def Equation2367 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (x ∘ x))) ∘ w
def Equation2371 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (x ∘ y))) ∘ w
def Equation2375 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (x ∘ z))) ∘ w
def Equation2376 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (x ∘ w))) ∘ x
def Equation2377 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (x ∘ w))) ∘ y
def Equation2378 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (x ∘ w))) ∘ z
def Equation2379 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (x ∘ w))) ∘ w
def Equation2384 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (y ∘ x))) ∘ w
def Equation2388 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (y ∘ y))) ∘ w
def Equation2392 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (y ∘ z))) ∘ w
def Equation2393 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (y ∘ w))) ∘ x
def Equation2394 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (y ∘ w))) ∘ y
def Equation2395 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (y ∘ w))) ∘ z
def Equation2396 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (y ∘ w))) ∘ w
def Equation2401 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (z ∘ x))) ∘ w
def Equation2405 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (z ∘ y))) ∘ w
def Equation2409 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (z ∘ z))) ∘ w
def Equation2410 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (z ∘ w))) ∘ x
def Equation2411 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (z ∘ w))) ∘ y
def Equation2412 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (z ∘ w))) ∘ z
def Equation2413 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (z ∘ w))) ∘ w
def Equation2415 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ x))) ∘ x
def Equation2416 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ x))) ∘ y
def Equation2417 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ x))) ∘ z
def Equation2418 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ x))) ∘ w
def Equation2420 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ y))) ∘ x
def Equation2421 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ y))) ∘ y
def Equation2422 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ y))) ∘ z
def Equation2423 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ y))) ∘ w
def Equation2425 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ z))) ∘ x
def Equation2426 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ z))) ∘ y
def Equation2427 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ z))) ∘ z
def Equation2428 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ z))) ∘ w
def Equation2430 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ w))) ∘ x
def Equation2431 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ w))) ∘ y
def Equation2432 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ w))) ∘ z
def Equation2433 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ w))) ∘ w
def Equation2451 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ ((x ∘ y) ∘ y)) ∘ z
def Equation2455 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((x ∘ y) ∘ z)) ∘ w
def Equation2461 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ ((y ∘ x) ∘ y)) ∘ z
def Equation2465 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ x) ∘ z)) ∘ w
def Equation2468 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ ((y ∘ y) ∘ x)) ∘ z
def Equation2471 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ ((y ∘ y) ∘ y)) ∘ z
def Equation2472 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ ((y ∘ y) ∘ z)) ∘ x
def Equation2473 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ ((y ∘ y) ∘ z)) ∘ y
def Equation2474 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ ((y ∘ y) ∘ z)) ∘ z
def Equation2475 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ y) ∘ z)) ∘ w
def Equation2479 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ z) ∘ x)) ∘ w
def Equation2483 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ z) ∘ y)) ∘ w
def Equation2487 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ z) ∘ z)) ∘ w
def Equation2488 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ z) ∘ w)) ∘ x
def Equation2489 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ z) ∘ w)) ∘ y
def Equation2490 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ z) ∘ w)) ∘ z
def Equation2491 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ z) ∘ w)) ∘ w
def Equation2498 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ x) ∘ y)) ∘ z
def Equation2502 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ x) ∘ z)) ∘ w
def Equation2505 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ y) ∘ x)) ∘ z
def Equation2508 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ y) ∘ y)) ∘ z
def Equation2509 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ y) ∘ z)) ∘ x
def Equation2510 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ y) ∘ z)) ∘ y
def Equation2511 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ y) ∘ z)) ∘ z
def Equation2512 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ y) ∘ z)) ∘ w
def Equation2516 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ z) ∘ x)) ∘ w
def Equation2520 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ z) ∘ y)) ∘ w
def Equation2524 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ z) ∘ z)) ∘ w
def Equation2525 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ z) ∘ w)) ∘ x
def Equation2526 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ z) ∘ w)) ∘ y
def Equation2527 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ z) ∘ w)) ∘ z
def Equation2528 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ z) ∘ w)) ∘ w
def Equation2532 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ x) ∘ x)) ∘ z
def Equation2535 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ x) ∘ y)) ∘ z
def Equation2536 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ x) ∘ z)) ∘ x
def Equation2537 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ x) ∘ z)) ∘ y
def Equation2538 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ x) ∘ z)) ∘ z
def Equation2539 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ x) ∘ z)) ∘ w
def Equation2542 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ y) ∘ x)) ∘ z
def Equation2545 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ y) ∘ y)) ∘ z
def Equation2546 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ y) ∘ z)) ∘ x
def Equation2547 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ y) ∘ z)) ∘ y
def Equation2548 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ y) ∘ z)) ∘ z
def Equation2549 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ y) ∘ z)) ∘ w
def Equation2550 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ x)) ∘ x
def Equation2551 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ x)) ∘ y
def Equation2552 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ x)) ∘ z
def Equation2553 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ x)) ∘ w
def Equation2554 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ y)) ∘ x
def Equation2555 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ y)) ∘ y
def Equation2556 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ y)) ∘ z
def Equation2557 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ y)) ∘ w
def Equation2558 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ z)) ∘ x
def Equation2559 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ z)) ∘ y
def Equation2560 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ z)) ∘ z
def Equation2561 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ z)) ∘ w
def Equation2562 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ x
def Equation2563 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ y
def Equation2564 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ z
def Equation2565 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ w
def Equation2570 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ x) ∘ x)) ∘ w
def Equation2574 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ x) ∘ y)) ∘ w
def Equation2578 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ x) ∘ z)) ∘ w
def Equation2579 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ x) ∘ w)) ∘ x
def Equation2580 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ x) ∘ w)) ∘ y
def Equation2581 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ x) ∘ w)) ∘ z
def Equation2582 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ x) ∘ w)) ∘ w
def Equation2587 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ y) ∘ x)) ∘ w
def Equation2591 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ y) ∘ y)) ∘ w
def Equation2595 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ y) ∘ z)) ∘ w
def Equation2596 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ y) ∘ w)) ∘ x
def Equation2597 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ y) ∘ w)) ∘ y
def Equation2598 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ y) ∘ w)) ∘ z
def Equation2599 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ y) ∘ w)) ∘ w
def Equation2604 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ z) ∘ x)) ∘ w
def Equation2608 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ z) ∘ y)) ∘ w
def Equation2612 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ z) ∘ z)) ∘ w
def Equation2613 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ z) ∘ w)) ∘ x
def Equation2614 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ z) ∘ w)) ∘ y
def Equation2615 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ z) ∘ w)) ∘ z
def Equation2616 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ z) ∘ w)) ∘ w
def Equation2618 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ x)) ∘ x
def Equation2619 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ x)) ∘ y
def Equation2620 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ x)) ∘ z
def Equation2621 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ x)) ∘ w
def Equation2623 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ y)) ∘ x
def Equation2624 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ y)) ∘ y
def Equation2625 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ y)) ∘ z
def Equation2626 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ y)) ∘ w
def Equation2628 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ z)) ∘ x
def Equation2629 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ z)) ∘ y
def Equation2630 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ z)) ∘ z
def Equation2631 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ z)) ∘ w
def Equation2633 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ w)) ∘ x
def Equation2634 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ w)) ∘ y
def Equation2635 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ w)) ∘ z
def Equation2636 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ w)) ∘ w
def Equation2654 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ x) ∘ (y ∘ y)) ∘ z
def Equation2658 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ x) ∘ (y ∘ z)) ∘ w
def Equation2664 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ (x ∘ y)) ∘ z
def Equation2668 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (x ∘ z)) ∘ w
def Equation2671 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ (y ∘ x)) ∘ z
def Equation2674 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ (y ∘ y)) ∘ z
def Equation2675 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ (y ∘ z)) ∘ x
def Equation2676 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ (y ∘ z)) ∘ y
def Equation2677 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ (y ∘ z)) ∘ z
def Equation2678 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (y ∘ z)) ∘ w
def Equation2682 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (z ∘ x)) ∘ w
def Equation2686 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (z ∘ y)) ∘ w
def Equation2690 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (z ∘ z)) ∘ w
def Equation2691 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (z ∘ w)) ∘ x
def Equation2692 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (z ∘ w)) ∘ y
def Equation2693 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (z ∘ w)) ∘ z
def Equation2694 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (z ∘ w)) ∘ w
def Equation2701 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (x ∘ y)) ∘ z
def Equation2705 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (x ∘ z)) ∘ w
def Equation2708 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (y ∘ x)) ∘ z
def Equation2711 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (y ∘ y)) ∘ z
def Equation2712 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (y ∘ z)) ∘ x
def Equation2713 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (y ∘ z)) ∘ y
def Equation2714 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (y ∘ z)) ∘ z
def Equation2715 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (y ∘ z)) ∘ w
def Equation2719 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (z ∘ x)) ∘ w
def Equation2723 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (z ∘ y)) ∘ w
def Equation2727 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (z ∘ z)) ∘ w
def Equation2728 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (z ∘ w)) ∘ x
def Equation2729 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (z ∘ w)) ∘ y
def Equation2730 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (z ∘ w)) ∘ z
def Equation2731 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (z ∘ w)) ∘ w
def Equation2735 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (x ∘ x)) ∘ z
def Equation2738 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (x ∘ y)) ∘ z
def Equation2739 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (x ∘ z)) ∘ x
def Equation2740 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (x ∘ z)) ∘ y
def Equation2741 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (x ∘ z)) ∘ z
def Equation2742 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (x ∘ z)) ∘ w
def Equation2745 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (y ∘ x)) ∘ z
def Equation2748 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (y ∘ y)) ∘ z
def Equation2749 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (y ∘ z)) ∘ x
def Equation2750 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (y ∘ z)) ∘ y
def Equation2751 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (y ∘ z)) ∘ z
def Equation2752 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (y ∘ z)) ∘ w
def Equation2753 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ x)) ∘ x
def Equation2754 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ x)) ∘ y
def Equation2755 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ x)) ∘ z
def Equation2756 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ x)) ∘ w
def Equation2757 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ y)) ∘ x
def Equation2758 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ y)) ∘ y
def Equation2759 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ y)) ∘ z
def Equation2760 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ y)) ∘ w
def Equation2761 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ z)) ∘ x
def Equation2762 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ z)) ∘ y
def Equation2763 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ z)) ∘ z
def Equation2764 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ z)) ∘ w
def Equation2765 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ x
def Equation2766 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ y
def Equation2767 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ z
def Equation2768 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ w
def Equation2773 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (x ∘ x)) ∘ w
def Equation2777 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (x ∘ y)) ∘ w
def Equation2781 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (x ∘ z)) ∘ w
def Equation2782 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (x ∘ w)) ∘ x
def Equation2783 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (x ∘ w)) ∘ y
def Equation2784 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (x ∘ w)) ∘ z
def Equation2785 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (x ∘ w)) ∘ w
def Equation2790 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (y ∘ x)) ∘ w
def Equation2794 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (y ∘ y)) ∘ w
def Equation2798 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (y ∘ z)) ∘ w
def Equation2799 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (y ∘ w)) ∘ x
def Equation2800 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (y ∘ w)) ∘ y
def Equation2801 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (y ∘ w)) ∘ z
def Equation2802 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (y ∘ w)) ∘ w
def Equation2807 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (z ∘ x)) ∘ w
def Equation2811 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (z ∘ y)) ∘ w
def Equation2815 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (z ∘ z)) ∘ w
def Equation2816 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (z ∘ w)) ∘ x
def Equation2817 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (z ∘ w)) ∘ y
def Equation2818 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (z ∘ w)) ∘ z
def Equation2819 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (z ∘ w)) ∘ w
def Equation2821 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ x)) ∘ x
def Equation2822 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ x)) ∘ y
def Equation2823 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ x)) ∘ z
def Equation2824 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ x)) ∘ w
def Equation2826 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ y)) ∘ x
def Equation2827 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ y)) ∘ y
def Equation2828 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ y)) ∘ z
def Equation2829 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ y)) ∘ w
def Equation2831 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ z)) ∘ x
def Equation2832 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ z)) ∘ y
def Equation2833 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ z)) ∘ z
def Equation2834 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ z)) ∘ w
def Equation2836 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ w)) ∘ x
def Equation2837 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ w)) ∘ y
def Equation2838 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ w)) ∘ z
def Equation2839 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ w)) ∘ w
def Equation2857 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ (x ∘ y)) ∘ y) ∘ z
def Equation2861 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (x ∘ y)) ∘ z) ∘ w
def Equation2867 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ (y ∘ x)) ∘ y) ∘ z
def Equation2871 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ x)) ∘ z) ∘ w
def Equation2874 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ (y ∘ y)) ∘ x) ∘ z
def Equation2877 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ (y ∘ y)) ∘ y) ∘ z
def Equation2878 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ (y ∘ y)) ∘ z) ∘ x
def Equation2879 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ (y ∘ y)) ∘ z) ∘ y
def Equation2880 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ (y ∘ y)) ∘ z) ∘ z
def Equation2881 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ y)) ∘ z) ∘ w
def Equation2885 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ z)) ∘ x) ∘ w
def Equation2889 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ z)) ∘ y) ∘ w
def Equation2893 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ z)) ∘ z) ∘ w
def Equation2894 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ z)) ∘ w) ∘ x
def Equation2895 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ z)) ∘ w) ∘ y
def Equation2896 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ z)) ∘ w) ∘ z
def Equation2897 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ z)) ∘ w) ∘ w
def Equation2904 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ x)) ∘ y) ∘ z
def Equation2908 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ x)) ∘ z) ∘ w
def Equation2911 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ y)) ∘ x) ∘ z
def Equation2914 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ y)) ∘ y) ∘ z
def Equation2915 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ y)) ∘ z) ∘ x
def Equation2916 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ y)) ∘ z) ∘ y
def Equation2917 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ y)) ∘ z) ∘ z
def Equation2918 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ y)) ∘ z) ∘ w
def Equation2922 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ z)) ∘ x) ∘ w
def Equation2926 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ z)) ∘ y) ∘ w
def Equation2930 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ z)) ∘ z) ∘ w
def Equation2931 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ z)) ∘ w) ∘ x
def Equation2932 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ z)) ∘ w) ∘ y
def Equation2933 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ z)) ∘ w) ∘ z
def Equation2934 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ z)) ∘ w) ∘ w
def Equation2938 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ x)) ∘ x) ∘ z
def Equation2941 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ x)) ∘ y) ∘ z
def Equation2942 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ x)) ∘ z) ∘ x
def Equation2943 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ x)) ∘ z) ∘ y
def Equation2944 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ x)) ∘ z) ∘ z
def Equation2945 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ x)) ∘ z) ∘ w
def Equation2948 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ y)) ∘ x) ∘ z
def Equation2951 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ y)) ∘ y) ∘ z
def Equation2952 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ y)) ∘ z) ∘ x
def Equation2953 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ y)) ∘ z) ∘ y
def Equation2954 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ y)) ∘ z) ∘ z
def Equation2955 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ y)) ∘ z) ∘ w
def Equation2956 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ x) ∘ x
def Equation2957 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ x) ∘ y
def Equation2958 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ x) ∘ z
def Equation2959 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ x) ∘ w
def Equation2960 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ y) ∘ x
def Equation2961 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ y) ∘ y
def Equation2962 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ y) ∘ z
def Equation2963 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ y) ∘ w
def Equation2964 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ z) ∘ x
def Equation2965 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ z) ∘ y
def Equation2966 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ z) ∘ z
def Equation2967 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ z) ∘ w
def Equation2968 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ x
def Equation2969 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ y
def Equation2970 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ z
def Equation2971 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ w
def Equation2976 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ x)) ∘ x) ∘ w
def Equation2980 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ x)) ∘ y) ∘ w
def Equation2984 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ x)) ∘ z) ∘ w
def Equation2985 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ x)) ∘ w) ∘ x
def Equation2986 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ x)) ∘ w) ∘ y
def Equation2987 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ x)) ∘ w) ∘ z
def Equation2988 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ x)) ∘ w) ∘ w
def Equation2993 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ y)) ∘ x) ∘ w
def Equation2997 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ y)) ∘ y) ∘ w
def Equation3001 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ y)) ∘ z) ∘ w
def Equation3002 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ y)) ∘ w) ∘ x
def Equation3003 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ y)) ∘ w) ∘ y
def Equation3004 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ y)) ∘ w) ∘ z
def Equation3005 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ y)) ∘ w) ∘ w
def Equation3010 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ z)) ∘ x) ∘ w
def Equation3014 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ z)) ∘ y) ∘ w
def Equation3018 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ z)) ∘ z) ∘ w
def Equation3019 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ z)) ∘ w) ∘ x
def Equation3020 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ z)) ∘ w) ∘ y
def Equation3021 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ z)) ∘ w) ∘ z
def Equation3022 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ z)) ∘ w) ∘ w
def Equation3024 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ x) ∘ x
def Equation3025 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ x) ∘ y
def Equation3026 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ x) ∘ z
def Equation3027 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ x) ∘ w
def Equation3029 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ y) ∘ x
def Equation3030 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ y) ∘ y
def Equation3031 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ y) ∘ z
def Equation3032 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ y) ∘ w
def Equation3034 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ z) ∘ x
def Equation3035 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ z) ∘ y
def Equation3036 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ z) ∘ z
def Equation3037 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ z) ∘ w
def Equation3039 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ w) ∘ x
def Equation3040 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ w) ∘ y
def Equation3041 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ w) ∘ z
def Equation3042 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ w) ∘ w
def Equation3060 (G: Type*) [Magma G] := ∀ x y z : G, x = (((x ∘ x) ∘ y) ∘ y) ∘ z
def Equation3064 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ x) ∘ y) ∘ z) ∘ w
def Equation3070 (G: Type*) [Magma G] := ∀ x y z : G, x = (((x ∘ y) ∘ x) ∘ y) ∘ z
def Equation3074 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ x) ∘ z) ∘ w
def Equation3077 (G: Type*) [Magma G] := ∀ x y z : G, x = (((x ∘ y) ∘ y) ∘ x) ∘ z
def Equation3080 (G: Type*) [Magma G] := ∀ x y z : G, x = (((x ∘ y) ∘ y) ∘ y) ∘ z
def Equation3081 (G: Type*) [Magma G] := ∀ x y z : G, x = (((x ∘ y) ∘ y) ∘ z) ∘ x
def Equation3082 (G: Type*) [Magma G] := ∀ x y z : G, x = (((x ∘ y) ∘ y) ∘ z) ∘ y
def Equation3083 (G: Type*) [Magma G] := ∀ x y z : G, x = (((x ∘ y) ∘ y) ∘ z) ∘ z
def Equation3084 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ y) ∘ z) ∘ w
def Equation3088 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ z) ∘ x) ∘ w
def Equation3092 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ z) ∘ y) ∘ w
def Equation3096 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ z) ∘ z) ∘ w
def Equation3097 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ z) ∘ w) ∘ x
def Equation3098 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ z) ∘ w) ∘ y
def Equation3099 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ z) ∘ w) ∘ z
def Equation3100 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ z) ∘ w) ∘ w
def Equation3107 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ x) ∘ y) ∘ z
def Equation3111 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ x) ∘ z) ∘ w
def Equation3114 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ y) ∘ x) ∘ z
def Equation3117 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ y) ∘ y) ∘ z
def Equation3118 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ y) ∘ z) ∘ x
def Equation3119 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ y) ∘ z) ∘ y
def Equation3120 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ y) ∘ z) ∘ z
def Equation3121 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ y) ∘ z) ∘ w
def Equation3125 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ z) ∘ x) ∘ w
def Equation3129 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ z) ∘ y) ∘ w
def Equation3133 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ z) ∘ z) ∘ w
def Equation3134 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ z) ∘ w) ∘ x
def Equation3135 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ z) ∘ w) ∘ y
def Equation3136 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ z) ∘ w) ∘ z
def Equation3137 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ z) ∘ w) ∘ w
def Equation3141 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ x) ∘ x) ∘ z
def Equation3144 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ x) ∘ y) ∘ z
def Equation3145 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ x) ∘ z) ∘ x
def Equation3146 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ x) ∘ z) ∘ y
def Equation3147 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ x) ∘ z) ∘ z
def Equation3148 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ x) ∘ z) ∘ w
def Equation3151 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ y) ∘ x) ∘ z
def Equation3154 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ y) ∘ y) ∘ z
def Equation3155 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ y) ∘ z) ∘ x
def Equation3156 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ y) ∘ z) ∘ y
def Equation3157 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ y) ∘ z) ∘ z
def Equation3158 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ y) ∘ z) ∘ w
def Equation3159 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ x) ∘ x
def Equation3160 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ x) ∘ y
def Equation3161 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ x) ∘ z
def Equation3162 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ x) ∘ w
def Equation3163 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ y) ∘ x
def Equation3164 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ y) ∘ y
def Equation3165 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ y) ∘ z
def Equation3166 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ y) ∘ w
def Equation3167 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ z) ∘ x
def Equation3168 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ z) ∘ y
def Equation3169 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ z) ∘ z
def Equation3170 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ z) ∘ w
def Equation3171 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ x
def Equation3172 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ y
def Equation3173 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ z
def Equation3174 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ w
def Equation3179 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ x) ∘ x) ∘ w
def Equation3183 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ x) ∘ y) ∘ w
def Equation3187 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ x) ∘ z) ∘ w
def Equation3188 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ x) ∘ w) ∘ x
def Equation3189 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ x) ∘ w) ∘ y
def Equation3190 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ x) ∘ w) ∘ z
def Equation3191 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ x) ∘ w) ∘ w
def Equation3196 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ y) ∘ x) ∘ w
def Equation3200 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ y) ∘ y) ∘ w
def Equation3204 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ y) ∘ z) ∘ w
def Equation3205 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ y) ∘ w) ∘ x
def Equation3206 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ y) ∘ w) ∘ y
def Equation3207 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ y) ∘ w) ∘ z
def Equation3208 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ y) ∘ w) ∘ w
def Equation3213 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ z) ∘ x) ∘ w
def Equation3217 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ z) ∘ y) ∘ w
def Equation3221 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ z) ∘ z) ∘ w
def Equation3222 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ z) ∘ w) ∘ x
def Equation3223 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ z) ∘ w) ∘ y
def Equation3224 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ z) ∘ w) ∘ z
def Equation3225 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ z) ∘ w) ∘ w
def Equation3227 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ x) ∘ x
def Equation3228 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ x) ∘ y
def Equation3229 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ x) ∘ z
def Equation3230 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ x) ∘ w
def Equation3232 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ y) ∘ x
def Equation3233 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ y) ∘ y
def Equation3234 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ y) ∘ z
def Equation3235 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ y) ∘ w
def Equation3237 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ z) ∘ x
def Equation3238 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ z) ∘ y
def Equation3239 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ z) ∘ z
def Equation3240 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ z) ∘ w
def Equation3242 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ w) ∘ x
def Equation3243 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ w) ∘ y
def Equation3244 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ w) ∘ z
def Equation3245 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ w) ∘ w
def Equation3263 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = x ∘ (y ∘ (y ∘ z))
def Equation3267 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = x ∘ (y ∘ (z ∘ w))
def Equation3273 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ (x ∘ (y ∘ z))
def Equation3277 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (x ∘ (z ∘ w))
def Equation3280 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ (y ∘ (x ∘ z))
def Equation3283 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ (y ∘ (y ∘ z))
def Equation3284 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ (y ∘ (z ∘ x))
def Equation3285 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ (y ∘ (z ∘ y))
def Equation3286 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ (y ∘ (z ∘ z))
def Equation3287 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (y ∘ (z ∘ w))
def Equation3291 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (z ∘ (x ∘ w))
def Equation3295 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (z ∘ (y ∘ w))
def Equation3299 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (z ∘ (z ∘ w))
def Equation3300 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (z ∘ (w ∘ x))
def Equation3301 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (z ∘ (w ∘ y))
def Equation3302 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (z ∘ (w ∘ z))
def Equation3303 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (z ∘ (w ∘ w))
def Equation3310 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (x ∘ (y ∘ z))
def Equation3314 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (x ∘ (z ∘ w))
def Equation3317 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (y ∘ (x ∘ z))
def Equation3320 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (y ∘ (y ∘ z))
def Equation3321 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (y ∘ (z ∘ x))
def Equation3322 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (y ∘ (z ∘ y))
def Equation3323 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (y ∘ (z ∘ z))
def Equation3324 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (y ∘ (z ∘ w))
def Equation3328 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (z ∘ (x ∘ w))
def Equation3332 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (z ∘ (y ∘ w))
def Equation3336 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (z ∘ (z ∘ w))
def Equation3337 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (z ∘ (w ∘ x))
def Equation3338 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (z ∘ (w ∘ y))
def Equation3339 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (z ∘ (w ∘ z))
def Equation3340 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (z ∘ (w ∘ w))
def Equation3344 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (x ∘ (x ∘ z))
def Equation3347 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (x ∘ (y ∘ z))
def Equation3348 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (x ∘ (z ∘ x))
def Equation3349 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (x ∘ (z ∘ y))
def Equation3350 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (x ∘ (z ∘ z))
def Equation3351 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (x ∘ (z ∘ w))
def Equation3354 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (y ∘ (x ∘ z))
def Equation3357 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (y ∘ (y ∘ z))
def Equation3358 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (y ∘ (z ∘ x))
def Equation3359 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (y ∘ (z ∘ y))
def Equation3360 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (y ∘ (z ∘ z))
def Equation3361 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (y ∘ (z ∘ w))
def Equation3362 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (x ∘ x))
def Equation3363 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (x ∘ y))
def Equation3364 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (x ∘ z))
def Equation3365 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (x ∘ w))
def Equation3366 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (y ∘ x))
def Equation3367 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (y ∘ y))
def Equation3368 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (y ∘ z))
def Equation3369 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (y ∘ w))
def Equation3370 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (z ∘ x))
def Equation3371 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (z ∘ y))
def Equation3372 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (z ∘ z))
def Equation3373 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (z ∘ w))
def Equation3374 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (w ∘ x))
def Equation3375 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (w ∘ y))
def Equation3376 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (w ∘ z))
def Equation3377 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (w ∘ w))
def Equation3382 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (x ∘ (x ∘ w))
def Equation3386 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (x ∘ (y ∘ w))
def Equation3390 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (x ∘ (z ∘ w))
def Equation3391 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (x ∘ (w ∘ x))
def Equation3392 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (x ∘ (w ∘ y))
def Equation3393 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (x ∘ (w ∘ z))
def Equation3394 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (x ∘ (w ∘ w))
def Equation3399 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ (x ∘ w))
def Equation3403 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ (y ∘ w))
def Equation3407 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ (z ∘ w))
def Equation3408 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ (w ∘ x))
def Equation3409 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ (w ∘ y))
def Equation3410 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ (w ∘ z))
def Equation3411 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ (w ∘ w))
def Equation3416 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (z ∘ (x ∘ w))
def Equation3420 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (z ∘ (y ∘ w))
def Equation3424 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (z ∘ (z ∘ w))
def Equation3425 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (z ∘ (w ∘ x))
def Equation3426 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (z ∘ (w ∘ y))
def Equation3427 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (z ∘ (w ∘ z))
def Equation3428 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (z ∘ (w ∘ w))
def Equation3430 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (x ∘ x))
def Equation3431 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (x ∘ y))
def Equation3432 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (x ∘ z))
def Equation3433 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (x ∘ w))
def Equation3435 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (y ∘ x))
def Equation3436 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (y ∘ y))
def Equation3437 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (y ∘ z))
def Equation3438 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (y ∘ w))
def Equation3440 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (z ∘ x))
def Equation3441 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (z ∘ y))
def Equation3442 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (z ∘ z))
def Equation3443 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (z ∘ w))
def Equation3445 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (w ∘ x))
def Equation3446 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (w ∘ y))
def Equation3447 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (w ∘ z))
def Equation3448 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (w ∘ w))
def Equation3466 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = x ∘ ((y ∘ y) ∘ z)
def Equation3470 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = x ∘ ((y ∘ z) ∘ w)
def Equation3476 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ ((x ∘ y) ∘ z)
def Equation3480 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((x ∘ z) ∘ w)
def Equation3483 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ ((y ∘ x) ∘ z)
def Equation3486 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ ((y ∘ y) ∘ z)
def Equation3487 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ ((y ∘ z) ∘ x)
def Equation3488 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ ((y ∘ z) ∘ y)
def Equation3489 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ ((y ∘ z) ∘ z)
def Equation3490 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((y ∘ z) ∘ w)
def Equation3494 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((z ∘ x) ∘ w)
def Equation3498 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((z ∘ y) ∘ w)
def Equation3502 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((z ∘ z) ∘ w)
def Equation3503 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((z ∘ w) ∘ x)
def Equation3504 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((z ∘ w) ∘ y)
def Equation3505 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((z ∘ w) ∘ z)
def Equation3506 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((z ∘ w) ∘ w)
def Equation3513 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((x ∘ y) ∘ z)
def Equation3517 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((x ∘ z) ∘ w)
def Equation3520 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((y ∘ x) ∘ z)
def Equation3523 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((y ∘ y) ∘ z)
def Equation3524 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((y ∘ z) ∘ x)
def Equation3525 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((y ∘ z) ∘ y)
def Equation3526 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((y ∘ z) ∘ z)
def Equation3527 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((y ∘ z) ∘ w)
def Equation3531 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((z ∘ x) ∘ w)
def Equation3535 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((z ∘ y) ∘ w)
def Equation3539 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((z ∘ z) ∘ w)
def Equation3540 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((z ∘ w) ∘ x)
def Equation3541 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((z ∘ w) ∘ y)
def Equation3542 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((z ∘ w) ∘ z)
def Equation3543 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((z ∘ w) ∘ w)
def Equation3547 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((x ∘ x) ∘ z)
def Equation3550 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((x ∘ y) ∘ z)
def Equation3551 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((x ∘ z) ∘ x)
def Equation3552 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((x ∘ z) ∘ y)
def Equation3553 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((x ∘ z) ∘ z)
def Equation3554 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((x ∘ z) ∘ w)
def Equation3557 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((y ∘ x) ∘ z)
def Equation3560 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((y ∘ y) ∘ z)
def Equation3561 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((y ∘ z) ∘ x)
def Equation3562 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((y ∘ z) ∘ y)
def Equation3563 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((y ∘ z) ∘ z)
def Equation3564 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((y ∘ z) ∘ w)
def Equation3565 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ x) ∘ x)
def Equation3566 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ x) ∘ y)
def Equation3567 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ x) ∘ z)
def Equation3568 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ x) ∘ w)
def Equation3569 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ y) ∘ x)
def Equation3570 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ y) ∘ y)
def Equation3571 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ y) ∘ z)
def Equation3572 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ y) ∘ w)
def Equation3573 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ z) ∘ x)
def Equation3574 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ z) ∘ y)
def Equation3575 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ z) ∘ z)
def Equation3576 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ z) ∘ w)
def Equation3577 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ w) ∘ x)
def Equation3578 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ w) ∘ y)
def Equation3579 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ w) ∘ z)
def Equation3580 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ w) ∘ w)
def Equation3585 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((x ∘ x) ∘ w)
def Equation3589 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((x ∘ y) ∘ w)
def Equation3593 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((x ∘ z) ∘ w)
def Equation3594 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((x ∘ w) ∘ x)
def Equation3595 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((x ∘ w) ∘ y)
def Equation3596 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((x ∘ w) ∘ z)
def Equation3597 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((x ∘ w) ∘ w)
def Equation3602 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((y ∘ x) ∘ w)
def Equation3606 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((y ∘ y) ∘ w)
def Equation3610 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((y ∘ z) ∘ w)
def Equation3611 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((y ∘ w) ∘ x)
def Equation3612 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((y ∘ w) ∘ y)
def Equation3613 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((y ∘ w) ∘ z)
def Equation3614 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((y ∘ w) ∘ w)
def Equation3619 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((z ∘ x) ∘ w)
def Equation3623 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((z ∘ y) ∘ w)
def Equation3627 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((z ∘ z) ∘ w)
def Equation3628 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((z ∘ w) ∘ x)
def Equation3629 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((z ∘ w) ∘ y)
def Equation3630 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((z ∘ w) ∘ z)
def Equation3631 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((z ∘ w) ∘ w)
def Equation3633 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ x) ∘ x)
def Equation3634 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ x) ∘ y)
def Equation3635 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ x) ∘ z)
def Equation3636 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ x) ∘ w)
def Equation3638 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ y) ∘ x)
def Equation3639 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ y) ∘ y)
def Equation3640 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ y) ∘ z)
def Equation3641 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ y) ∘ w)
def Equation3643 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ z) ∘ x)
def Equation3644 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ z) ∘ y)
def Equation3645 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ z) ∘ z)
def Equation3646 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ z) ∘ w)
def Equation3648 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ w) ∘ x)
def Equation3649 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ w) ∘ y)
def Equation3650 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ w) ∘ z)
def Equation3651 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ w) ∘ w)
def Equation3669 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (x ∘ y) ∘ (y ∘ z)
def Equation3673 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (x ∘ y) ∘ (z ∘ w)
def Equation3679 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ x) ∘ (y ∘ z)
def Equation3683 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ x) ∘ (z ∘ w)
def Equation3686 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ y) ∘ (x ∘ z)
def Equation3689 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ y) ∘ (y ∘ z)
def Equation3690 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ y) ∘ (z ∘ x)
def Equation3691 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ y) ∘ (z ∘ y)
def Equation3692 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ y) ∘ (z ∘ z)
def Equation3693 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ y) ∘ (z ∘ w)
def Equation3697 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ z) ∘ (x ∘ w)
def Equation3701 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ z) ∘ (y ∘ w)
def Equation3705 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ z) ∘ (z ∘ w)
def Equation3706 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ z) ∘ (w ∘ x)
def Equation3707 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ z) ∘ (w ∘ y)
def Equation3708 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ z) ∘ (w ∘ z)
def Equation3709 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ z) ∘ (w ∘ w)
def Equation3716 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ x) ∘ (y ∘ z)
def Equation3720 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ x) ∘ (z ∘ w)
def Equation3723 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ y) ∘ (x ∘ z)
def Equation3726 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ y) ∘ (y ∘ z)
def Equation3727 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ y) ∘ (z ∘ x)
def Equation3728 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ y) ∘ (z ∘ y)
def Equation3729 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ y) ∘ (z ∘ z)
def Equation3730 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ y) ∘ (z ∘ w)
def Equation3734 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ z) ∘ (x ∘ w)
def Equation3738 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ z) ∘ (y ∘ w)
def Equation3742 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ z) ∘ (z ∘ w)
def Equation3743 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ z) ∘ (w ∘ x)
def Equation3744 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ z) ∘ (w ∘ y)
def Equation3745 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ z) ∘ (w ∘ z)
def Equation3746 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ z) ∘ (w ∘ w)
def Equation3750 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ x) ∘ (x ∘ z)
def Equation3753 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ x) ∘ (y ∘ z)
def Equation3754 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ x) ∘ (z ∘ x)
def Equation3755 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ x) ∘ (z ∘ y)
def Equation3756 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ x) ∘ (z ∘ z)
def Equation3757 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ x) ∘ (z ∘ w)
def Equation3760 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ y) ∘ (x ∘ z)
def Equation3763 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ y) ∘ (y ∘ z)
def Equation3764 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ y) ∘ (z ∘ x)
def Equation3765 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ y) ∘ (z ∘ y)
def Equation3766 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ y) ∘ (z ∘ z)
def Equation3767 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ y) ∘ (z ∘ w)
def Equation3768 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (x ∘ x)
def Equation3769 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (x ∘ y)
def Equation3770 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (x ∘ z)
def Equation3771 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (x ∘ w)
def Equation3772 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (y ∘ x)
def Equation3773 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (y ∘ y)
def Equation3774 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (y ∘ z)
def Equation3775 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (y ∘ w)
def Equation3776 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (z ∘ x)
def Equation3777 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (z ∘ y)
def Equation3778 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (z ∘ z)
def Equation3779 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (z ∘ w)
def Equation3780 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (w ∘ x)
def Equation3781 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (w ∘ y)
def Equation3782 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (w ∘ z)
def Equation3783 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (w ∘ w)
def Equation3788 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ x) ∘ (x ∘ w)
def Equation3792 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ x) ∘ (y ∘ w)
def Equation3796 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ x) ∘ (z ∘ w)
def Equation3797 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ x) ∘ (w ∘ x)
def Equation3798 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ x) ∘ (w ∘ y)
def Equation3799 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ x) ∘ (w ∘ z)
def Equation3800 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ x) ∘ (w ∘ w)
def Equation3805 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ (x ∘ w)
def Equation3809 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ (y ∘ w)
def Equation3813 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ (z ∘ w)
def Equation3814 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ (w ∘ x)
def Equation3815 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ (w ∘ y)
def Equation3816 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ (w ∘ z)
def Equation3817 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ (w ∘ w)
def Equation3822 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ z) ∘ (x ∘ w)
def Equation3826 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ z) ∘ (y ∘ w)
def Equation3830 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ z) ∘ (z ∘ w)
def Equation3831 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ z) ∘ (w ∘ x)
def Equation3832 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ z) ∘ (w ∘ y)
def Equation3833 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ z) ∘ (w ∘ z)
def Equation3834 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ z) ∘ (w ∘ w)
def Equation3836 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (x ∘ x)
def Equation3837 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (x ∘ y)
def Equation3838 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (x ∘ z)
def Equation3839 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (x ∘ w)
def Equation3841 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (y ∘ x)
def Equation3842 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (y ∘ y)
def Equation3843 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (y ∘ z)
def Equation3844 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (y ∘ w)
def Equation3846 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (z ∘ x)
def Equation3847 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (z ∘ y)
def Equation3848 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (z ∘ z)
def Equation3849 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (z ∘ w)
def Equation3851 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (w ∘ x)
def Equation3852 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (w ∘ y)
def Equation3853 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (w ∘ z)
def Equation3854 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (w ∘ w)
def Equation3872 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (x ∘ (y ∘ y)) ∘ z
def Equation3876 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (x ∘ (y ∘ z)) ∘ w
def Equation3882 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ (x ∘ y)) ∘ z
def Equation3886 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (x ∘ z)) ∘ w
def Equation3889 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ (y ∘ x)) ∘ z
def Equation3892 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ (y ∘ y)) ∘ z
def Equation3893 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ (y ∘ z)) ∘ x
def Equation3894 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ (y ∘ z)) ∘ y
def Equation3895 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ (y ∘ z)) ∘ z
def Equation3896 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (y ∘ z)) ∘ w
def Equation3900 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (z ∘ x)) ∘ w
def Equation3904 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (z ∘ y)) ∘ w
def Equation3908 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (z ∘ z)) ∘ w
def Equation3909 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (z ∘ w)) ∘ x
def Equation3910 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (z ∘ w)) ∘ y
def Equation3911 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (z ∘ w)) ∘ z
def Equation3912 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (z ∘ w)) ∘ w
def Equation3919 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (x ∘ y)) ∘ z
def Equation3923 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (x ∘ z)) ∘ w
def Equation3926 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (y ∘ x)) ∘ z
def Equation3929 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (y ∘ y)) ∘ z
def Equation3930 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (y ∘ z)) ∘ x
def Equation3931 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (y ∘ z)) ∘ y
def Equation3932 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (y ∘ z)) ∘ z
def Equation3933 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (y ∘ z)) ∘ w
def Equation3937 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (z ∘ x)) ∘ w
def Equation3941 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (z ∘ y)) ∘ w
def Equation3945 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (z ∘ z)) ∘ w
def Equation3946 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (z ∘ w)) ∘ x
def Equation3947 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (z ∘ w)) ∘ y
def Equation3948 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (z ∘ w)) ∘ z
def Equation3949 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (z ∘ w)) ∘ w
def Equation3953 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (x ∘ x)) ∘ z
def Equation3956 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (x ∘ y)) ∘ z
def Equation3957 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (x ∘ z)) ∘ x
def Equation3958 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (x ∘ z)) ∘ y
def Equation3959 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (x ∘ z)) ∘ z
def Equation3960 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (x ∘ z)) ∘ w
def Equation3963 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (y ∘ x)) ∘ z
def Equation3966 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (y ∘ y)) ∘ z
def Equation3967 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (y ∘ z)) ∘ x
def Equation3968 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (y ∘ z)) ∘ y
def Equation3969 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (y ∘ z)) ∘ z
def Equation3970 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (y ∘ z)) ∘ w
def Equation3971 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ x)) ∘ x
def Equation3972 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ x)) ∘ y
def Equation3973 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ x)) ∘ z
def Equation3974 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ x)) ∘ w
def Equation3975 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ y)) ∘ x
def Equation3976 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ y)) ∘ y
def Equation3977 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ y)) ∘ z
def Equation3978 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ y)) ∘ w
def Equation3979 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ z)) ∘ x
def Equation3980 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ z)) ∘ y
def Equation3981 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ z)) ∘ z
def Equation3982 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ z)) ∘ w
def Equation3983 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ w)) ∘ x
def Equation3984 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ w)) ∘ y
def Equation3985 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ w)) ∘ z
def Equation3986 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ w)) ∘ w
def Equation3991 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (x ∘ x)) ∘ w
def Equation3995 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (x ∘ y)) ∘ w
def Equation3999 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (x ∘ z)) ∘ w
def Equation4000 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (x ∘ w)) ∘ x
def Equation4001 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (x ∘ w)) ∘ y
def Equation4002 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (x ∘ w)) ∘ z
def Equation4003 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (x ∘ w)) ∘ w
def Equation4008 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (y ∘ x)) ∘ w
def Equation4012 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (y ∘ y)) ∘ w
def Equation4016 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (y ∘ z)) ∘ w
def Equation4017 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (y ∘ w)) ∘ x
def Equation4018 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (y ∘ w)) ∘ y
def Equation4019 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (y ∘ w)) ∘ z
def Equation4020 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (y ∘ w)) ∘ w
def Equation4025 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (z ∘ x)) ∘ w
def Equation4029 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (z ∘ y)) ∘ w
def Equation4033 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (z ∘ z)) ∘ w
def Equation4034 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (z ∘ w)) ∘ x
def Equation4035 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (z ∘ w)) ∘ y
def Equation4036 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (z ∘ w)) ∘ z
def Equation4037 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (z ∘ w)) ∘ w
def Equation4039 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ x)) ∘ x
def Equation4040 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ x)) ∘ y
def Equation4041 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ x)) ∘ z
def Equation4042 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ x)) ∘ w
def Equation4044 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ y)) ∘ x
def Equation4045 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ y)) ∘ y
def Equation4046 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ y)) ∘ z
def Equation4047 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ y)) ∘ w
def Equation4049 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ z)) ∘ x
def Equation4050 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ z)) ∘ y
def Equation4051 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ z)) ∘ z
def Equation4052 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ z)) ∘ w
def Equation4054 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ w)) ∘ x
def Equation4055 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ w)) ∘ y
def Equation4056 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ w)) ∘ z
def Equation4057 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ w)) ∘ w
def Equation4075 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = ((x ∘ y) ∘ y) ∘ z
def Equation4079 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((x ∘ y) ∘ z) ∘ w
def Equation4085 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = ((y ∘ x) ∘ y) ∘ z
def Equation4089 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ x) ∘ z) ∘ w
def Equation4092 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = ((y ∘ y) ∘ x) ∘ z
def Equation4095 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = ((y ∘ y) ∘ y) ∘ z
def Equation4096 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = ((y ∘ y) ∘ z) ∘ x
def Equation4097 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = ((y ∘ y) ∘ z) ∘ y
def Equation4098 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = ((y ∘ y) ∘ z) ∘ z
def Equation4099 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ y) ∘ z) ∘ w
def Equation4103 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ z) ∘ x) ∘ w
def Equation4107 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ z) ∘ y) ∘ w
def Equation4111 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ z) ∘ z) ∘ w
def Equation4112 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ z) ∘ w) ∘ x
def Equation4113 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ z) ∘ w) ∘ y
def Equation4114 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ z) ∘ w) ∘ z
def Equation4115 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ z) ∘ w) ∘ w
def Equation4122 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ x) ∘ y) ∘ z
def Equation4126 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ x) ∘ z) ∘ w
def Equation4129 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ y) ∘ x) ∘ z
def Equation4132 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ y) ∘ y) ∘ z
def Equation4133 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ y) ∘ z) ∘ x
def Equation4134 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ y) ∘ z) ∘ y
def Equation4135 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ y) ∘ z) ∘ z
def Equation4136 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ y) ∘ z) ∘ w
def Equation4140 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ z) ∘ x) ∘ w
def Equation4144 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ z) ∘ y) ∘ w
def Equation4148 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ z) ∘ z) ∘ w
def Equation4149 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ z) ∘ w) ∘ x
def Equation4150 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ z) ∘ w) ∘ y
def Equation4151 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ z) ∘ w) ∘ z
def Equation4152 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ z) ∘ w) ∘ w
def Equation4156 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ x) ∘ x) ∘ z
def Equation4159 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ x) ∘ y) ∘ z
def Equation4160 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ x) ∘ z) ∘ x
def Equation4161 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ x) ∘ z) ∘ y
def Equation4162 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ x) ∘ z) ∘ z
def Equation4163 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ x) ∘ z) ∘ w
def Equation4166 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ y) ∘ x) ∘ z
def Equation4169 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ y) ∘ y) ∘ z
def Equation4170 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ y) ∘ z) ∘ x
def Equation4171 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ y) ∘ z) ∘ y
def Equation4172 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ y) ∘ z) ∘ z
def Equation4173 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ y) ∘ z) ∘ w
def Equation4174 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ x) ∘ x
def Equation4175 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ x) ∘ y
def Equation4176 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ x) ∘ z
def Equation4177 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ x) ∘ w
def Equation4178 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ y) ∘ x
def Equation4179 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ y) ∘ y
def Equation4180 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ y) ∘ z
def Equation4181 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ y) ∘ w
def Equation4182 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ z) ∘ x
def Equation4183 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ z) ∘ y
def Equation4184 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ z) ∘ z
def Equation4185 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ z) ∘ w
def Equation4186 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ w) ∘ x
def Equation4187 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ w) ∘ y
def Equation4188 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ w) ∘ z
def Equation4189 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ w) ∘ w
def Equation4194 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ x) ∘ x) ∘ w
def Equation4198 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ x) ∘ y) ∘ w
def Equation4202 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ x) ∘ z) ∘ w
def Equation4203 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ x) ∘ w) ∘ x
def Equation4204 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ x) ∘ w) ∘ y
def Equation4205 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ x) ∘ w) ∘ z
def Equation4206 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ x) ∘ w) ∘ w
def Equation4211 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ y) ∘ x) ∘ w
def Equation4215 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ y) ∘ y) ∘ w
def Equation4219 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ y) ∘ z) ∘ w
def Equation4220 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ y) ∘ w) ∘ x
def Equation4221 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ y) ∘ w) ∘ y
def Equation4222 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ y) ∘ w) ∘ z
def Equation4223 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ y) ∘ w) ∘ w
def Equation4228 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ z) ∘ x) ∘ w
def Equation4232 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ z) ∘ y) ∘ w
def Equation4236 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ z) ∘ z) ∘ w
def Equation4237 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ z) ∘ w) ∘ x
def Equation4238 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ z) ∘ w) ∘ y
def Equation4239 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ z) ∘ w) ∘ z
def Equation4240 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ z) ∘ w) ∘ w
def Equation4242 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ x) ∘ x
def Equation4243 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ x) ∘ y
def Equation4244 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ x) ∘ z
def Equation4245 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ x) ∘ w
def Equation4247 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ y) ∘ x
def Equation4248 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ y) ∘ y
def Equation4249 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ y) ∘ z
def Equation4250 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ y) ∘ w
def Equation4252 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ z) ∘ x
def Equation4253 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ z) ∘ y
def Equation4254 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ z) ∘ z
def Equation4255 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ z) ∘ w
def Equation4257 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ w) ∘ x
def Equation4258 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ w) ∘ y
def Equation4259 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ w) ∘ z
def Equation4260 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ w) ∘ w
def Equation4277 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ x) = y ∘ (y ∘ z)
def Equation4281 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ x) = y ∘ (z ∘ w)
def Equation4285 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = x ∘ (y ∘ z)
def Equation4289 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = x ∘ (z ∘ w)
def Equation4292 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = y ∘ (x ∘ z)
def Equation4294 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = y ∘ (y ∘ z)
def Equation4295 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = y ∘ (z ∘ x)
def Equation4296 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = y ∘ (z ∘ y)
def Equation4297 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = y ∘ (z ∘ z)
def Equation4298 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = y ∘ (z ∘ w)
def Equation4302 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = z ∘ (x ∘ w)
def Equation4306 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = z ∘ (y ∘ w)
def Equation4308 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = z ∘ (z ∘ w)
def Equation4309 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = z ∘ (w ∘ x)
def Equation4310 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = z ∘ (w ∘ y)
def Equation4311 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = z ∘ (w ∘ z)
def Equation4312 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = z ∘ (w ∘ w)
def Equation4315 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = x ∘ (y ∘ z)
def Equation4319 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = x ∘ (z ∘ w)
def Equation4322 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = y ∘ (x ∘ z)
def Equation4323 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = y ∘ (z ∘ x)
def Equation4324 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = y ∘ (z ∘ y)
def Equation4325 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = y ∘ (z ∘ z)
def Equation4329 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = z ∘ (x ∘ w)
def Equation4334 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = z ∘ (w ∘ x)
def Equation4335 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = z ∘ (w ∘ y)
def Equation4336 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = z ∘ (w ∘ z)
def Equation4337 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = z ∘ (w ∘ w)
def Equation4339 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = x ∘ (y ∘ z)
def Equation4340 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = x ∘ (z ∘ y)
def Equation4342 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = x ∘ (z ∘ w)
def Equation4344 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = y ∘ (x ∘ z)
def Equation4345 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = y ∘ (z ∘ x)
def Equation4346 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = y ∘ (z ∘ z)
def Equation4349 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = z ∘ (x ∘ w)
def Equation4351 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = z ∘ (y ∘ y)
def Equation4353 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = z ∘ (w ∘ x)
def Equation4355 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = z ∘ (w ∘ w)
def Equation4357 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = x ∘ (y ∘ w)
def Equation4359 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = x ∘ (z ∘ w)
def Equation4360 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = x ∘ (w ∘ z)
def Equation4363 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = y ∘ (x ∘ w)
def Equation4366 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = y ∘ (w ∘ x)
def Equation4371 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = z ∘ (w ∘ x)
def Equation4374 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = w ∘ (y ∘ z)
def Equation4376 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = w ∘ (z ∘ y)
def Equation4390 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ x) = (y ∘ y) ∘ z
def Equation4394 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ x) = (y ∘ z) ∘ w
def Equation4400 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = (x ∘ y) ∘ z
def Equation4404 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (x ∘ z) ∘ w
def Equation4407 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = (y ∘ x) ∘ z
def Equation4410 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = (y ∘ y) ∘ z
def Equation4411 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = (y ∘ z) ∘ x
def Equation4412 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = (y ∘ z) ∘ y
def Equation4413 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = (y ∘ z) ∘ z
def Equation4414 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (y ∘ z) ∘ w
def Equation4418 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (z ∘ x) ∘ w
def Equation4422 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (z ∘ y) ∘ w
def Equation4426 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (z ∘ z) ∘ w
def Equation4427 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (z ∘ w) ∘ x
def Equation4428 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (z ∘ w) ∘ y
def Equation4429 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (z ∘ w) ∘ z
def Equation4430 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (z ∘ w) ∘ w
def Equation4437 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (x ∘ y) ∘ z
def Equation4441 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (x ∘ z) ∘ w
def Equation4444 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (y ∘ x) ∘ z
def Equation4447 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (y ∘ y) ∘ z
def Equation4448 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (y ∘ z) ∘ x
def Equation4449 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (y ∘ z) ∘ y
def Equation4450 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (y ∘ z) ∘ z
def Equation4451 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (y ∘ z) ∘ w
def Equation4455 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (z ∘ x) ∘ w
def Equation4459 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (z ∘ y) ∘ w
def Equation4463 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (z ∘ z) ∘ w
def Equation4464 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (z ∘ w) ∘ x
def Equation4465 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (z ∘ w) ∘ y
def Equation4466 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (z ∘ w) ∘ z
def Equation4467 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (z ∘ w) ∘ w
def Equation4471 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (x ∘ x) ∘ z
def Equation4474 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (x ∘ y) ∘ z
def Equation4475 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (x ∘ z) ∘ x
def Equation4476 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (x ∘ z) ∘ y
def Equation4477 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (x ∘ z) ∘ z
def Equation4478 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (x ∘ z) ∘ w
def Equation4481 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (y ∘ x) ∘ z
def Equation4484 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (y ∘ y) ∘ z
def Equation4485 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (y ∘ z) ∘ x
def Equation4486 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (y ∘ z) ∘ y
def Equation4487 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (y ∘ z) ∘ z
def Equation4488 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (y ∘ z) ∘ w
def Equation4489 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ x) ∘ x
def Equation4490 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ x) ∘ y
def Equation4491 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ x) ∘ z
def Equation4492 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ x) ∘ w
def Equation4493 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ y) ∘ x
def Equation4494 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ y) ∘ y
def Equation4495 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ y) ∘ z
def Equation4496 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ y) ∘ w
def Equation4497 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ z) ∘ x
def Equation4498 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ z) ∘ y
def Equation4499 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ z) ∘ z
def Equation4500 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ z) ∘ w
def Equation4501 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ w) ∘ x
def Equation4502 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ w) ∘ y
def Equation4503 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ w) ∘ z
def Equation4504 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ w) ∘ w
def Equation4509 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (x ∘ x) ∘ w
def Equation4513 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (x ∘ y) ∘ w
def Equation4517 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (x ∘ z) ∘ w
def Equation4518 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (x ∘ w) ∘ x
def Equation4519 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (x ∘ w) ∘ y
def Equation4520 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (x ∘ w) ∘ z
def Equation4521 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (x ∘ w) ∘ w
def Equation4526 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (y ∘ x) ∘ w
def Equation4530 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (y ∘ y) ∘ w
def Equation4534 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (y ∘ z) ∘ w
def Equation4535 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (y ∘ w) ∘ x
def Equation4536 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (y ∘ w) ∘ y
def Equation4537 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (y ∘ w) ∘ z
def Equation4538 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (y ∘ w) ∘ w
def Equation4543 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (z ∘ x) ∘ w
def Equation4547 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (z ∘ y) ∘ w
def Equation4551 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (z ∘ z) ∘ w
def Equation4552 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (z ∘ w) ∘ x
def Equation4553 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (z ∘ w) ∘ y
def Equation4554 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (z ∘ w) ∘ z
def Equation4555 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (z ∘ w) ∘ w
def Equation4557 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ x) ∘ x
def Equation4558 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ x) ∘ y
def Equation4559 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ x) ∘ z
def Equation4560 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ x) ∘ w
def Equation4562 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ y) ∘ x
def Equation4563 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ y) ∘ y
def Equation4564 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ y) ∘ z
def Equation4565 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ y) ∘ w
def Equation4567 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ z) ∘ x
def Equation4568 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ z) ∘ y
def Equation4569 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ z) ∘ z
def Equation4570 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ z) ∘ w
def Equation4572 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ w) ∘ x
def Equation4573 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ w) ∘ y
def Equation4574 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ w) ∘ z
def Equation4575 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ w) ∘ w
def Equation4592 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ x) ∘ x = (y ∘ y) ∘ z
def Equation4596 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ x = (y ∘ z) ∘ w
def Equation4600 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ x) ∘ y = (x ∘ y) ∘ z
def Equation4604 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (x ∘ z) ∘ w
def Equation4607 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ x) ∘ y = (y ∘ x) ∘ z
def Equation4609 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ x) ∘ y = (y ∘ y) ∘ z
def Equation4610 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ x) ∘ y = (y ∘ z) ∘ x
def Equation4611 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ x) ∘ y = (y ∘ z) ∘ y
def Equation4612 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ x) ∘ y = (y ∘ z) ∘ z
def Equation4613 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (y ∘ z) ∘ w
def Equation4617 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (z ∘ x) ∘ w
def Equation4621 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (z ∘ y) ∘ w
def Equation4623 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (z ∘ z) ∘ w
def Equation4624 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (z ∘ w) ∘ x
def Equation4625 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (z ∘ w) ∘ y
def Equation4626 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (z ∘ w) ∘ z
def Equation4627 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (z ∘ w) ∘ w
def Equation4630 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (x ∘ y) ∘ z
def Equation4634 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ x = (x ∘ z) ∘ w
def Equation4637 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (y ∘ x) ∘ z
def Equation4638 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (y ∘ z) ∘ x
def Equation4639 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (y ∘ z) ∘ y
def Equation4640 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (y ∘ z) ∘ z
def Equation4644 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ x = (z ∘ x) ∘ w
def Equation4649 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ x = (z ∘ w) ∘ x
def Equation4650 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ x = (z ∘ w) ∘ y
def Equation4651 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ x = (z ∘ w) ∘ z
def Equation4652 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ x = (z ∘ w) ∘ w
def Equation4654 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ y = (x ∘ y) ∘ z
def Equation4655 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ y = (x ∘ z) ∘ y
def Equation4657 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ y = (x ∘ z) ∘ w
def Equation4659 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ y = (y ∘ x) ∘ z
def Equation4660 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ y = (y ∘ z) ∘ x
def Equation4661 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ y = (y ∘ z) ∘ z
def Equation4664 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ y = (z ∘ x) ∘ w
def Equation4666 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ y = (z ∘ y) ∘ y
def Equation4668 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ y = (z ∘ w) ∘ x
def Equation4670 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ y = (z ∘ w) ∘ w
def Equation4672 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (x ∘ y) ∘ w
def Equation4674 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (x ∘ z) ∘ w
def Equation4675 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (x ∘ w) ∘ z
def Equation4678 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (y ∘ x) ∘ w
def Equation4681 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (y ∘ w) ∘ x
def Equation4686 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (z ∘ w) ∘ x
def Equation4689 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (w ∘ y) ∘ z
def Equation4691 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (w ∘ z) ∘ y
theorem Equation22_implies_Equation18 (G : Type*) [Magma G] (h : Equation22 G) : Equation18 G := λ x y z => h x y y z
theorem Equation37_implies_Equation33 (G : Type*) [Magma G] (h : Equation37 G) : Equation33 G := λ x y z => h x y y z
theorem Equation46_implies_Equation44 (G : Type*) [Magma G] (h : Equation46 G) : Equation44 G := λ x y z => h x y y z
theorem Equation61_implies_Equation57 (G : Type*) [Magma G] (h : Equation61 G) : Equation57 G := λ x y z => h x y y z
theorem Equation71_implies_Equation67 (G : Type*) [Magma G] (h : Equation71 G) : Equation67 G := λ x y z => h x y y z
theorem Equation81_implies_Equation77 (G : Type*) [Magma G] (h : Equation81 G) : Equation77 G := λ x y z => h x y y z
theorem Equation85_implies_Equation74 (G : Type*) [Magma G] (h : Equation85 G) : Equation74 G := λ x y z => h x y y z
theorem Equation89_implies_Equation77 (G : Type*) [Magma G] (h : Equation89 G) : Equation77 G := λ x y z => h x y y z
theorem Equation93_implies_Equation77 (G : Type*) [Magma G] (h : Equation93 G) : Equation77 G := λ x y z => h x y y z
theorem Equation94_implies_Equation78 (G : Type*) [Magma G] (h : Equation94 G) : Equation78 G := λ x y z => h x y y z
theorem Equation95_implies_Equation79 (G : Type*) [Magma G] (h : Equation95 G) : Equation79 G := λ x y z => h x y y z
theorem Equation96_implies_Equation79 (G : Type*) [Magma G] (h : Equation96 G) : Equation79 G := λ x y z => h x y y z
theorem Equation97_implies_Equation80 (G : Type*) [Magma G] (h : Equation97 G) : Equation80 G := λ x y z => h x y y z
theorem Equation113_implies_Equation109 (G : Type*) [Magma G] (h : Equation113 G) : Equation109 G := λ x y z => h x y y z
theorem Equation123_implies_Equation119 (G : Type*) [Magma G] (h : Equation123 G) : Equation119 G := λ x y z => h x y y z
theorem Equation133_implies_Equation129 (G : Type*) [Magma G] (h : Equation133 G) : Equation129 G := λ x y z => h x y y z
theorem Equation137_implies_Equation126 (G : Type*) [Magma G] (h : Equation137 G) : Equation126 G := λ x y z => h x y y z
theorem Equation141_implies_Equation129 (G : Type*) [Magma G] (h : Equation141 G) : Equation129 G := λ x y z => h x y y z
theorem Equation145_implies_Equation129 (G : Type*) [Magma G] (h : Equation145 G) : Equation129 G := λ x y z => h x y y z
theorem Equation146_implies_Equation130 (G : Type*) [Magma G] (h : Equation146 G) : Equation130 G := λ x y z => h x y y z
theorem Equation147_implies_Equation131 (G : Type*) [Magma G] (h : Equation147 G) : Equation131 G := λ x y z => h x y y z
theorem Equation148_implies_Equation131 (G : Type*) [Magma G] (h : Equation148 G) : Equation131 G := λ x y z => h x y y z
theorem Equation149_implies_Equation132 (G : Type*) [Magma G] (h : Equation149 G) : Equation132 G := λ x y z => h x y y z
theorem Equation165_implies_Equation161 (G : Type*) [Magma G] (h : Equation165 G) : Equation161 G := λ x y z => h x y y z
theorem Equation175_implies_Equation171 (G : Type*) [Magma G] (h : Equation175 G) : Equation171 G := λ x y z => h x y y z
theorem Equation185_implies_Equation181 (G : Type*) [Magma G] (h : Equation185 G) : Equation181 G := λ x y z => h x y y z
theorem Equation189_implies_Equation178 (G : Type*) [Magma G] (h : Equation189 G) : Equation178 G := λ x y z => h x y y z
theorem Equation193_implies_Equation181 (G : Type*) [Magma G] (h : Equation193 G) : Equation181 G := λ x y z => h x y y z
theorem Equation197_implies_Equation181 (G : Type*) [Magma G] (h : Equation197 G) : Equation181 G := λ x y z => h x y y z
theorem Equation198_implies_Equation182 (G : Type*) [Magma G] (h : Equation198 G) : Equation182 G := λ x y z => h x y y z
theorem Equation199_implies_Equation183 (G : Type*) [Magma G] (h : Equation199 G) : Equation183 G := λ x y z => h x y y z
theorem Equation200_implies_Equation183 (G : Type*) [Magma G] (h : Equation200 G) : Equation183 G := λ x y z => h x y y z
theorem Equation201_implies_Equation184 (G : Type*) [Magma G] (h : Equation201 G) : Equation184 G := λ x y z => h x y y z
theorem Equation217_implies_Equation213 (G : Type*) [Magma G] (h : Equation217 G) : Equation213 G := λ x y z => h x y y z
theorem Equation227_implies_Equation223 (G : Type*) [Magma G] (h : Equation227 G) : Equation223 G := λ x y z => h x y y z
theorem Equation237_implies_Equation233 (G : Type*) [Magma G] (h : Equation237 G) : Equation233 G := λ x y z => h x y y z
theorem Equation241_implies_Equation230 (G : Type*) [Magma G] (h : Equation241 G) : Equation230 G := λ x y z => h x y y z
theorem Equation245_implies_Equation233 (G : Type*) [Magma G] (h : Equation245 G) : Equation233 G := λ x y z => h x y y z
theorem Equation249_implies_Equation233 (G : Type*) [Magma G] (h : Equation249 G) : Equation233 G := λ x y z => h x y y z
theorem Equation250_implies_Equation234 (G : Type*) [Magma G] (h : Equation250 G) : Equation234 G := λ x y z => h x y y z
theorem Equation251_implies_Equation235 (G : Type*) [Magma G] (h : Equation251 G) : Equation235 G := λ x y z => h x y y z
theorem Equation252_implies_Equation235 (G : Type*) [Magma G] (h : Equation252 G) : Equation235 G := λ x y z => h x y y z
theorem Equation253_implies_Equation236 (G : Type*) [Magma G] (h : Equation253 G) : Equation236 G := λ x y z => h x y y z
theorem Equation269_implies_Equation265 (G : Type*) [Magma G] (h : Equation269 G) : Equation265 G := λ x y z => h x y y z
theorem Equation279_implies_Equation275 (G : Type*) [Magma G] (h : Equation279 G) : Equation275 G := λ x y z => h x y y z
theorem Equation289_implies_Equation285 (G : Type*) [Magma G] (h : Equation289 G) : Equation285 G := λ x y z => h x y y z
theorem Equation293_implies_Equation282 (G : Type*) [Magma G] (h : Equation293 G) : Equation282 G := λ x y z => h x y y z
theorem Equation297_implies_Equation285 (G : Type*) [Magma G] (h : Equation297 G) : Equation285 G := λ x y z => h x y y z
theorem Equation301_implies_Equation285 (G : Type*) [Magma G] (h : Equation301 G) : Equation285 G := λ x y z => h x y y z
theorem Equation302_implies_Equation286 (G : Type*) [Magma G] (h : Equation302 G) : Equation286 G := λ x y z => h x y y z
theorem Equation303_implies_Equation287 (G : Type*) [Magma G] (h : Equation303 G) : Equation287 G := λ x y z => h x y y z
theorem Equation304_implies_Equation287 (G : Type*) [Magma G] (h : Equation304 G) : Equation287 G := λ x y z => h x y y z
theorem Equation305_implies_Equation288 (G : Type*) [Magma G] (h : Equation305 G) : Equation288 G := λ x y z => h x y y z
theorem Equation321_implies_Equation317 (G : Type*) [Magma G] (h : Equation321 G) : Equation317 G := λ x y z => h x y y z
theorem Equation331_implies_Equation327 (G : Type*) [Magma G] (h : Equation331 G) : Equation327 G := λ x y z => h x y y z
theorem Equation341_implies_Equation337 (G : Type*) [Magma G] (h : Equation341 G) : Equation337 G := λ x y z => h x y y z
theorem Equation345_implies_Equation334 (G : Type*) [Magma G] (h : Equation345 G) : Equation334 G := λ x y z => h x y y z
theorem Equation349_implies_Equation337 (G : Type*) [Magma G] (h : Equation349 G) : Equation337 G := λ x y z => h x y y z
theorem Equation353_implies_Equation337 (G : Type*) [Magma G] (h : Equation353 G) : Equation337 G := λ x y z => h x y y z
theorem Equation354_implies_Equation338 (G : Type*) [Magma G] (h : Equation354 G) : Equation338 G := λ x y z => h x y y z
theorem Equation355_implies_Equation339 (G : Type*) [Magma G] (h : Equation355 G) : Equation339 G := λ x y z => h x y y z
theorem Equation356_implies_Equation339 (G : Type*) [Magma G] (h : Equation356 G) : Equation339 G := λ x y z => h x y y z
theorem Equation357_implies_Equation340 (G : Type*) [Magma G] (h : Equation357 G) : Equation340 G := λ x y z => h x y y z
theorem Equation373_implies_Equation369 (G : Type*) [Magma G] (h : Equation373 G) : Equation369 G := λ x y z => h x y y z
theorem Equation383_implies_Equation379 (G : Type*) [Magma G] (h : Equation383 G) : Equation379 G := λ x y z => h x y y z
theorem Equation393_implies_Equation389 (G : Type*) [Magma G] (h : Equation393 G) : Equation389 G := λ x y z => h x y y z
theorem Equation397_implies_Equation386 (G : Type*) [Magma G] (h : Equation397 G) : Equation386 G := λ x y z => h x y y z
theorem Equation401_implies_Equation389 (G : Type*) [Magma G] (h : Equation401 G) : Equation389 G := λ x y z => h x y y z
theorem Equation405_implies_Equation389 (G : Type*) [Magma G] (h : Equation405 G) : Equation389 G := λ x y z => h x y y z
theorem Equation406_implies_Equation390 (G : Type*) [Magma G] (h : Equation406 G) : Equation390 G := λ x y z => h x y y z
theorem Equation407_implies_Equation391 (G : Type*) [Magma G] (h : Equation407 G) : Equation391 G := λ x y z => h x y y z
theorem Equation408_implies_Equation391 (G : Type*) [Magma G] (h : Equation408 G) : Equation391 G := λ x y z => h x y y z
theorem Equation409_implies_Equation392 (G : Type*) [Magma G] (h : Equation409 G) : Equation392 G := λ x y z => h x y y z
theorem Equation425_implies_Equation421 (G : Type*) [Magma G] (h : Equation425 G) : Equation421 G := λ x y z => h x y y z
theorem Equation435_implies_Equation431 (G : Type*) [Magma G] (h : Equation435 G) : Equation431 G := λ x y z => h x y y z
theorem Equation445_implies_Equation441 (G : Type*) [Magma G] (h : Equation445 G) : Equation441 G := λ x y z => h x y y z
theorem Equation449_implies_Equation438 (G : Type*) [Magma G] (h : Equation449 G) : Equation438 G := λ x y z => h x y y z
theorem Equation453_implies_Equation441 (G : Type*) [Magma G] (h : Equation453 G) : Equation441 G := λ x y z => h x y y z
theorem Equation457_implies_Equation441 (G : Type*) [Magma G] (h : Equation457 G) : Equation441 G := λ x y z => h x y y z
theorem Equation458_implies_Equation442 (G : Type*) [Magma G] (h : Equation458 G) : Equation442 G := λ x y z => h x y y z
theorem Equation459_implies_Equation443 (G : Type*) [Magma G] (h : Equation459 G) : Equation443 G := λ x y z => h x y y z
theorem Equation460_implies_Equation443 (G : Type*) [Magma G] (h : Equation460 G) : Equation443 G := λ x y z => h x y y z
theorem Equation461_implies_Equation444 (G : Type*) [Magma G] (h : Equation461 G) : Equation444 G := λ x y z => h x y y z
theorem Equation472_implies_Equation468 (G : Type*) [Magma G] (h : Equation472 G) : Equation468 G := λ x y z => h x y y z
theorem Equation482_implies_Equation478 (G : Type*) [Magma G] (h : Equation482 G) : Equation478 G := λ x y z => h x y y z
theorem Equation486_implies_Equation475 (G : Type*) [Magma G] (h : Equation486 G) : Equation475 G := λ x y z => h x y y z
theorem Equation490_implies_Equation478 (G : Type*) [Magma G] (h : Equation490 G) : Equation478 G := λ x y z => h x y y z
theorem Equation494_implies_Equation478 (G : Type*) [Magma G] (h : Equation494 G) : Equation478 G := λ x y z => h x y y z
theorem Equation495_implies_Equation479 (G : Type*) [Magma G] (h : Equation495 G) : Equation479 G := λ x y z => h x y y z
theorem Equation496_implies_Equation480 (G : Type*) [Magma G] (h : Equation496 G) : Equation480 G := λ x y z => h x y y z
theorem Equation497_implies_Equation480 (G : Type*) [Magma G] (h : Equation497 G) : Equation480 G := λ x y z => h x y y z
theorem Equation498_implies_Equation481 (G : Type*) [Magma G] (h : Equation498 G) : Equation481 G := λ x y z => h x y y z
theorem Equation509_implies_Equation505 (G : Type*) [Magma G] (h : Equation509 G) : Equation505 G := λ x y z => h x y y z
theorem Equation519_implies_Equation515 (G : Type*) [Magma G] (h : Equation519 G) : Equation515 G := λ x y z => h x y y z
theorem Equation523_implies_Equation512 (G : Type*) [Magma G] (h : Equation523 G) : Equation512 G := λ x y z => h x y y z
theorem Equation527_implies_Equation515 (G : Type*) [Magma G] (h : Equation527 G) : Equation515 G := λ x y z => h x y y z
theorem Equation531_implies_Equation515 (G : Type*) [Magma G] (h : Equation531 G) : Equation515 G := λ x y z => h x y y z
theorem Equation532_implies_Equation516 (G : Type*) [Magma G] (h : Equation532 G) : Equation516 G := λ x y z => h x y y z
theorem Equation533_implies_Equation517 (G : Type*) [Magma G] (h : Equation533 G) : Equation517 G := λ x y z => h x y y z
theorem Equation534_implies_Equation517 (G : Type*) [Magma G] (h : Equation534 G) : Equation517 G := λ x y z => h x y y z
theorem Equation535_implies_Equation518 (G : Type*) [Magma G] (h : Equation535 G) : Equation518 G := λ x y z => h x y y z
theorem Equation540_implies_Equation502 (G : Type*) [Magma G] (h : Equation540 G) : Equation502 G := λ x y z => h x y y z
theorem Equation544_implies_Equation505 (G : Type*) [Magma G] (h : Equation544 G) : Equation505 G := λ x y z => h x y y z
theorem Equation548_implies_Equation505 (G : Type*) [Magma G] (h : Equation548 G) : Equation505 G := λ x y z => h x y y z
theorem Equation549_implies_Equation506 (G : Type*) [Magma G] (h : Equation549 G) : Equation506 G := λ x y z => h x y y z
theorem Equation550_implies_Equation507 (G : Type*) [Magma G] (h : Equation550 G) : Equation507 G := λ x y z => h x y y z
theorem Equation551_implies_Equation507 (G : Type*) [Magma G] (h : Equation551 G) : Equation507 G := λ x y z => h x y y z
theorem Equation552_implies_Equation508 (G : Type*) [Magma G] (h : Equation552 G) : Equation508 G := λ x y z => h x y y z
theorem Equation557_implies_Equation512 (G : Type*) [Magma G] (h : Equation557 G) : Equation512 G := λ x y z => h x y y z
theorem Equation561_implies_Equation515 (G : Type*) [Magma G] (h : Equation561 G) : Equation515 G := λ x y z => h x y y z
theorem Equation565_implies_Equation515 (G : Type*) [Magma G] (h : Equation565 G) : Equation515 G := λ x y z => h x y y z
theorem Equation566_implies_Equation516 (G : Type*) [Magma G] (h : Equation566 G) : Equation516 G := λ x y z => h x y y z
theorem Equation567_implies_Equation517 (G : Type*) [Magma G] (h : Equation567 G) : Equation517 G := λ x y z => h x y y z
theorem Equation568_implies_Equation517 (G : Type*) [Magma G] (h : Equation568 G) : Equation517 G := λ x y z => h x y y z
theorem Equation569_implies_Equation518 (G : Type*) [Magma G] (h : Equation569 G) : Equation518 G := λ x y z => h x y y z
theorem Equation574_implies_Equation512 (G : Type*) [Magma G] (h : Equation574 G) : Equation512 G := λ x y z => h x y y z
theorem Equation578_implies_Equation515 (G : Type*) [Magma G] (h : Equation578 G) : Equation515 G := λ x y z => h x y y z
theorem Equation582_implies_Equation515 (G : Type*) [Magma G] (h : Equation582 G) : Equation515 G := λ x y z => h x y y z
theorem Equation583_implies_Equation516 (G : Type*) [Magma G] (h : Equation583 G) : Equation516 G := λ x y z => h x y y z
theorem Equation584_implies_Equation517 (G : Type*) [Magma G] (h : Equation584 G) : Equation517 G := λ x y z => h x y y z
theorem Equation585_implies_Equation517 (G : Type*) [Magma G] (h : Equation585 G) : Equation517 G := λ x y z => h x y y z
theorem Equation586_implies_Equation518 (G : Type*) [Magma G] (h : Equation586 G) : Equation518 G := λ x y z => h x y y z
theorem Equation588_implies_Equation520 (G : Type*) [Magma G] (h : Equation588 G) : Equation520 G := λ x y z => h x y y z
theorem Equation589_implies_Equation521 (G : Type*) [Magma G] (h : Equation589 G) : Equation521 G := λ x y z => h x y y z
theorem Equation590_implies_Equation521 (G : Type*) [Magma G] (h : Equation590 G) : Equation521 G := λ x y z => h x y y z
theorem Equation591_implies_Equation522 (G : Type*) [Magma G] (h : Equation591 G) : Equation522 G := λ x y z => h x y y z
theorem Equation593_implies_Equation524 (G : Type*) [Magma G] (h : Equation593 G) : Equation524 G := λ x y z => h x y y z
theorem Equation594_implies_Equation525 (G : Type*) [Magma G] (h : Equation594 G) : Equation525 G := λ x y z => h x y y z
theorem Equation595_implies_Equation525 (G : Type*) [Magma G] (h : Equation595 G) : Equation525 G := λ x y z => h x y y z
theorem Equation596_implies_Equation526 (G : Type*) [Magma G] (h : Equation596 G) : Equation526 G := λ x y z => h x y y z
theorem Equation598_implies_Equation524 (G : Type*) [Magma G] (h : Equation598 G) : Equation524 G := λ x y z => h x y y z
theorem Equation599_implies_Equation525 (G : Type*) [Magma G] (h : Equation599 G) : Equation525 G := λ x y z => h x y y z
theorem Equation600_implies_Equation525 (G : Type*) [Magma G] (h : Equation600 G) : Equation525 G := λ x y z => h x y y z
theorem Equation601_implies_Equation526 (G : Type*) [Magma G] (h : Equation601 G) : Equation526 G := λ x y z => h x y y z
theorem Equation603_implies_Equation528 (G : Type*) [Magma G] (h : Equation603 G) : Equation528 G := λ x y z => h x y y z
theorem Equation604_implies_Equation529 (G : Type*) [Magma G] (h : Equation604 G) : Equation529 G := λ x y z => h x y y z
theorem Equation605_implies_Equation529 (G : Type*) [Magma G] (h : Equation605 G) : Equation529 G := λ x y z => h x y y z
theorem Equation606_implies_Equation530 (G : Type*) [Magma G] (h : Equation606 G) : Equation530 G := λ x y z => h x y y z
theorem Equation628_implies_Equation624 (G : Type*) [Magma G] (h : Equation628 G) : Equation624 G := λ x y z => h x y y z
theorem Equation638_implies_Equation634 (G : Type*) [Magma G] (h : Equation638 G) : Equation634 G := λ x y z => h x y y z
theorem Equation648_implies_Equation644 (G : Type*) [Magma G] (h : Equation648 G) : Equation644 G := λ x y z => h x y y z
theorem Equation652_implies_Equation641 (G : Type*) [Magma G] (h : Equation652 G) : Equation641 G := λ x y z => h x y y z
theorem Equation656_implies_Equation644 (G : Type*) [Magma G] (h : Equation656 G) : Equation644 G := λ x y z => h x y y z
theorem Equation660_implies_Equation644 (G : Type*) [Magma G] (h : Equation660 G) : Equation644 G := λ x y z => h x y y z
theorem Equation661_implies_Equation645 (G : Type*) [Magma G] (h : Equation661 G) : Equation645 G := λ x y z => h x y y z
theorem Equation662_implies_Equation646 (G : Type*) [Magma G] (h : Equation662 G) : Equation646 G := λ x y z => h x y y z
theorem Equation663_implies_Equation646 (G : Type*) [Magma G] (h : Equation663 G) : Equation646 G := λ x y z => h x y y z
theorem Equation664_implies_Equation647 (G : Type*) [Magma G] (h : Equation664 G) : Equation647 G := λ x y z => h x y y z
theorem Equation675_implies_Equation671 (G : Type*) [Magma G] (h : Equation675 G) : Equation671 G := λ x y z => h x y y z
theorem Equation685_implies_Equation681 (G : Type*) [Magma G] (h : Equation685 G) : Equation681 G := λ x y z => h x y y z
theorem Equation689_implies_Equation678 (G : Type*) [Magma G] (h : Equation689 G) : Equation678 G := λ x y z => h x y y z
theorem Equation693_implies_Equation681 (G : Type*) [Magma G] (h : Equation693 G) : Equation681 G := λ x y z => h x y y z
theorem Equation697_implies_Equation681 (G : Type*) [Magma G] (h : Equation697 G) : Equation681 G := λ x y z => h x y y z
theorem Equation698_implies_Equation682 (G : Type*) [Magma G] (h : Equation698 G) : Equation682 G := λ x y z => h x y y z
theorem Equation699_implies_Equation683 (G : Type*) [Magma G] (h : Equation699 G) : Equation683 G := λ x y z => h x y y z
theorem Equation700_implies_Equation683 (G : Type*) [Magma G] (h : Equation700 G) : Equation683 G := λ x y z => h x y y z
theorem Equation701_implies_Equation684 (G : Type*) [Magma G] (h : Equation701 G) : Equation684 G := λ x y z => h x y y z
theorem Equation712_implies_Equation708 (G : Type*) [Magma G] (h : Equation712 G) : Equation708 G := λ x y z => h x y y z
theorem Equation722_implies_Equation718 (G : Type*) [Magma G] (h : Equation722 G) : Equation718 G := λ x y z => h x y y z
theorem Equation726_implies_Equation715 (G : Type*) [Magma G] (h : Equation726 G) : Equation715 G := λ x y z => h x y y z
theorem Equation730_implies_Equation718 (G : Type*) [Magma G] (h : Equation730 G) : Equation718 G := λ x y z => h x y y z
theorem Equation734_implies_Equation718 (G : Type*) [Magma G] (h : Equation734 G) : Equation718 G := λ x y z => h x y y z
theorem Equation735_implies_Equation719 (G : Type*) [Magma G] (h : Equation735 G) : Equation719 G := λ x y z => h x y y z
theorem Equation736_implies_Equation720 (G : Type*) [Magma G] (h : Equation736 G) : Equation720 G := λ x y z => h x y y z
theorem Equation737_implies_Equation720 (G : Type*) [Magma G] (h : Equation737 G) : Equation720 G := λ x y z => h x y y z
theorem Equation738_implies_Equation721 (G : Type*) [Magma G] (h : Equation738 G) : Equation721 G := λ x y z => h x y y z
theorem Equation743_implies_Equation705 (G : Type*) [Magma G] (h : Equation743 G) : Equation705 G := λ x y z => h x y y z
theorem Equation747_implies_Equation708 (G : Type*) [Magma G] (h : Equation747 G) : Equation708 G := λ x y z => h x y y z
theorem Equation751_implies_Equation708 (G : Type*) [Magma G] (h : Equation751 G) : Equation708 G := λ x y z => h x y y z
theorem Equation752_implies_Equation709 (G : Type*) [Magma G] (h : Equation752 G) : Equation709 G := λ x y z => h x y y z
theorem Equation753_implies_Equation710 (G : Type*) [Magma G] (h : Equation753 G) : Equation710 G := λ x y z => h x y y z
theorem Equation754_implies_Equation710 (G : Type*) [Magma G] (h : Equation754 G) : Equation710 G := λ x y z => h x y y z
theorem Equation755_implies_Equation711 (G : Type*) [Magma G] (h : Equation755 G) : Equation711 G := λ x y z => h x y y z
theorem Equation760_implies_Equation715 (G : Type*) [Magma G] (h : Equation760 G) : Equation715 G := λ x y z => h x y y z
theorem Equation764_implies_Equation718 (G : Type*) [Magma G] (h : Equation764 G) : Equation718 G := λ x y z => h x y y z
theorem Equation768_implies_Equation718 (G : Type*) [Magma G] (h : Equation768 G) : Equation718 G := λ x y z => h x y y z
theorem Equation769_implies_Equation719 (G : Type*) [Magma G] (h : Equation769 G) : Equation719 G := λ x y z => h x y y z
theorem Equation770_implies_Equation720 (G : Type*) [Magma G] (h : Equation770 G) : Equation720 G := λ x y z => h x y y z
theorem Equation771_implies_Equation720 (G : Type*) [Magma G] (h : Equation771 G) : Equation720 G := λ x y z => h x y y z
theorem Equation772_implies_Equation721 (G : Type*) [Magma G] (h : Equation772 G) : Equation721 G := λ x y z => h x y y z
theorem Equation777_implies_Equation715 (G : Type*) [Magma G] (h : Equation777 G) : Equation715 G := λ x y z => h x y y z
theorem Equation781_implies_Equation718 (G : Type*) [Magma G] (h : Equation781 G) : Equation718 G := λ x y z => h x y y z
theorem Equation785_implies_Equation718 (G : Type*) [Magma G] (h : Equation785 G) : Equation718 G := λ x y z => h x y y z
theorem Equation786_implies_Equation719 (G : Type*) [Magma G] (h : Equation786 G) : Equation719 G := λ x y z => h x y y z
theorem Equation787_implies_Equation720 (G : Type*) [Magma G] (h : Equation787 G) : Equation720 G := λ x y z => h x y y z
theorem Equation788_implies_Equation720 (G : Type*) [Magma G] (h : Equation788 G) : Equation720 G := λ x y z => h x y y z
theorem Equation789_implies_Equation721 (G : Type*) [Magma G] (h : Equation789 G) : Equation721 G := λ x y z => h x y y z
theorem Equation791_implies_Equation723 (G : Type*) [Magma G] (h : Equation791 G) : Equation723 G := λ x y z => h x y y z
theorem Equation792_implies_Equation724 (G : Type*) [Magma G] (h : Equation792 G) : Equation724 G := λ x y z => h x y y z
theorem Equation793_implies_Equation724 (G : Type*) [Magma G] (h : Equation793 G) : Equation724 G := λ x y z => h x y y z
theorem Equation794_implies_Equation725 (G : Type*) [Magma G] (h : Equation794 G) : Equation725 G := λ x y z => h x y y z
theorem Equation796_implies_Equation727 (G : Type*) [Magma G] (h : Equation796 G) : Equation727 G := λ x y z => h x y y z
theorem Equation797_implies_Equation728 (G : Type*) [Magma G] (h : Equation797 G) : Equation728 G := λ x y z => h x y y z
theorem Equation798_implies_Equation728 (G : Type*) [Magma G] (h : Equation798 G) : Equation728 G := λ x y z => h x y y z
theorem Equation799_implies_Equation729 (G : Type*) [Magma G] (h : Equation799 G) : Equation729 G := λ x y z => h x y y z
theorem Equation801_implies_Equation727 (G : Type*) [Magma G] (h : Equation801 G) : Equation727 G := λ x y z => h x y y z
theorem Equation802_implies_Equation728 (G : Type*) [Magma G] (h : Equation802 G) : Equation728 G := λ x y z => h x y y z
theorem Equation803_implies_Equation728 (G : Type*) [Magma G] (h : Equation803 G) : Equation728 G := λ x y z => h x y y z
theorem Equation804_implies_Equation729 (G : Type*) [Magma G] (h : Equation804 G) : Equation729 G := λ x y z => h x y y z
theorem Equation806_implies_Equation731 (G : Type*) [Magma G] (h : Equation806 G) : Equation731 G := λ x y z => h x y y z
theorem Equation807_implies_Equation732 (G : Type*) [Magma G] (h : Equation807 G) : Equation732 G := λ x y z => h x y y z
theorem Equation808_implies_Equation732 (G : Type*) [Magma G] (h : Equation808 G) : Equation732 G := λ x y z => h x y y z
theorem Equation809_implies_Equation733 (G : Type*) [Magma G] (h : Equation809 G) : Equation733 G := λ x y z => h x y y z
theorem Equation831_implies_Equation827 (G : Type*) [Magma G] (h : Equation831 G) : Equation827 G := λ x y z => h x y y z
theorem Equation841_implies_Equation837 (G : Type*) [Magma G] (h : Equation841 G) : Equation837 G := λ x y z => h x y y z
theorem Equation851_implies_Equation847 (G : Type*) [Magma G] (h : Equation851 G) : Equation847 G := λ x y z => h x y y z
theorem Equation855_implies_Equation844 (G : Type*) [Magma G] (h : Equation855 G) : Equation844 G := λ x y z => h x y y z
theorem Equation859_implies_Equation847 (G : Type*) [Magma G] (h : Equation859 G) : Equation847 G := λ x y z => h x y y z
theorem Equation863_implies_Equation847 (G : Type*) [Magma G] (h : Equation863 G) : Equation847 G := λ x y z => h x y y z
theorem Equation864_implies_Equation848 (G : Type*) [Magma G] (h : Equation864 G) : Equation848 G := λ x y z => h x y y z
theorem Equation865_implies_Equation849 (G : Type*) [Magma G] (h : Equation865 G) : Equation849 G := λ x y z => h x y y z
theorem Equation866_implies_Equation849 (G : Type*) [Magma G] (h : Equation866 G) : Equation849 G := λ x y z => h x y y z
theorem Equation867_implies_Equation850 (G : Type*) [Magma G] (h : Equation867 G) : Equation850 G := λ x y z => h x y y z
theorem Equation878_implies_Equation874 (G : Type*) [Magma G] (h : Equation878 G) : Equation874 G := λ x y z => h x y y z
theorem Equation888_implies_Equation884 (G : Type*) [Magma G] (h : Equation888 G) : Equation884 G := λ x y z => h x y y z
theorem Equation892_implies_Equation881 (G : Type*) [Magma G] (h : Equation892 G) : Equation881 G := λ x y z => h x y y z
theorem Equation896_implies_Equation884 (G : Type*) [Magma G] (h : Equation896 G) : Equation884 G := λ x y z => h x y y z
theorem Equation900_implies_Equation884 (G : Type*) [Magma G] (h : Equation900 G) : Equation884 G := λ x y z => h x y y z
theorem Equation901_implies_Equation885 (G : Type*) [Magma G] (h : Equation901 G) : Equation885 G := λ x y z => h x y y z
theorem Equation902_implies_Equation886 (G : Type*) [Magma G] (h : Equation902 G) : Equation886 G := λ x y z => h x y y z
theorem Equation903_implies_Equation886 (G : Type*) [Magma G] (h : Equation903 G) : Equation886 G := λ x y z => h x y y z
theorem Equation904_implies_Equation887 (G : Type*) [Magma G] (h : Equation904 G) : Equation887 G := λ x y z => h x y y z
theorem Equation915_implies_Equation911 (G : Type*) [Magma G] (h : Equation915 G) : Equation911 G := λ x y z => h x y y z
theorem Equation925_implies_Equation921 (G : Type*) [Magma G] (h : Equation925 G) : Equation921 G := λ x y z => h x y y z
theorem Equation929_implies_Equation918 (G : Type*) [Magma G] (h : Equation929 G) : Equation918 G := λ x y z => h x y y z
theorem Equation933_implies_Equation921 (G : Type*) [Magma G] (h : Equation933 G) : Equation921 G := λ x y z => h x y y z
theorem Equation937_implies_Equation921 (G : Type*) [Magma G] (h : Equation937 G) : Equation921 G := λ x y z => h x y y z
theorem Equation938_implies_Equation922 (G : Type*) [Magma G] (h : Equation938 G) : Equation922 G := λ x y z => h x y y z
theorem Equation939_implies_Equation923 (G : Type*) [Magma G] (h : Equation939 G) : Equation923 G := λ x y z => h x y y z
theorem Equation940_implies_Equation923 (G : Type*) [Magma G] (h : Equation940 G) : Equation923 G := λ x y z => h x y y z
theorem Equation941_implies_Equation924 (G : Type*) [Magma G] (h : Equation941 G) : Equation924 G := λ x y z => h x y y z
theorem Equation946_implies_Equation908 (G : Type*) [Magma G] (h : Equation946 G) : Equation908 G := λ x y z => h x y y z
theorem Equation950_implies_Equation911 (G : Type*) [Magma G] (h : Equation950 G) : Equation911 G := λ x y z => h x y y z
theorem Equation954_implies_Equation911 (G : Type*) [Magma G] (h : Equation954 G) : Equation911 G := λ x y z => h x y y z
theorem Equation955_implies_Equation912 (G : Type*) [Magma G] (h : Equation955 G) : Equation912 G := λ x y z => h x y y z
theorem Equation956_implies_Equation913 (G : Type*) [Magma G] (h : Equation956 G) : Equation913 G := λ x y z => h x y y z
theorem Equation957_implies_Equation913 (G : Type*) [Magma G] (h : Equation957 G) : Equation913 G := λ x y z => h x y y z
theorem Equation958_implies_Equation914 (G : Type*) [Magma G] (h : Equation958 G) : Equation914 G := λ x y z => h x y y z
theorem Equation963_implies_Equation918 (G : Type*) [Magma G] (h : Equation963 G) : Equation918 G := λ x y z => h x y y z
theorem Equation967_implies_Equation921 (G : Type*) [Magma G] (h : Equation967 G) : Equation921 G := λ x y z => h x y y z
theorem Equation971_implies_Equation921 (G : Type*) [Magma G] (h : Equation971 G) : Equation921 G := λ x y z => h x y y z
theorem Equation972_implies_Equation922 (G : Type*) [Magma G] (h : Equation972 G) : Equation922 G := λ x y z => h x y y z
theorem Equation973_implies_Equation923 (G : Type*) [Magma G] (h : Equation973 G) : Equation923 G := λ x y z => h x y y z
theorem Equation974_implies_Equation923 (G : Type*) [Magma G] (h : Equation974 G) : Equation923 G := λ x y z => h x y y z
theorem Equation975_implies_Equation924 (G : Type*) [Magma G] (h : Equation975 G) : Equation924 G := λ x y z => h x y y z
theorem Equation980_implies_Equation918 (G : Type*) [Magma G] (h : Equation980 G) : Equation918 G := λ x y z => h x y y z
theorem Equation984_implies_Equation921 (G : Type*) [Magma G] (h : Equation984 G) : Equation921 G := λ x y z => h x y y z
theorem Equation988_implies_Equation921 (G : Type*) [Magma G] (h : Equation988 G) : Equation921 G := λ x y z => h x y y z
theorem Equation989_implies_Equation922 (G : Type*) [Magma G] (h : Equation989 G) : Equation922 G := λ x y z => h x y y z
theorem Equation990_implies_Equation923 (G : Type*) [Magma G] (h : Equation990 G) : Equation923 G := λ x y z => h x y y z
theorem Equation991_implies_Equation923 (G : Type*) [Magma G] (h : Equation991 G) : Equation923 G := λ x y z => h x y y z
theorem Equation992_implies_Equation924 (G : Type*) [Magma G] (h : Equation992 G) : Equation924 G := λ x y z => h x y y z
theorem Equation994_implies_Equation926 (G : Type*) [Magma G] (h : Equation994 G) : Equation926 G := λ x y z => h x y y z
theorem Equation995_implies_Equation927 (G : Type*) [Magma G] (h : Equation995 G) : Equation927 G := λ x y z => h x y y z
theorem Equation996_implies_Equation927 (G : Type*) [Magma G] (h : Equation996 G) : Equation927 G := λ x y z => h x y y z
theorem Equation997_implies_Equation928 (G : Type*) [Magma G] (h : Equation997 G) : Equation928 G := λ x y z => h x y y z
theorem Equation999_implies_Equation930 (G : Type*) [Magma G] (h : Equation999 G) : Equation930 G := λ x y z => h x y y z
theorem Equation1000_implies_Equation931 (G : Type*) [Magma G] (h : Equation1000 G) : Equation931 G := λ x y z => h x y y z
theorem Equation1001_implies_Equation931 (G : Type*) [Magma G] (h : Equation1001 G) : Equation931 G := λ x y z => h x y y z
theorem Equation1002_implies_Equation932 (G : Type*) [Magma G] (h : Equation1002 G) : Equation932 G := λ x y z => h x y y z
theorem Equation1004_implies_Equation930 (G : Type*) [Magma G] (h : Equation1004 G) : Equation930 G := λ x y z => h x y y z
theorem Equation1005_implies_Equation931 (G : Type*) [Magma G] (h : Equation1005 G) : Equation931 G := λ x y z => h x y y z
theorem Equation1006_implies_Equation931 (G : Type*) [Magma G] (h : Equation1006 G) : Equation931 G := λ x y z => h x y y z
theorem Equation1007_implies_Equation932 (G : Type*) [Magma G] (h : Equation1007 G) : Equation932 G := λ x y z => h x y y z
theorem Equation1009_implies_Equation934 (G : Type*) [Magma G] (h : Equation1009 G) : Equation934 G := λ x y z => h x y y z
theorem Equation1010_implies_Equation935 (G : Type*) [Magma G] (h : Equation1010 G) : Equation935 G := λ x y z => h x y y z
theorem Equation1011_implies_Equation935 (G : Type*) [Magma G] (h : Equation1011 G) : Equation935 G := λ x y z => h x y y z
theorem Equation1012_implies_Equation936 (G : Type*) [Magma G] (h : Equation1012 G) : Equation936 G := λ x y z => h x y y z
theorem Equation1034_implies_Equation1030 (G : Type*) [Magma G] (h : Equation1034 G) : Equation1030 G := λ x y z => h x y y z
theorem Equation1044_implies_Equation1040 (G : Type*) [Magma G] (h : Equation1044 G) : Equation1040 G := λ x y z => h x y y z
theorem Equation1054_implies_Equation1050 (G : Type*) [Magma G] (h : Equation1054 G) : Equation1050 G := λ x y z => h x y y z
theorem Equation1058_implies_Equation1047 (G : Type*) [Magma G] (h : Equation1058 G) : Equation1047 G := λ x y z => h x y y z
theorem Equation1062_implies_Equation1050 (G : Type*) [Magma G] (h : Equation1062 G) : Equation1050 G := λ x y z => h x y y z
theorem Equation1066_implies_Equation1050 (G : Type*) [Magma G] (h : Equation1066 G) : Equation1050 G := λ x y z => h x y y z
theorem Equation1067_implies_Equation1051 (G : Type*) [Magma G] (h : Equation1067 G) : Equation1051 G := λ x y z => h x y y z
theorem Equation1068_implies_Equation1052 (G : Type*) [Magma G] (h : Equation1068 G) : Equation1052 G := λ x y z => h x y y z
theorem Equation1069_implies_Equation1052 (G : Type*) [Magma G] (h : Equation1069 G) : Equation1052 G := λ x y z => h x y y z
theorem Equation1070_implies_Equation1053 (G : Type*) [Magma G] (h : Equation1070 G) : Equation1053 G := λ x y z => h x y y z
theorem Equation1081_implies_Equation1077 (G : Type*) [Magma G] (h : Equation1081 G) : Equation1077 G := λ x y z => h x y y z
theorem Equation1091_implies_Equation1087 (G : Type*) [Magma G] (h : Equation1091 G) : Equation1087 G := λ x y z => h x y y z
theorem Equation1095_implies_Equation1084 (G : Type*) [Magma G] (h : Equation1095 G) : Equation1084 G := λ x y z => h x y y z
theorem Equation1099_implies_Equation1087 (G : Type*) [Magma G] (h : Equation1099 G) : Equation1087 G := λ x y z => h x y y z
theorem Equation1103_implies_Equation1087 (G : Type*) [Magma G] (h : Equation1103 G) : Equation1087 G := λ x y z => h x y y z
theorem Equation1104_implies_Equation1088 (G : Type*) [Magma G] (h : Equation1104 G) : Equation1088 G := λ x y z => h x y y z
theorem Equation1105_implies_Equation1089 (G : Type*) [Magma G] (h : Equation1105 G) : Equation1089 G := λ x y z => h x y y z
theorem Equation1106_implies_Equation1089 (G : Type*) [Magma G] (h : Equation1106 G) : Equation1089 G := λ x y z => h x y y z
theorem Equation1107_implies_Equation1090 (G : Type*) [Magma G] (h : Equation1107 G) : Equation1090 G := λ x y z => h x y y z
theorem Equation1118_implies_Equation1114 (G : Type*) [Magma G] (h : Equation1118 G) : Equation1114 G := λ x y z => h x y y z
theorem Equation1128_implies_Equation1124 (G : Type*) [Magma G] (h : Equation1128 G) : Equation1124 G := λ x y z => h x y y z
theorem Equation1132_implies_Equation1121 (G : Type*) [Magma G] (h : Equation1132 G) : Equation1121 G := λ x y z => h x y y z
theorem Equation1136_implies_Equation1124 (G : Type*) [Magma G] (h : Equation1136 G) : Equation1124 G := λ x y z => h x y y z
theorem Equation1140_implies_Equation1124 (G : Type*) [Magma G] (h : Equation1140 G) : Equation1124 G := λ x y z => h x y y z
theorem Equation1141_implies_Equation1125 (G : Type*) [Magma G] (h : Equation1141 G) : Equation1125 G := λ x y z => h x y y z
theorem Equation1142_implies_Equation1126 (G : Type*) [Magma G] (h : Equation1142 G) : Equation1126 G := λ x y z => h x y y z
theorem Equation1143_implies_Equation1126 (G : Type*) [Magma G] (h : Equation1143 G) : Equation1126 G := λ x y z => h x y y z
theorem Equation1144_implies_Equation1127 (G : Type*) [Magma G] (h : Equation1144 G) : Equation1127 G := λ x y z => h x y y z
theorem Equation1149_implies_Equation1111 (G : Type*) [Magma G] (h : Equation1149 G) : Equation1111 G := λ x y z => h x y y z
theorem Equation1153_implies_Equation1114 (G : Type*) [Magma G] (h : Equation1153 G) : Equation1114 G := λ x y z => h x y y z
theorem Equation1157_implies_Equation1114 (G : Type*) [Magma G] (h : Equation1157 G) : Equation1114 G := λ x y z => h x y y z
theorem Equation1158_implies_Equation1115 (G : Type*) [Magma G] (h : Equation1158 G) : Equation1115 G := λ x y z => h x y y z
theorem Equation1159_implies_Equation1116 (G : Type*) [Magma G] (h : Equation1159 G) : Equation1116 G := λ x y z => h x y y z
theorem Equation1160_implies_Equation1116 (G : Type*) [Magma G] (h : Equation1160 G) : Equation1116 G := λ x y z => h x y y z
theorem Equation1161_implies_Equation1117 (G : Type*) [Magma G] (h : Equation1161 G) : Equation1117 G := λ x y z => h x y y z
theorem Equation1166_implies_Equation1121 (G : Type*) [Magma G] (h : Equation1166 G) : Equation1121 G := λ x y z => h x y y z
theorem Equation1170_implies_Equation1124 (G : Type*) [Magma G] (h : Equation1170 G) : Equation1124 G := λ x y z => h x y y z
theorem Equation1174_implies_Equation1124 (G : Type*) [Magma G] (h : Equation1174 G) : Equation1124 G := λ x y z => h x y y z
theorem Equation1175_implies_Equation1125 (G : Type*) [Magma G] (h : Equation1175 G) : Equation1125 G := λ x y z => h x y y z
theorem Equation1176_implies_Equation1126 (G : Type*) [Magma G] (h : Equation1176 G) : Equation1126 G := λ x y z => h x y y z
theorem Equation1177_implies_Equation1126 (G : Type*) [Magma G] (h : Equation1177 G) : Equation1126 G := λ x y z => h x y y z
theorem Equation1178_implies_Equation1127 (G : Type*) [Magma G] (h : Equation1178 G) : Equation1127 G := λ x y z => h x y y z
theorem Equation1183_implies_Equation1121 (G : Type*) [Magma G] (h : Equation1183 G) : Equation1121 G := λ x y z => h x y y z
theorem Equation1187_implies_Equation1124 (G : Type*) [Magma G] (h : Equation1187 G) : Equation1124 G := λ x y z => h x y y z
theorem Equation1191_implies_Equation1124 (G : Type*) [Magma G] (h : Equation1191 G) : Equation1124 G := λ x y z => h x y y z
theorem Equation1192_implies_Equation1125 (G : Type*) [Magma G] (h : Equation1192 G) : Equation1125 G := λ x y z => h x y y z
theorem Equation1193_implies_Equation1126 (G : Type*) [Magma G] (h : Equation1193 G) : Equation1126 G := λ x y z => h x y y z
theorem Equation1194_implies_Equation1126 (G : Type*) [Magma G] (h : Equation1194 G) : Equation1126 G := λ x y z => h x y y z
theorem Equation1195_implies_Equation1127 (G : Type*) [Magma G] (h : Equation1195 G) : Equation1127 G := λ x y z => h x y y z
theorem Equation1197_implies_Equation1129 (G : Type*) [Magma G] (h : Equation1197 G) : Equation1129 G := λ x y z => h x y y z
theorem Equation1198_implies_Equation1130 (G : Type*) [Magma G] (h : Equation1198 G) : Equation1130 G := λ x y z => h x y y z
theorem Equation1199_implies_Equation1130 (G : Type*) [Magma G] (h : Equation1199 G) : Equation1130 G := λ x y z => h x y y z
theorem Equation1200_implies_Equation1131 (G : Type*) [Magma G] (h : Equation1200 G) : Equation1131 G := λ x y z => h x y y z
theorem Equation1202_implies_Equation1133 (G : Type*) [Magma G] (h : Equation1202 G) : Equation1133 G := λ x y z => h x y y z
theorem Equation1203_implies_Equation1134 (G : Type*) [Magma G] (h : Equation1203 G) : Equation1134 G := λ x y z => h x y y z
theorem Equation1204_implies_Equation1134 (G : Type*) [Magma G] (h : Equation1204 G) : Equation1134 G := λ x y z => h x y y z
theorem Equation1205_implies_Equation1135 (G : Type*) [Magma G] (h : Equation1205 G) : Equation1135 G := λ x y z => h x y y z
theorem Equation1207_implies_Equation1133 (G : Type*) [Magma G] (h : Equation1207 G) : Equation1133 G := λ x y z => h x y y z
theorem Equation1208_implies_Equation1134 (G : Type*) [Magma G] (h : Equation1208 G) : Equation1134 G := λ x y z => h x y y z
theorem Equation1209_implies_Equation1134 (G : Type*) [Magma G] (h : Equation1209 G) : Equation1134 G := λ x y z => h x y y z
theorem Equation1210_implies_Equation1135 (G : Type*) [Magma G] (h : Equation1210 G) : Equation1135 G := λ x y z => h x y y z
theorem Equation1212_implies_Equation1137 (G : Type*) [Magma G] (h : Equation1212 G) : Equation1137 G := λ x y z => h x y y z
theorem Equation1213_implies_Equation1138 (G : Type*) [Magma G] (h : Equation1213 G) : Equation1138 G := λ x y z => h x y y z
theorem Equation1214_implies_Equation1138 (G : Type*) [Magma G] (h : Equation1214 G) : Equation1138 G := λ x y z => h x y y z
theorem Equation1215_implies_Equation1139 (G : Type*) [Magma G] (h : Equation1215 G) : Equation1139 G := λ x y z => h x y y z
theorem Equation1237_implies_Equation1233 (G : Type*) [Magma G] (h : Equation1237 G) : Equation1233 G := λ x y z => h x y y z
theorem Equation1247_implies_Equation1243 (G : Type*) [Magma G] (h : Equation1247 G) : Equation1243 G := λ x y z => h x y y z
theorem Equation1257_implies_Equation1253 (G : Type*) [Magma G] (h : Equation1257 G) : Equation1253 G := λ x y z => h x y y z
theorem Equation1261_implies_Equation1250 (G : Type*) [Magma G] (h : Equation1261 G) : Equation1250 G := λ x y z => h x y y z
theorem Equation1265_implies_Equation1253 (G : Type*) [Magma G] (h : Equation1265 G) : Equation1253 G := λ x y z => h x y y z
theorem Equation1269_implies_Equation1253 (G : Type*) [Magma G] (h : Equation1269 G) : Equation1253 G := λ x y z => h x y y z
theorem Equation1270_implies_Equation1254 (G : Type*) [Magma G] (h : Equation1270 G) : Equation1254 G := λ x y z => h x y y z
theorem Equation1271_implies_Equation1255 (G : Type*) [Magma G] (h : Equation1271 G) : Equation1255 G := λ x y z => h x y y z
theorem Equation1272_implies_Equation1255 (G : Type*) [Magma G] (h : Equation1272 G) : Equation1255 G := λ x y z => h x y y z
theorem Equation1273_implies_Equation1256 (G : Type*) [Magma G] (h : Equation1273 G) : Equation1256 G := λ x y z => h x y y z
theorem Equation1284_implies_Equation1280 (G : Type*) [Magma G] (h : Equation1284 G) : Equation1280 G := λ x y z => h x y y z
theorem Equation1294_implies_Equation1290 (G : Type*) [Magma G] (h : Equation1294 G) : Equation1290 G := λ x y z => h x y y z
theorem Equation1298_implies_Equation1287 (G : Type*) [Magma G] (h : Equation1298 G) : Equation1287 G := λ x y z => h x y y z
theorem Equation1302_implies_Equation1290 (G : Type*) [Magma G] (h : Equation1302 G) : Equation1290 G := λ x y z => h x y y z
theorem Equation1306_implies_Equation1290 (G : Type*) [Magma G] (h : Equation1306 G) : Equation1290 G := λ x y z => h x y y z
theorem Equation1307_implies_Equation1291 (G : Type*) [Magma G] (h : Equation1307 G) : Equation1291 G := λ x y z => h x y y z
theorem Equation1308_implies_Equation1292 (G : Type*) [Magma G] (h : Equation1308 G) : Equation1292 G := λ x y z => h x y y z
theorem Equation1309_implies_Equation1292 (G : Type*) [Magma G] (h : Equation1309 G) : Equation1292 G := λ x y z => h x y y z
theorem Equation1310_implies_Equation1293 (G : Type*) [Magma G] (h : Equation1310 G) : Equation1293 G := λ x y z => h x y y z
theorem Equation1321_implies_Equation1317 (G : Type*) [Magma G] (h : Equation1321 G) : Equation1317 G := λ x y z => h x y y z
theorem Equation1331_implies_Equation1327 (G : Type*) [Magma G] (h : Equation1331 G) : Equation1327 G := λ x y z => h x y y z
theorem Equation1335_implies_Equation1324 (G : Type*) [Magma G] (h : Equation1335 G) : Equation1324 G := λ x y z => h x y y z
theorem Equation1339_implies_Equation1327 (G : Type*) [Magma G] (h : Equation1339 G) : Equation1327 G := λ x y z => h x y y z
theorem Equation1343_implies_Equation1327 (G : Type*) [Magma G] (h : Equation1343 G) : Equation1327 G := λ x y z => h x y y z
theorem Equation1344_implies_Equation1328 (G : Type*) [Magma G] (h : Equation1344 G) : Equation1328 G := λ x y z => h x y y z
theorem Equation1345_implies_Equation1329 (G : Type*) [Magma G] (h : Equation1345 G) : Equation1329 G := λ x y z => h x y y z
theorem Equation1346_implies_Equation1329 (G : Type*) [Magma G] (h : Equation1346 G) : Equation1329 G := λ x y z => h x y y z
theorem Equation1347_implies_Equation1330 (G : Type*) [Magma G] (h : Equation1347 G) : Equation1330 G := λ x y z => h x y y z
theorem Equation1352_implies_Equation1314 (G : Type*) [Magma G] (h : Equation1352 G) : Equation1314 G := λ x y z => h x y y z
theorem Equation1356_implies_Equation1317 (G : Type*) [Magma G] (h : Equation1356 G) : Equation1317 G := λ x y z => h x y y z
theorem Equation1360_implies_Equation1317 (G : Type*) [Magma G] (h : Equation1360 G) : Equation1317 G := λ x y z => h x y y z
theorem Equation1361_implies_Equation1318 (G : Type*) [Magma G] (h : Equation1361 G) : Equation1318 G := λ x y z => h x y y z
theorem Equation1362_implies_Equation1319 (G : Type*) [Magma G] (h : Equation1362 G) : Equation1319 G := λ x y z => h x y y z
theorem Equation1363_implies_Equation1319 (G : Type*) [Magma G] (h : Equation1363 G) : Equation1319 G := λ x y z => h x y y z
theorem Equation1364_implies_Equation1320 (G : Type*) [Magma G] (h : Equation1364 G) : Equation1320 G := λ x y z => h x y y z
theorem Equation1369_implies_Equation1324 (G : Type*) [Magma G] (h : Equation1369 G) : Equation1324 G := λ x y z => h x y y z
theorem Equation1373_implies_Equation1327 (G : Type*) [Magma G] (h : Equation1373 G) : Equation1327 G := λ x y z => h x y y z
theorem Equation1377_implies_Equation1327 (G : Type*) [Magma G] (h : Equation1377 G) : Equation1327 G := λ x y z => h x y y z
theorem Equation1378_implies_Equation1328 (G : Type*) [Magma G] (h : Equation1378 G) : Equation1328 G := λ x y z => h x y y z
theorem Equation1379_implies_Equation1329 (G : Type*) [Magma G] (h : Equation1379 G) : Equation1329 G := λ x y z => h x y y z
theorem Equation1380_implies_Equation1329 (G : Type*) [Magma G] (h : Equation1380 G) : Equation1329 G := λ x y z => h x y y z
theorem Equation1381_implies_Equation1330 (G : Type*) [Magma G] (h : Equation1381 G) : Equation1330 G := λ x y z => h x y y z
theorem Equation1386_implies_Equation1324 (G : Type*) [Magma G] (h : Equation1386 G) : Equation1324 G := λ x y z => h x y y z
theorem Equation1390_implies_Equation1327 (G : Type*) [Magma G] (h : Equation1390 G) : Equation1327 G := λ x y z => h x y y z
theorem Equation1394_implies_Equation1327 (G : Type*) [Magma G] (h : Equation1394 G) : Equation1327 G := λ x y z => h x y y z
theorem Equation1395_implies_Equation1328 (G : Type*) [Magma G] (h : Equation1395 G) : Equation1328 G := λ x y z => h x y y z
theorem Equation1396_implies_Equation1329 (G : Type*) [Magma G] (h : Equation1396 G) : Equation1329 G := λ x y z => h x y y z
theorem Equation1397_implies_Equation1329 (G : Type*) [Magma G] (h : Equation1397 G) : Equation1329 G := λ x y z => h x y y z
theorem Equation1398_implies_Equation1330 (G : Type*) [Magma G] (h : Equation1398 G) : Equation1330 G := λ x y z => h x y y z
theorem Equation1400_implies_Equation1332 (G : Type*) [Magma G] (h : Equation1400 G) : Equation1332 G := λ x y z => h x y y z
theorem Equation1401_implies_Equation1333 (G : Type*) [Magma G] (h : Equation1401 G) : Equation1333 G := λ x y z => h x y y z
theorem Equation1402_implies_Equation1333 (G : Type*) [Magma G] (h : Equation1402 G) : Equation1333 G := λ x y z => h x y y z
theorem Equation1403_implies_Equation1334 (G : Type*) [Magma G] (h : Equation1403 G) : Equation1334 G := λ x y z => h x y y z
theorem Equation1405_implies_Equation1336 (G : Type*) [Magma G] (h : Equation1405 G) : Equation1336 G := λ x y z => h x y y z
theorem Equation1406_implies_Equation1337 (G : Type*) [Magma G] (h : Equation1406 G) : Equation1337 G := λ x y z => h x y y z
theorem Equation1407_implies_Equation1337 (G : Type*) [Magma G] (h : Equation1407 G) : Equation1337 G := λ x y z => h x y y z
theorem Equation1408_implies_Equation1338 (G : Type*) [Magma G] (h : Equation1408 G) : Equation1338 G := λ x y z => h x y y z
theorem Equation1410_implies_Equation1336 (G : Type*) [Magma G] (h : Equation1410 G) : Equation1336 G := λ x y z => h x y y z
theorem Equation1411_implies_Equation1337 (G : Type*) [Magma G] (h : Equation1411 G) : Equation1337 G := λ x y z => h x y y z
theorem Equation1412_implies_Equation1337 (G : Type*) [Magma G] (h : Equation1412 G) : Equation1337 G := λ x y z => h x y y z
theorem Equation1413_implies_Equation1338 (G : Type*) [Magma G] (h : Equation1413 G) : Equation1338 G := λ x y z => h x y y z
theorem Equation1415_implies_Equation1340 (G : Type*) [Magma G] (h : Equation1415 G) : Equation1340 G := λ x y z => h x y y z
theorem Equation1416_implies_Equation1341 (G : Type*) [Magma G] (h : Equation1416 G) : Equation1341 G := λ x y z => h x y y z
theorem Equation1417_implies_Equation1341 (G : Type*) [Magma G] (h : Equation1417 G) : Equation1341 G := λ x y z => h x y y z
theorem Equation1418_implies_Equation1342 (G : Type*) [Magma G] (h : Equation1418 G) : Equation1342 G := λ x y z => h x y y z
theorem Equation1440_implies_Equation1436 (G : Type*) [Magma G] (h : Equation1440 G) : Equation1436 G := λ x y z => h x y y z
theorem Equation1450_implies_Equation1446 (G : Type*) [Magma G] (h : Equation1450 G) : Equation1446 G := λ x y z => h x y y z
theorem Equation1460_implies_Equation1456 (G : Type*) [Magma G] (h : Equation1460 G) : Equation1456 G := λ x y z => h x y y z
theorem Equation1464_implies_Equation1453 (G : Type*) [Magma G] (h : Equation1464 G) : Equation1453 G := λ x y z => h x y y z
theorem Equation1468_implies_Equation1456 (G : Type*) [Magma G] (h : Equation1468 G) : Equation1456 G := λ x y z => h x y y z
theorem Equation1472_implies_Equation1456 (G : Type*) [Magma G] (h : Equation1472 G) : Equation1456 G := λ x y z => h x y y z
theorem Equation1473_implies_Equation1457 (G : Type*) [Magma G] (h : Equation1473 G) : Equation1457 G := λ x y z => h x y y z
theorem Equation1474_implies_Equation1458 (G : Type*) [Magma G] (h : Equation1474 G) : Equation1458 G := λ x y z => h x y y z
theorem Equation1475_implies_Equation1458 (G : Type*) [Magma G] (h : Equation1475 G) : Equation1458 G := λ x y z => h x y y z
theorem Equation1476_implies_Equation1459 (G : Type*) [Magma G] (h : Equation1476 G) : Equation1459 G := λ x y z => h x y y z
theorem Equation1487_implies_Equation1483 (G : Type*) [Magma G] (h : Equation1487 G) : Equation1483 G := λ x y z => h x y y z
theorem Equation1497_implies_Equation1493 (G : Type*) [Magma G] (h : Equation1497 G) : Equation1493 G := λ x y z => h x y y z
theorem Equation1501_implies_Equation1490 (G : Type*) [Magma G] (h : Equation1501 G) : Equation1490 G := λ x y z => h x y y z
theorem Equation1505_implies_Equation1493 (G : Type*) [Magma G] (h : Equation1505 G) : Equation1493 G := λ x y z => h x y y z
theorem Equation1509_implies_Equation1493 (G : Type*) [Magma G] (h : Equation1509 G) : Equation1493 G := λ x y z => h x y y z
theorem Equation1510_implies_Equation1494 (G : Type*) [Magma G] (h : Equation1510 G) : Equation1494 G := λ x y z => h x y y z
theorem Equation1511_implies_Equation1495 (G : Type*) [Magma G] (h : Equation1511 G) : Equation1495 G := λ x y z => h x y y z
theorem Equation1512_implies_Equation1495 (G : Type*) [Magma G] (h : Equation1512 G) : Equation1495 G := λ x y z => h x y y z
theorem Equation1513_implies_Equation1496 (G : Type*) [Magma G] (h : Equation1513 G) : Equation1496 G := λ x y z => h x y y z
theorem Equation1524_implies_Equation1520 (G : Type*) [Magma G] (h : Equation1524 G) : Equation1520 G := λ x y z => h x y y z
theorem Equation1534_implies_Equation1530 (G : Type*) [Magma G] (h : Equation1534 G) : Equation1530 G := λ x y z => h x y y z
theorem Equation1538_implies_Equation1527 (G : Type*) [Magma G] (h : Equation1538 G) : Equation1527 G := λ x y z => h x y y z
theorem Equation1542_implies_Equation1530 (G : Type*) [Magma G] (h : Equation1542 G) : Equation1530 G := λ x y z => h x y y z
theorem Equation1546_implies_Equation1530 (G : Type*) [Magma G] (h : Equation1546 G) : Equation1530 G := λ x y z => h x y y z
theorem Equation1547_implies_Equation1531 (G : Type*) [Magma G] (h : Equation1547 G) : Equation1531 G := λ x y z => h x y y z
theorem Equation1548_implies_Equation1532 (G : Type*) [Magma G] (h : Equation1548 G) : Equation1532 G := λ x y z => h x y y z
theorem Equation1549_implies_Equation1532 (G : Type*) [Magma G] (h : Equation1549 G) : Equation1532 G := λ x y z => h x y y z
theorem Equation1550_implies_Equation1533 (G : Type*) [Magma G] (h : Equation1550 G) : Equation1533 G := λ x y z => h x y y z
theorem Equation1555_implies_Equation1517 (G : Type*) [Magma G] (h : Equation1555 G) : Equation1517 G := λ x y z => h x y y z
theorem Equation1559_implies_Equation1520 (G : Type*) [Magma G] (h : Equation1559 G) : Equation1520 G := λ x y z => h x y y z
theorem Equation1563_implies_Equation1520 (G : Type*) [Magma G] (h : Equation1563 G) : Equation1520 G := λ x y z => h x y y z
theorem Equation1564_implies_Equation1521 (G : Type*) [Magma G] (h : Equation1564 G) : Equation1521 G := λ x y z => h x y y z
theorem Equation1565_implies_Equation1522 (G : Type*) [Magma G] (h : Equation1565 G) : Equation1522 G := λ x y z => h x y y z
theorem Equation1566_implies_Equation1522 (G : Type*) [Magma G] (h : Equation1566 G) : Equation1522 G := λ x y z => h x y y z
theorem Equation1567_implies_Equation1523 (G : Type*) [Magma G] (h : Equation1567 G) : Equation1523 G := λ x y z => h x y y z
theorem Equation1572_implies_Equation1527 (G : Type*) [Magma G] (h : Equation1572 G) : Equation1527 G := λ x y z => h x y y z
theorem Equation1576_implies_Equation1530 (G : Type*) [Magma G] (h : Equation1576 G) : Equation1530 G := λ x y z => h x y y z
theorem Equation1580_implies_Equation1530 (G : Type*) [Magma G] (h : Equation1580 G) : Equation1530 G := λ x y z => h x y y z
theorem Equation1581_implies_Equation1531 (G : Type*) [Magma G] (h : Equation1581 G) : Equation1531 G := λ x y z => h x y y z
theorem Equation1582_implies_Equation1532 (G : Type*) [Magma G] (h : Equation1582 G) : Equation1532 G := λ x y z => h x y y z
theorem Equation1583_implies_Equation1532 (G : Type*) [Magma G] (h : Equation1583 G) : Equation1532 G := λ x y z => h x y y z
theorem Equation1584_implies_Equation1533 (G : Type*) [Magma G] (h : Equation1584 G) : Equation1533 G := λ x y z => h x y y z
theorem Equation1589_implies_Equation1527 (G : Type*) [Magma G] (h : Equation1589 G) : Equation1527 G := λ x y z => h x y y z
theorem Equation1593_implies_Equation1530 (G : Type*) [Magma G] (h : Equation1593 G) : Equation1530 G := λ x y z => h x y y z
theorem Equation1597_implies_Equation1530 (G : Type*) [Magma G] (h : Equation1597 G) : Equation1530 G := λ x y z => h x y y z
theorem Equation1598_implies_Equation1531 (G : Type*) [Magma G] (h : Equation1598 G) : Equation1531 G := λ x y z => h x y y z
theorem Equation1599_implies_Equation1532 (G : Type*) [Magma G] (h : Equation1599 G) : Equation1532 G := λ x y z => h x y y z
theorem Equation1600_implies_Equation1532 (G : Type*) [Magma G] (h : Equation1600 G) : Equation1532 G := λ x y z => h x y y z
theorem Equation1601_implies_Equation1533 (G : Type*) [Magma G] (h : Equation1601 G) : Equation1533 G := λ x y z => h x y y z
theorem Equation1603_implies_Equation1535 (G : Type*) [Magma G] (h : Equation1603 G) : Equation1535 G := λ x y z => h x y y z
theorem Equation1604_implies_Equation1536 (G : Type*) [Magma G] (h : Equation1604 G) : Equation1536 G := λ x y z => h x y y z
theorem Equation1605_implies_Equation1536 (G : Type*) [Magma G] (h : Equation1605 G) : Equation1536 G := λ x y z => h x y y z
theorem Equation1606_implies_Equation1537 (G : Type*) [Magma G] (h : Equation1606 G) : Equation1537 G := λ x y z => h x y y z
theorem Equation1608_implies_Equation1539 (G : Type*) [Magma G] (h : Equation1608 G) : Equation1539 G := λ x y z => h x y y z
theorem Equation1609_implies_Equation1540 (G : Type*) [Magma G] (h : Equation1609 G) : Equation1540 G := λ x y z => h x y y z
theorem Equation1610_implies_Equation1540 (G : Type*) [Magma G] (h : Equation1610 G) : Equation1540 G := λ x y z => h x y y z
theorem Equation1611_implies_Equation1541 (G : Type*) [Magma G] (h : Equation1611 G) : Equation1541 G := λ x y z => h x y y z
theorem Equation1613_implies_Equation1539 (G : Type*) [Magma G] (h : Equation1613 G) : Equation1539 G := λ x y z => h x y y z
theorem Equation1614_implies_Equation1540 (G : Type*) [Magma G] (h : Equation1614 G) : Equation1540 G := λ x y z => h x y y z
theorem Equation1615_implies_Equation1540 (G : Type*) [Magma G] (h : Equation1615 G) : Equation1540 G := λ x y z => h x y y z
theorem Equation1616_implies_Equation1541 (G : Type*) [Magma G] (h : Equation1616 G) : Equation1541 G := λ x y z => h x y y z
theorem Equation1618_implies_Equation1543 (G : Type*) [Magma G] (h : Equation1618 G) : Equation1543 G := λ x y z => h x y y z
theorem Equation1619_implies_Equation1544 (G : Type*) [Magma G] (h : Equation1619 G) : Equation1544 G := λ x y z => h x y y z
theorem Equation1620_implies_Equation1544 (G : Type*) [Magma G] (h : Equation1620 G) : Equation1544 G := λ x y z => h x y y z
theorem Equation1621_implies_Equation1545 (G : Type*) [Magma G] (h : Equation1621 G) : Equation1545 G := λ x y z => h x y y z
theorem Equation1643_implies_Equation1639 (G : Type*) [Magma G] (h : Equation1643 G) : Equation1639 G := λ x y z => h x y y z
theorem Equation1653_implies_Equation1649 (G : Type*) [Magma G] (h : Equation1653 G) : Equation1649 G := λ x y z => h x y y z
theorem Equation1663_implies_Equation1659 (G : Type*) [Magma G] (h : Equation1663 G) : Equation1659 G := λ x y z => h x y y z
theorem Equation1667_implies_Equation1656 (G : Type*) [Magma G] (h : Equation1667 G) : Equation1656 G := λ x y z => h x y y z
theorem Equation1671_implies_Equation1659 (G : Type*) [Magma G] (h : Equation1671 G) : Equation1659 G := λ x y z => h x y y z
theorem Equation1675_implies_Equation1659 (G : Type*) [Magma G] (h : Equation1675 G) : Equation1659 G := λ x y z => h x y y z
theorem Equation1676_implies_Equation1660 (G : Type*) [Magma G] (h : Equation1676 G) : Equation1660 G := λ x y z => h x y y z
theorem Equation1677_implies_Equation1661 (G : Type*) [Magma G] (h : Equation1677 G) : Equation1661 G := λ x y z => h x y y z
theorem Equation1678_implies_Equation1661 (G : Type*) [Magma G] (h : Equation1678 G) : Equation1661 G := λ x y z => h x y y z
theorem Equation1679_implies_Equation1662 (G : Type*) [Magma G] (h : Equation1679 G) : Equation1662 G := λ x y z => h x y y z
theorem Equation1690_implies_Equation1686 (G : Type*) [Magma G] (h : Equation1690 G) : Equation1686 G := λ x y z => h x y y z
theorem Equation1700_implies_Equation1696 (G : Type*) [Magma G] (h : Equation1700 G) : Equation1696 G := λ x y z => h x y y z
theorem Equation1704_implies_Equation1693 (G : Type*) [Magma G] (h : Equation1704 G) : Equation1693 G := λ x y z => h x y y z
theorem Equation1708_implies_Equation1696 (G : Type*) [Magma G] (h : Equation1708 G) : Equation1696 G := λ x y z => h x y y z
theorem Equation1712_implies_Equation1696 (G : Type*) [Magma G] (h : Equation1712 G) : Equation1696 G := λ x y z => h x y y z
theorem Equation1713_implies_Equation1697 (G : Type*) [Magma G] (h : Equation1713 G) : Equation1697 G := λ x y z => h x y y z
theorem Equation1714_implies_Equation1698 (G : Type*) [Magma G] (h : Equation1714 G) : Equation1698 G := λ x y z => h x y y z
theorem Equation1715_implies_Equation1698 (G : Type*) [Magma G] (h : Equation1715 G) : Equation1698 G := λ x y z => h x y y z
theorem Equation1716_implies_Equation1699 (G : Type*) [Magma G] (h : Equation1716 G) : Equation1699 G := λ x y z => h x y y z
theorem Equation1727_implies_Equation1723 (G : Type*) [Magma G] (h : Equation1727 G) : Equation1723 G := λ x y z => h x y y z
theorem Equation1737_implies_Equation1733 (G : Type*) [Magma G] (h : Equation1737 G) : Equation1733 G := λ x y z => h x y y z
theorem Equation1741_implies_Equation1730 (G : Type*) [Magma G] (h : Equation1741 G) : Equation1730 G := λ x y z => h x y y z
theorem Equation1745_implies_Equation1733 (G : Type*) [Magma G] (h : Equation1745 G) : Equation1733 G := λ x y z => h x y y z
theorem Equation1749_implies_Equation1733 (G : Type*) [Magma G] (h : Equation1749 G) : Equation1733 G := λ x y z => h x y y z
theorem Equation1750_implies_Equation1734 (G : Type*) [Magma G] (h : Equation1750 G) : Equation1734 G := λ x y z => h x y y z
theorem Equation1751_implies_Equation1735 (G : Type*) [Magma G] (h : Equation1751 G) : Equation1735 G := λ x y z => h x y y z
theorem Equation1752_implies_Equation1735 (G : Type*) [Magma G] (h : Equation1752 G) : Equation1735 G := λ x y z => h x y y z
theorem Equation1753_implies_Equation1736 (G : Type*) [Magma G] (h : Equation1753 G) : Equation1736 G := λ x y z => h x y y z
theorem Equation1758_implies_Equation1720 (G : Type*) [Magma G] (h : Equation1758 G) : Equation1720 G := λ x y z => h x y y z
theorem Equation1762_implies_Equation1723 (G : Type*) [Magma G] (h : Equation1762 G) : Equation1723 G := λ x y z => h x y y z
theorem Equation1766_implies_Equation1723 (G : Type*) [Magma G] (h : Equation1766 G) : Equation1723 G := λ x y z => h x y y z
theorem Equation1767_implies_Equation1724 (G : Type*) [Magma G] (h : Equation1767 G) : Equation1724 G := λ x y z => h x y y z
theorem Equation1768_implies_Equation1725 (G : Type*) [Magma G] (h : Equation1768 G) : Equation1725 G := λ x y z => h x y y z
theorem Equation1769_implies_Equation1725 (G : Type*) [Magma G] (h : Equation1769 G) : Equation1725 G := λ x y z => h x y y z
theorem Equation1770_implies_Equation1726 (G : Type*) [Magma G] (h : Equation1770 G) : Equation1726 G := λ x y z => h x y y z
theorem Equation1775_implies_Equation1730 (G : Type*) [Magma G] (h : Equation1775 G) : Equation1730 G := λ x y z => h x y y z
theorem Equation1779_implies_Equation1733 (G : Type*) [Magma G] (h : Equation1779 G) : Equation1733 G := λ x y z => h x y y z
theorem Equation1783_implies_Equation1733 (G : Type*) [Magma G] (h : Equation1783 G) : Equation1733 G := λ x y z => h x y y z
theorem Equation1784_implies_Equation1734 (G : Type*) [Magma G] (h : Equation1784 G) : Equation1734 G := λ x y z => h x y y z
theorem Equation1785_implies_Equation1735 (G : Type*) [Magma G] (h : Equation1785 G) : Equation1735 G := λ x y z => h x y y z
theorem Equation1786_implies_Equation1735 (G : Type*) [Magma G] (h : Equation1786 G) : Equation1735 G := λ x y z => h x y y z
theorem Equation1787_implies_Equation1736 (G : Type*) [Magma G] (h : Equation1787 G) : Equation1736 G := λ x y z => h x y y z
theorem Equation1792_implies_Equation1730 (G : Type*) [Magma G] (h : Equation1792 G) : Equation1730 G := λ x y z => h x y y z
theorem Equation1796_implies_Equation1733 (G : Type*) [Magma G] (h : Equation1796 G) : Equation1733 G := λ x y z => h x y y z
theorem Equation1800_implies_Equation1733 (G : Type*) [Magma G] (h : Equation1800 G) : Equation1733 G := λ x y z => h x y y z
theorem Equation1801_implies_Equation1734 (G : Type*) [Magma G] (h : Equation1801 G) : Equation1734 G := λ x y z => h x y y z
theorem Equation1802_implies_Equation1735 (G : Type*) [Magma G] (h : Equation1802 G) : Equation1735 G := λ x y z => h x y y z
theorem Equation1803_implies_Equation1735 (G : Type*) [Magma G] (h : Equation1803 G) : Equation1735 G := λ x y z => h x y y z
theorem Equation1804_implies_Equation1736 (G : Type*) [Magma G] (h : Equation1804 G) : Equation1736 G := λ x y z => h x y y z
theorem Equation1806_implies_Equation1738 (G : Type*) [Magma G] (h : Equation1806 G) : Equation1738 G := λ x y z => h x y y z
theorem Equation1807_implies_Equation1739 (G : Type*) [Magma G] (h : Equation1807 G) : Equation1739 G := λ x y z => h x y y z
theorem Equation1808_implies_Equation1739 (G : Type*) [Magma G] (h : Equation1808 G) : Equation1739 G := λ x y z => h x y y z
theorem Equation1809_implies_Equation1740 (G : Type*) [Magma G] (h : Equation1809 G) : Equation1740 G := λ x y z => h x y y z
theorem Equation1811_implies_Equation1742 (G : Type*) [Magma G] (h : Equation1811 G) : Equation1742 G := λ x y z => h x y y z
theorem Equation1812_implies_Equation1743 (G : Type*) [Magma G] (h : Equation1812 G) : Equation1743 G := λ x y z => h x y y z
theorem Equation1813_implies_Equation1743 (G : Type*) [Magma G] (h : Equation1813 G) : Equation1743 G := λ x y z => h x y y z
theorem Equation1814_implies_Equation1744 (G : Type*) [Magma G] (h : Equation1814 G) : Equation1744 G := λ x y z => h x y y z
theorem Equation1816_implies_Equation1742 (G : Type*) [Magma G] (h : Equation1816 G) : Equation1742 G := λ x y z => h x y y z
theorem Equation1817_implies_Equation1743 (G : Type*) [Magma G] (h : Equation1817 G) : Equation1743 G := λ x y z => h x y y z
theorem Equation1818_implies_Equation1743 (G : Type*) [Magma G] (h : Equation1818 G) : Equation1743 G := λ x y z => h x y y z
theorem Equation1819_implies_Equation1744 (G : Type*) [Magma G] (h : Equation1819 G) : Equation1744 G := λ x y z => h x y y z
theorem Equation1821_implies_Equation1746 (G : Type*) [Magma G] (h : Equation1821 G) : Equation1746 G := λ x y z => h x y y z
theorem Equation1822_implies_Equation1747 (G : Type*) [Magma G] (h : Equation1822 G) : Equation1747 G := λ x y z => h x y y z
theorem Equation1823_implies_Equation1747 (G : Type*) [Magma G] (h : Equation1823 G) : Equation1747 G := λ x y z => h x y y z
theorem Equation1824_implies_Equation1748 (G : Type*) [Magma G] (h : Equation1824 G) : Equation1748 G := λ x y z => h x y y z
theorem Equation1846_implies_Equation1842 (G : Type*) [Magma G] (h : Equation1846 G) : Equation1842 G := λ x y z => h x y y z
theorem Equation1856_implies_Equation1852 (G : Type*) [Magma G] (h : Equation1856 G) : Equation1852 G := λ x y z => h x y y z
theorem Equation1866_implies_Equation1862 (G : Type*) [Magma G] (h : Equation1866 G) : Equation1862 G := λ x y z => h x y y z
theorem Equation1870_implies_Equation1859 (G : Type*) [Magma G] (h : Equation1870 G) : Equation1859 G := λ x y z => h x y y z
theorem Equation1874_implies_Equation1862 (G : Type*) [Magma G] (h : Equation1874 G) : Equation1862 G := λ x y z => h x y y z
theorem Equation1878_implies_Equation1862 (G : Type*) [Magma G] (h : Equation1878 G) : Equation1862 G := λ x y z => h x y y z
theorem Equation1879_implies_Equation1863 (G : Type*) [Magma G] (h : Equation1879 G) : Equation1863 G := λ x y z => h x y y z
theorem Equation1880_implies_Equation1864 (G : Type*) [Magma G] (h : Equation1880 G) : Equation1864 G := λ x y z => h x y y z
theorem Equation1881_implies_Equation1864 (G : Type*) [Magma G] (h : Equation1881 G) : Equation1864 G := λ x y z => h x y y z
theorem Equation1882_implies_Equation1865 (G : Type*) [Magma G] (h : Equation1882 G) : Equation1865 G := λ x y z => h x y y z
theorem Equation1893_implies_Equation1889 (G : Type*) [Magma G] (h : Equation1893 G) : Equation1889 G := λ x y z => h x y y z
theorem Equation1903_implies_Equation1899 (G : Type*) [Magma G] (h : Equation1903 G) : Equation1899 G := λ x y z => h x y y z
theorem Equation1907_implies_Equation1896 (G : Type*) [Magma G] (h : Equation1907 G) : Equation1896 G := λ x y z => h x y y z
theorem Equation1911_implies_Equation1899 (G : Type*) [Magma G] (h : Equation1911 G) : Equation1899 G := λ x y z => h x y y z
theorem Equation1915_implies_Equation1899 (G : Type*) [Magma G] (h : Equation1915 G) : Equation1899 G := λ x y z => h x y y z
theorem Equation1916_implies_Equation1900 (G : Type*) [Magma G] (h : Equation1916 G) : Equation1900 G := λ x y z => h x y y z
theorem Equation1917_implies_Equation1901 (G : Type*) [Magma G] (h : Equation1917 G) : Equation1901 G := λ x y z => h x y y z
theorem Equation1918_implies_Equation1901 (G : Type*) [Magma G] (h : Equation1918 G) : Equation1901 G := λ x y z => h x y y z
theorem Equation1919_implies_Equation1902 (G : Type*) [Magma G] (h : Equation1919 G) : Equation1902 G := λ x y z => h x y y z
theorem Equation1930_implies_Equation1926 (G : Type*) [Magma G] (h : Equation1930 G) : Equation1926 G := λ x y z => h x y y z
theorem Equation1940_implies_Equation1936 (G : Type*) [Magma G] (h : Equation1940 G) : Equation1936 G := λ x y z => h x y y z
theorem Equation1944_implies_Equation1933 (G : Type*) [Magma G] (h : Equation1944 G) : Equation1933 G := λ x y z => h x y y z
theorem Equation1948_implies_Equation1936 (G : Type*) [Magma G] (h : Equation1948 G) : Equation1936 G := λ x y z => h x y y z
theorem Equation1952_implies_Equation1936 (G : Type*) [Magma G] (h : Equation1952 G) : Equation1936 G := λ x y z => h x y y z
theorem Equation1953_implies_Equation1937 (G : Type*) [Magma G] (h : Equation1953 G) : Equation1937 G := λ x y z => h x y y z
theorem Equation1954_implies_Equation1938 (G : Type*) [Magma G] (h : Equation1954 G) : Equation1938 G := λ x y z => h x y y z
theorem Equation1955_implies_Equation1938 (G : Type*) [Magma G] (h : Equation1955 G) : Equation1938 G := λ x y z => h x y y z
theorem Equation1956_implies_Equation1939 (G : Type*) [Magma G] (h : Equation1956 G) : Equation1939 G := λ x y z => h x y y z
theorem Equation1961_implies_Equation1923 (G : Type*) [Magma G] (h : Equation1961 G) : Equation1923 G := λ x y z => h x y y z
theorem Equation1965_implies_Equation1926 (G : Type*) [Magma G] (h : Equation1965 G) : Equation1926 G := λ x y z => h x y y z
theorem Equation1969_implies_Equation1926 (G : Type*) [Magma G] (h : Equation1969 G) : Equation1926 G := λ x y z => h x y y z
theorem Equation1970_implies_Equation1927 (G : Type*) [Magma G] (h : Equation1970 G) : Equation1927 G := λ x y z => h x y y z
theorem Equation1971_implies_Equation1928 (G : Type*) [Magma G] (h : Equation1971 G) : Equation1928 G := λ x y z => h x y y z
theorem Equation1972_implies_Equation1928 (G : Type*) [Magma G] (h : Equation1972 G) : Equation1928 G := λ x y z => h x y y z
theorem Equation1973_implies_Equation1929 (G : Type*) [Magma G] (h : Equation1973 G) : Equation1929 G := λ x y z => h x y y z
theorem Equation1978_implies_Equation1933 (G : Type*) [Magma G] (h : Equation1978 G) : Equation1933 G := λ x y z => h x y y z
theorem Equation1982_implies_Equation1936 (G : Type*) [Magma G] (h : Equation1982 G) : Equation1936 G := λ x y z => h x y y z
theorem Equation1986_implies_Equation1936 (G : Type*) [Magma G] (h : Equation1986 G) : Equation1936 G := λ x y z => h x y y z
theorem Equation1987_implies_Equation1937 (G : Type*) [Magma G] (h : Equation1987 G) : Equation1937 G := λ x y z => h x y y z
theorem Equation1988_implies_Equation1938 (G : Type*) [Magma G] (h : Equation1988 G) : Equation1938 G := λ x y z => h x y y z
theorem Equation1989_implies_Equation1938 (G : Type*) [Magma G] (h : Equation1989 G) : Equation1938 G := λ x y z => h x y y z
theorem Equation1990_implies_Equation1939 (G : Type*) [Magma G] (h : Equation1990 G) : Equation1939 G := λ x y z => h x y y z
theorem Equation1995_implies_Equation1933 (G : Type*) [Magma G] (h : Equation1995 G) : Equation1933 G := λ x y z => h x y y z
theorem Equation1999_implies_Equation1936 (G : Type*) [Magma G] (h : Equation1999 G) : Equation1936 G := λ x y z => h x y y z
theorem Equation2003_implies_Equation1936 (G : Type*) [Magma G] (h : Equation2003 G) : Equation1936 G := λ x y z => h x y y z
theorem Equation2004_implies_Equation1937 (G : Type*) [Magma G] (h : Equation2004 G) : Equation1937 G := λ x y z => h x y y z
theorem Equation2005_implies_Equation1938 (G : Type*) [Magma G] (h : Equation2005 G) : Equation1938 G := λ x y z => h x y y z
theorem Equation2006_implies_Equation1938 (G : Type*) [Magma G] (h : Equation2006 G) : Equation1938 G := λ x y z => h x y y z
theorem Equation2007_implies_Equation1939 (G : Type*) [Magma G] (h : Equation2007 G) : Equation1939 G := λ x y z => h x y y z
theorem Equation2009_implies_Equation1941 (G : Type*) [Magma G] (h : Equation2009 G) : Equation1941 G := λ x y z => h x y y z
theorem Equation2010_implies_Equation1942 (G : Type*) [Magma G] (h : Equation2010 G) : Equation1942 G := λ x y z => h x y y z
theorem Equation2011_implies_Equation1942 (G : Type*) [Magma G] (h : Equation2011 G) : Equation1942 G := λ x y z => h x y y z
theorem Equation2012_implies_Equation1943 (G : Type*) [Magma G] (h : Equation2012 G) : Equation1943 G := λ x y z => h x y y z
theorem Equation2014_implies_Equation1945 (G : Type*) [Magma G] (h : Equation2014 G) : Equation1945 G := λ x y z => h x y y z
theorem Equation2015_implies_Equation1946 (G : Type*) [Magma G] (h : Equation2015 G) : Equation1946 G := λ x y z => h x y y z
theorem Equation2016_implies_Equation1946 (G : Type*) [Magma G] (h : Equation2016 G) : Equation1946 G := λ x y z => h x y y z
theorem Equation2017_implies_Equation1947 (G : Type*) [Magma G] (h : Equation2017 G) : Equation1947 G := λ x y z => h x y y z
theorem Equation2019_implies_Equation1945 (G : Type*) [Magma G] (h : Equation2019 G) : Equation1945 G := λ x y z => h x y y z
theorem Equation2020_implies_Equation1946 (G : Type*) [Magma G] (h : Equation2020 G) : Equation1946 G := λ x y z => h x y y z
theorem Equation2021_implies_Equation1946 (G : Type*) [Magma G] (h : Equation2021 G) : Equation1946 G := λ x y z => h x y y z
theorem Equation2022_implies_Equation1947 (G : Type*) [Magma G] (h : Equation2022 G) : Equation1947 G := λ x y z => h x y y z
theorem Equation2024_implies_Equation1949 (G : Type*) [Magma G] (h : Equation2024 G) : Equation1949 G := λ x y z => h x y y z
theorem Equation2025_implies_Equation1950 (G : Type*) [Magma G] (h : Equation2025 G) : Equation1950 G := λ x y z => h x y y z
theorem Equation2026_implies_Equation1950 (G : Type*) [Magma G] (h : Equation2026 G) : Equation1950 G := λ x y z => h x y y z
theorem Equation2027_implies_Equation1951 (G : Type*) [Magma G] (h : Equation2027 G) : Equation1951 G := λ x y z => h x y y z
theorem Equation2049_implies_Equation2045 (G : Type*) [Magma G] (h : Equation2049 G) : Equation2045 G := λ x y z => h x y y z
theorem Equation2059_implies_Equation2055 (G : Type*) [Magma G] (h : Equation2059 G) : Equation2055 G := λ x y z => h x y y z
theorem Equation2069_implies_Equation2065 (G : Type*) [Magma G] (h : Equation2069 G) : Equation2065 G := λ x y z => h x y y z
theorem Equation2073_implies_Equation2062 (G : Type*) [Magma G] (h : Equation2073 G) : Equation2062 G := λ x y z => h x y y z
theorem Equation2077_implies_Equation2065 (G : Type*) [Magma G] (h : Equation2077 G) : Equation2065 G := λ x y z => h x y y z
theorem Equation2081_implies_Equation2065 (G : Type*) [Magma G] (h : Equation2081 G) : Equation2065 G := λ x y z => h x y y z
theorem Equation2082_implies_Equation2066 (G : Type*) [Magma G] (h : Equation2082 G) : Equation2066 G := λ x y z => h x y y z
theorem Equation2083_implies_Equation2067 (G : Type*) [Magma G] (h : Equation2083 G) : Equation2067 G := λ x y z => h x y y z
theorem Equation2084_implies_Equation2067 (G : Type*) [Magma G] (h : Equation2084 G) : Equation2067 G := λ x y z => h x y y z
theorem Equation2085_implies_Equation2068 (G : Type*) [Magma G] (h : Equation2085 G) : Equation2068 G := λ x y z => h x y y z
theorem Equation2096_implies_Equation2092 (G : Type*) [Magma G] (h : Equation2096 G) : Equation2092 G := λ x y z => h x y y z
theorem Equation2106_implies_Equation2102 (G : Type*) [Magma G] (h : Equation2106 G) : Equation2102 G := λ x y z => h x y y z
theorem Equation2110_implies_Equation2099 (G : Type*) [Magma G] (h : Equation2110 G) : Equation2099 G := λ x y z => h x y y z
theorem Equation2114_implies_Equation2102 (G : Type*) [Magma G] (h : Equation2114 G) : Equation2102 G := λ x y z => h x y y z
theorem Equation2118_implies_Equation2102 (G : Type*) [Magma G] (h : Equation2118 G) : Equation2102 G := λ x y z => h x y y z
theorem Equation2119_implies_Equation2103 (G : Type*) [Magma G] (h : Equation2119 G) : Equation2103 G := λ x y z => h x y y z
theorem Equation2120_implies_Equation2104 (G : Type*) [Magma G] (h : Equation2120 G) : Equation2104 G := λ x y z => h x y y z
theorem Equation2121_implies_Equation2104 (G : Type*) [Magma G] (h : Equation2121 G) : Equation2104 G := λ x y z => h x y y z
theorem Equation2122_implies_Equation2105 (G : Type*) [Magma G] (h : Equation2122 G) : Equation2105 G := λ x y z => h x y y z
theorem Equation2133_implies_Equation2129 (G : Type*) [Magma G] (h : Equation2133 G) : Equation2129 G := λ x y z => h x y y z
theorem Equation2143_implies_Equation2139 (G : Type*) [Magma G] (h : Equation2143 G) : Equation2139 G := λ x y z => h x y y z
theorem Equation2147_implies_Equation2136 (G : Type*) [Magma G] (h : Equation2147 G) : Equation2136 G := λ x y z => h x y y z
theorem Equation2151_implies_Equation2139 (G : Type*) [Magma G] (h : Equation2151 G) : Equation2139 G := λ x y z => h x y y z
theorem Equation2155_implies_Equation2139 (G : Type*) [Magma G] (h : Equation2155 G) : Equation2139 G := λ x y z => h x y y z
theorem Equation2156_implies_Equation2140 (G : Type*) [Magma G] (h : Equation2156 G) : Equation2140 G := λ x y z => h x y y z
theorem Equation2157_implies_Equation2141 (G : Type*) [Magma G] (h : Equation2157 G) : Equation2141 G := λ x y z => h x y y z
theorem Equation2158_implies_Equation2141 (G : Type*) [Magma G] (h : Equation2158 G) : Equation2141 G := λ x y z => h x y y z
theorem Equation2159_implies_Equation2142 (G : Type*) [Magma G] (h : Equation2159 G) : Equation2142 G := λ x y z => h x y y z
theorem Equation2164_implies_Equation2126 (G : Type*) [Magma G] (h : Equation2164 G) : Equation2126 G := λ x y z => h x y y z
theorem Equation2168_implies_Equation2129 (G : Type*) [Magma G] (h : Equation2168 G) : Equation2129 G := λ x y z => h x y y z
theorem Equation2172_implies_Equation2129 (G : Type*) [Magma G] (h : Equation2172 G) : Equation2129 G := λ x y z => h x y y z
theorem Equation2173_implies_Equation2130 (G : Type*) [Magma G] (h : Equation2173 G) : Equation2130 G := λ x y z => h x y y z
theorem Equation2174_implies_Equation2131 (G : Type*) [Magma G] (h : Equation2174 G) : Equation2131 G := λ x y z => h x y y z
theorem Equation2175_implies_Equation2131 (G : Type*) [Magma G] (h : Equation2175 G) : Equation2131 G := λ x y z => h x y y z
theorem Equation2176_implies_Equation2132 (G : Type*) [Magma G] (h : Equation2176 G) : Equation2132 G := λ x y z => h x y y z
theorem Equation2181_implies_Equation2136 (G : Type*) [Magma G] (h : Equation2181 G) : Equation2136 G := λ x y z => h x y y z
theorem Equation2185_implies_Equation2139 (G : Type*) [Magma G] (h : Equation2185 G) : Equation2139 G := λ x y z => h x y y z
theorem Equation2189_implies_Equation2139 (G : Type*) [Magma G] (h : Equation2189 G) : Equation2139 G := λ x y z => h x y y z
theorem Equation2190_implies_Equation2140 (G : Type*) [Magma G] (h : Equation2190 G) : Equation2140 G := λ x y z => h x y y z
theorem Equation2191_implies_Equation2141 (G : Type*) [Magma G] (h : Equation2191 G) : Equation2141 G := λ x y z => h x y y z
theorem Equation2192_implies_Equation2141 (G : Type*) [Magma G] (h : Equation2192 G) : Equation2141 G := λ x y z => h x y y z
theorem Equation2193_implies_Equation2142 (G : Type*) [Magma G] (h : Equation2193 G) : Equation2142 G := λ x y z => h x y y z
theorem Equation2198_implies_Equation2136 (G : Type*) [Magma G] (h : Equation2198 G) : Equation2136 G := λ x y z => h x y y z
theorem Equation2202_implies_Equation2139 (G : Type*) [Magma G] (h : Equation2202 G) : Equation2139 G := λ x y z => h x y y z
theorem Equation2206_implies_Equation2139 (G : Type*) [Magma G] (h : Equation2206 G) : Equation2139 G := λ x y z => h x y y z
theorem Equation2207_implies_Equation2140 (G : Type*) [Magma G] (h : Equation2207 G) : Equation2140 G := λ x y z => h x y y z
theorem Equation2208_implies_Equation2141 (G : Type*) [Magma G] (h : Equation2208 G) : Equation2141 G := λ x y z => h x y y z
theorem Equation2209_implies_Equation2141 (G : Type*) [Magma G] (h : Equation2209 G) : Equation2141 G := λ x y z => h x y y z
theorem Equation2210_implies_Equation2142 (G : Type*) [Magma G] (h : Equation2210 G) : Equation2142 G := λ x y z => h x y y z
theorem Equation2212_implies_Equation2144 (G : Type*) [Magma G] (h : Equation2212 G) : Equation2144 G := λ x y z => h x y y z
theorem Equation2213_implies_Equation2145 (G : Type*) [Magma G] (h : Equation2213 G) : Equation2145 G := λ x y z => h x y y z
theorem Equation2214_implies_Equation2145 (G : Type*) [Magma G] (h : Equation2214 G) : Equation2145 G := λ x y z => h x y y z
theorem Equation2215_implies_Equation2146 (G : Type*) [Magma G] (h : Equation2215 G) : Equation2146 G := λ x y z => h x y y z
theorem Equation2217_implies_Equation2148 (G : Type*) [Magma G] (h : Equation2217 G) : Equation2148 G := λ x y z => h x y y z
theorem Equation2218_implies_Equation2149 (G : Type*) [Magma G] (h : Equation2218 G) : Equation2149 G := λ x y z => h x y y z
theorem Equation2219_implies_Equation2149 (G : Type*) [Magma G] (h : Equation2219 G) : Equation2149 G := λ x y z => h x y y z
theorem Equation2220_implies_Equation2150 (G : Type*) [Magma G] (h : Equation2220 G) : Equation2150 G := λ x y z => h x y y z
theorem Equation2222_implies_Equation2148 (G : Type*) [Magma G] (h : Equation2222 G) : Equation2148 G := λ x y z => h x y y z
theorem Equation2223_implies_Equation2149 (G : Type*) [Magma G] (h : Equation2223 G) : Equation2149 G := λ x y z => h x y y z
theorem Equation2224_implies_Equation2149 (G : Type*) [Magma G] (h : Equation2224 G) : Equation2149 G := λ x y z => h x y y z
theorem Equation2225_implies_Equation2150 (G : Type*) [Magma G] (h : Equation2225 G) : Equation2150 G := λ x y z => h x y y z
theorem Equation2227_implies_Equation2152 (G : Type*) [Magma G] (h : Equation2227 G) : Equation2152 G := λ x y z => h x y y z
theorem Equation2228_implies_Equation2153 (G : Type*) [Magma G] (h : Equation2228 G) : Equation2153 G := λ x y z => h x y y z
theorem Equation2229_implies_Equation2153 (G : Type*) [Magma G] (h : Equation2229 G) : Equation2153 G := λ x y z => h x y y z
theorem Equation2230_implies_Equation2154 (G : Type*) [Magma G] (h : Equation2230 G) : Equation2154 G := λ x y z => h x y y z
theorem Equation2252_implies_Equation2248 (G : Type*) [Magma G] (h : Equation2252 G) : Equation2248 G := λ x y z => h x y y z
theorem Equation2262_implies_Equation2258 (G : Type*) [Magma G] (h : Equation2262 G) : Equation2258 G := λ x y z => h x y y z
theorem Equation2272_implies_Equation2268 (G : Type*) [Magma G] (h : Equation2272 G) : Equation2268 G := λ x y z => h x y y z
theorem Equation2276_implies_Equation2265 (G : Type*) [Magma G] (h : Equation2276 G) : Equation2265 G := λ x y z => h x y y z
theorem Equation2280_implies_Equation2268 (G : Type*) [Magma G] (h : Equation2280 G) : Equation2268 G := λ x y z => h x y y z
theorem Equation2284_implies_Equation2268 (G : Type*) [Magma G] (h : Equation2284 G) : Equation2268 G := λ x y z => h x y y z
theorem Equation2285_implies_Equation2269 (G : Type*) [Magma G] (h : Equation2285 G) : Equation2269 G := λ x y z => h x y y z
theorem Equation2286_implies_Equation2270 (G : Type*) [Magma G] (h : Equation2286 G) : Equation2270 G := λ x y z => h x y y z
theorem Equation2287_implies_Equation2270 (G : Type*) [Magma G] (h : Equation2287 G) : Equation2270 G := λ x y z => h x y y z
theorem Equation2288_implies_Equation2271 (G : Type*) [Magma G] (h : Equation2288 G) : Equation2271 G := λ x y z => h x y y z
theorem Equation2299_implies_Equation2295 (G : Type*) [Magma G] (h : Equation2299 G) : Equation2295 G := λ x y z => h x y y z
theorem Equation2309_implies_Equation2305 (G : Type*) [Magma G] (h : Equation2309 G) : Equation2305 G := λ x y z => h x y y z
theorem Equation2313_implies_Equation2302 (G : Type*) [Magma G] (h : Equation2313 G) : Equation2302 G := λ x y z => h x y y z
theorem Equation2317_implies_Equation2305 (G : Type*) [Magma G] (h : Equation2317 G) : Equation2305 G := λ x y z => h x y y z
theorem Equation2321_implies_Equation2305 (G : Type*) [Magma G] (h : Equation2321 G) : Equation2305 G := λ x y z => h x y y z
theorem Equation2322_implies_Equation2306 (G : Type*) [Magma G] (h : Equation2322 G) : Equation2306 G := λ x y z => h x y y z
theorem Equation2323_implies_Equation2307 (G : Type*) [Magma G] (h : Equation2323 G) : Equation2307 G := λ x y z => h x y y z
theorem Equation2324_implies_Equation2307 (G : Type*) [Magma G] (h : Equation2324 G) : Equation2307 G := λ x y z => h x y y z
theorem Equation2325_implies_Equation2308 (G : Type*) [Magma G] (h : Equation2325 G) : Equation2308 G := λ x y z => h x y y z
theorem Equation2336_implies_Equation2332 (G : Type*) [Magma G] (h : Equation2336 G) : Equation2332 G := λ x y z => h x y y z
theorem Equation2346_implies_Equation2342 (G : Type*) [Magma G] (h : Equation2346 G) : Equation2342 G := λ x y z => h x y y z
theorem Equation2350_implies_Equation2339 (G : Type*) [Magma G] (h : Equation2350 G) : Equation2339 G := λ x y z => h x y y z
theorem Equation2354_implies_Equation2342 (G : Type*) [Magma G] (h : Equation2354 G) : Equation2342 G := λ x y z => h x y y z
theorem Equation2358_implies_Equation2342 (G : Type*) [Magma G] (h : Equation2358 G) : Equation2342 G := λ x y z => h x y y z
theorem Equation2359_implies_Equation2343 (G : Type*) [Magma G] (h : Equation2359 G) : Equation2343 G := λ x y z => h x y y z
theorem Equation2360_implies_Equation2344 (G : Type*) [Magma G] (h : Equation2360 G) : Equation2344 G := λ x y z => h x y y z
theorem Equation2361_implies_Equation2344 (G : Type*) [Magma G] (h : Equation2361 G) : Equation2344 G := λ x y z => h x y y z
theorem Equation2362_implies_Equation2345 (G : Type*) [Magma G] (h : Equation2362 G) : Equation2345 G := λ x y z => h x y y z
theorem Equation2367_implies_Equation2329 (G : Type*) [Magma G] (h : Equation2367 G) : Equation2329 G := λ x y z => h x y y z
theorem Equation2371_implies_Equation2332 (G : Type*) [Magma G] (h : Equation2371 G) : Equation2332 G := λ x y z => h x y y z
theorem Equation2375_implies_Equation2332 (G : Type*) [Magma G] (h : Equation2375 G) : Equation2332 G := λ x y z => h x y y z
theorem Equation2376_implies_Equation2333 (G : Type*) [Magma G] (h : Equation2376 G) : Equation2333 G := λ x y z => h x y y z
theorem Equation2377_implies_Equation2334 (G : Type*) [Magma G] (h : Equation2377 G) : Equation2334 G := λ x y z => h x y y z
theorem Equation2378_implies_Equation2334 (G : Type*) [Magma G] (h : Equation2378 G) : Equation2334 G := λ x y z => h x y y z
theorem Equation2379_implies_Equation2335 (G : Type*) [Magma G] (h : Equation2379 G) : Equation2335 G := λ x y z => h x y y z
theorem Equation2384_implies_Equation2339 (G : Type*) [Magma G] (h : Equation2384 G) : Equation2339 G := λ x y z => h x y y z
theorem Equation2388_implies_Equation2342 (G : Type*) [Magma G] (h : Equation2388 G) : Equation2342 G := λ x y z => h x y y z
theorem Equation2392_implies_Equation2342 (G : Type*) [Magma G] (h : Equation2392 G) : Equation2342 G := λ x y z => h x y y z
theorem Equation2393_implies_Equation2343 (G : Type*) [Magma G] (h : Equation2393 G) : Equation2343 G := λ x y z => h x y y z
theorem Equation2394_implies_Equation2344 (G : Type*) [Magma G] (h : Equation2394 G) : Equation2344 G := λ x y z => h x y y z
theorem Equation2395_implies_Equation2344 (G : Type*) [Magma G] (h : Equation2395 G) : Equation2344 G := λ x y z => h x y y z
theorem Equation2396_implies_Equation2345 (G : Type*) [Magma G] (h : Equation2396 G) : Equation2345 G := λ x y z => h x y y z
theorem Equation2401_implies_Equation2339 (G : Type*) [Magma G] (h : Equation2401 G) : Equation2339 G := λ x y z => h x y y z
theorem Equation2405_implies_Equation2342 (G : Type*) [Magma G] (h : Equation2405 G) : Equation2342 G := λ x y z => h x y y z
theorem Equation2409_implies_Equation2342 (G : Type*) [Magma G] (h : Equation2409 G) : Equation2342 G := λ x y z => h x y y z
theorem Equation2410_implies_Equation2343 (G : Type*) [Magma G] (h : Equation2410 G) : Equation2343 G := λ x y z => h x y y z
theorem Equation2411_implies_Equation2344 (G : Type*) [Magma G] (h : Equation2411 G) : Equation2344 G := λ x y z => h x y y z
theorem Equation2412_implies_Equation2344 (G : Type*) [Magma G] (h : Equation2412 G) : Equation2344 G := λ x y z => h x y y z
theorem Equation2413_implies_Equation2345 (G : Type*) [Magma G] (h : Equation2413 G) : Equation2345 G := λ x y z => h x y y z
theorem Equation2415_implies_Equation2347 (G : Type*) [Magma G] (h : Equation2415 G) : Equation2347 G := λ x y z => h x y y z
theorem Equation2416_implies_Equation2348 (G : Type*) [Magma G] (h : Equation2416 G) : Equation2348 G := λ x y z => h x y y z
theorem Equation2417_implies_Equation2348 (G : Type*) [Magma G] (h : Equation2417 G) : Equation2348 G := λ x y z => h x y y z
theorem Equation2418_implies_Equation2349 (G : Type*) [Magma G] (h : Equation2418 G) : Equation2349 G := λ x y z => h x y y z
theorem Equation2420_implies_Equation2351 (G : Type*) [Magma G] (h : Equation2420 G) : Equation2351 G := λ x y z => h x y y z
theorem Equation2421_implies_Equation2352 (G : Type*) [Magma G] (h : Equation2421 G) : Equation2352 G := λ x y z => h x y y z
theorem Equation2422_implies_Equation2352 (G : Type*) [Magma G] (h : Equation2422 G) : Equation2352 G := λ x y z => h x y y z
theorem Equation2423_implies_Equation2353 (G : Type*) [Magma G] (h : Equation2423 G) : Equation2353 G := λ x y z => h x y y z
theorem Equation2425_implies_Equation2351 (G : Type*) [Magma G] (h : Equation2425 G) : Equation2351 G := λ x y z => h x y y z
theorem Equation2426_implies_Equation2352 (G : Type*) [Magma G] (h : Equation2426 G) : Equation2352 G := λ x y z => h x y y z
theorem Equation2427_implies_Equation2352 (G : Type*) [Magma G] (h : Equation2427 G) : Equation2352 G := λ x y z => h x y y z
theorem Equation2428_implies_Equation2353 (G : Type*) [Magma G] (h : Equation2428 G) : Equation2353 G := λ x y z => h x y y z
theorem Equation2430_implies_Equation2355 (G : Type*) [Magma G] (h : Equation2430 G) : Equation2355 G := λ x y z => h x y y z
theorem Equation2431_implies_Equation2356 (G : Type*) [Magma G] (h : Equation2431 G) : Equation2356 G := λ x y z => h x y y z
theorem Equation2432_implies_Equation2356 (G : Type*) [Magma G] (h : Equation2432 G) : Equation2356 G := λ x y z => h x y y z
theorem Equation2433_implies_Equation2357 (G : Type*) [Magma G] (h : Equation2433 G) : Equation2357 G := λ x y z => h x y y z
theorem Equation2455_implies_Equation2451 (G : Type*) [Magma G] (h : Equation2455 G) : Equation2451 G := λ x y z => h x y y z
theorem Equation2465_implies_Equation2461 (G : Type*) [Magma G] (h : Equation2465 G) : Equation2461 G := λ x y z => h x y y z
theorem Equation2475_implies_Equation2471 (G : Type*) [Magma G] (h : Equation2475 G) : Equation2471 G := λ x y z => h x y y z
theorem Equation2479_implies_Equation2468 (G : Type*) [Magma G] (h : Equation2479 G) : Equation2468 G := λ x y z => h x y y z
theorem Equation2483_implies_Equation2471 (G : Type*) [Magma G] (h : Equation2483 G) : Equation2471 G := λ x y z => h x y y z
theorem Equation2487_implies_Equation2471 (G : Type*) [Magma G] (h : Equation2487 G) : Equation2471 G := λ x y z => h x y y z
theorem Equation2488_implies_Equation2472 (G : Type*) [Magma G] (h : Equation2488 G) : Equation2472 G := λ x y z => h x y y z
theorem Equation2489_implies_Equation2473 (G : Type*) [Magma G] (h : Equation2489 G) : Equation2473 G := λ x y z => h x y y z
theorem Equation2490_implies_Equation2473 (G : Type*) [Magma G] (h : Equation2490 G) : Equation2473 G := λ x y z => h x y y z
theorem Equation2491_implies_Equation2474 (G : Type*) [Magma G] (h : Equation2491 G) : Equation2474 G := λ x y z => h x y y z
theorem Equation2502_implies_Equation2498 (G : Type*) [Magma G] (h : Equation2502 G) : Equation2498 G := λ x y z => h x y y z
theorem Equation2512_implies_Equation2508 (G : Type*) [Magma G] (h : Equation2512 G) : Equation2508 G := λ x y z => h x y y z
theorem Equation2516_implies_Equation2505 (G : Type*) [Magma G] (h : Equation2516 G) : Equation2505 G := λ x y z => h x y y z
theorem Equation2520_implies_Equation2508 (G : Type*) [Magma G] (h : Equation2520 G) : Equation2508 G := λ x y z => h x y y z
theorem Equation2524_implies_Equation2508 (G : Type*) [Magma G] (h : Equation2524 G) : Equation2508 G := λ x y z => h x y y z
theorem Equation2525_implies_Equation2509 (G : Type*) [Magma G] (h : Equation2525 G) : Equation2509 G := λ x y z => h x y y z
theorem Equation2526_implies_Equation2510 (G : Type*) [Magma G] (h : Equation2526 G) : Equation2510 G := λ x y z => h x y y z
theorem Equation2527_implies_Equation2510 (G : Type*) [Magma G] (h : Equation2527 G) : Equation2510 G := λ x y z => h x y y z
theorem Equation2528_implies_Equation2511 (G : Type*) [Magma G] (h : Equation2528 G) : Equation2511 G := λ x y z => h x y y z
theorem Equation2539_implies_Equation2535 (G : Type*) [Magma G] (h : Equation2539 G) : Equation2535 G := λ x y z => h x y y z
theorem Equation2549_implies_Equation2545 (G : Type*) [Magma G] (h : Equation2549 G) : Equation2545 G := λ x y z => h x y y z
theorem Equation2553_implies_Equation2542 (G : Type*) [Magma G] (h : Equation2553 G) : Equation2542 G := λ x y z => h x y y z
theorem Equation2557_implies_Equation2545 (G : Type*) [Magma G] (h : Equation2557 G) : Equation2545 G := λ x y z => h x y y z
theorem Equation2561_implies_Equation2545 (G : Type*) [Magma G] (h : Equation2561 G) : Equation2545 G := λ x y z => h x y y z
theorem Equation2562_implies_Equation2546 (G : Type*) [Magma G] (h : Equation2562 G) : Equation2546 G := λ x y z => h x y y z
theorem Equation2563_implies_Equation2547 (G : Type*) [Magma G] (h : Equation2563 G) : Equation2547 G := λ x y z => h x y y z
theorem Equation2564_implies_Equation2547 (G : Type*) [Magma G] (h : Equation2564 G) : Equation2547 G := λ x y z => h x y y z
theorem Equation2565_implies_Equation2548 (G : Type*) [Magma G] (h : Equation2565 G) : Equation2548 G := λ x y z => h x y y z
theorem Equation2570_implies_Equation2532 (G : Type*) [Magma G] (h : Equation2570 G) : Equation2532 G := λ x y z => h x y y z
theorem Equation2574_implies_Equation2535 (G : Type*) [Magma G] (h : Equation2574 G) : Equation2535 G := λ x y z => h x y y z
theorem Equation2578_implies_Equation2535 (G : Type*) [Magma G] (h : Equation2578 G) : Equation2535 G := λ x y z => h x y y z
theorem Equation2579_implies_Equation2536 (G : Type*) [Magma G] (h : Equation2579 G) : Equation2536 G := λ x y z => h x y y z
theorem Equation2580_implies_Equation2537 (G : Type*) [Magma G] (h : Equation2580 G) : Equation2537 G := λ x y z => h x y y z
theorem Equation2581_implies_Equation2537 (G : Type*) [Magma G] (h : Equation2581 G) : Equation2537 G := λ x y z => h x y y z
theorem Equation2582_implies_Equation2538 (G : Type*) [Magma G] (h : Equation2582 G) : Equation2538 G := λ x y z => h x y y z
theorem Equation2587_implies_Equation2542 (G : Type*) [Magma G] (h : Equation2587 G) : Equation2542 G := λ x y z => h x y y z
theorem Equation2591_implies_Equation2545 (G : Type*) [Magma G] (h : Equation2591 G) : Equation2545 G := λ x y z => h x y y z
theorem Equation2595_implies_Equation2545 (G : Type*) [Magma G] (h : Equation2595 G) : Equation2545 G := λ x y z => h x y y z
theorem Equation2596_implies_Equation2546 (G : Type*) [Magma G] (h : Equation2596 G) : Equation2546 G := λ x y z => h x y y z
theorem Equation2597_implies_Equation2547 (G : Type*) [Magma G] (h : Equation2597 G) : Equation2547 G := λ x y z => h x y y z
theorem Equation2598_implies_Equation2547 (G : Type*) [Magma G] (h : Equation2598 G) : Equation2547 G := λ x y z => h x y y z
theorem Equation2599_implies_Equation2548 (G : Type*) [Magma G] (h : Equation2599 G) : Equation2548 G := λ x y z => h x y y z
theorem Equation2604_implies_Equation2542 (G : Type*) [Magma G] (h : Equation2604 G) : Equation2542 G := λ x y z => h x y y z
theorem Equation2608_implies_Equation2545 (G : Type*) [Magma G] (h : Equation2608 G) : Equation2545 G := λ x y z => h x y y z
theorem Equation2612_implies_Equation2545 (G : Type*) [Magma G] (h : Equation2612 G) : Equation2545 G := λ x y z => h x y y z
theorem Equation2613_implies_Equation2546 (G : Type*) [Magma G] (h : Equation2613 G) : Equation2546 G := λ x y z => h x y y z
theorem Equation2614_implies_Equation2547 (G : Type*) [Magma G] (h : Equation2614 G) : Equation2547 G := λ x y z => h x y y z
theorem Equation2615_implies_Equation2547 (G : Type*) [Magma G] (h : Equation2615 G) : Equation2547 G := λ x y z => h x y y z
theorem Equation2616_implies_Equation2548 (G : Type*) [Magma G] (h : Equation2616 G) : Equation2548 G := λ x y z => h x y y z
theorem Equation2618_implies_Equation2550 (G : Type*) [Magma G] (h : Equation2618 G) : Equation2550 G := λ x y z => h x y y z
theorem Equation2619_implies_Equation2551 (G : Type*) [Magma G] (h : Equation2619 G) : Equation2551 G := λ x y z => h x y y z
theorem Equation2620_implies_Equation2551 (G : Type*) [Magma G] (h : Equation2620 G) : Equation2551 G := λ x y z => h x y y z
theorem Equation2621_implies_Equation2552 (G : Type*) [Magma G] (h : Equation2621 G) : Equation2552 G := λ x y z => h x y y z
theorem Equation2623_implies_Equation2554 (G : Type*) [Magma G] (h : Equation2623 G) : Equation2554 G := λ x y z => h x y y z
theorem Equation2624_implies_Equation2555 (G : Type*) [Magma G] (h : Equation2624 G) : Equation2555 G := λ x y z => h x y y z
theorem Equation2625_implies_Equation2555 (G : Type*) [Magma G] (h : Equation2625 G) : Equation2555 G := λ x y z => h x y y z
theorem Equation2626_implies_Equation2556 (G : Type*) [Magma G] (h : Equation2626 G) : Equation2556 G := λ x y z => h x y y z
theorem Equation2628_implies_Equation2554 (G : Type*) [Magma G] (h : Equation2628 G) : Equation2554 G := λ x y z => h x y y z
theorem Equation2629_implies_Equation2555 (G : Type*) [Magma G] (h : Equation2629 G) : Equation2555 G := λ x y z => h x y y z
theorem Equation2630_implies_Equation2555 (G : Type*) [Magma G] (h : Equation2630 G) : Equation2555 G := λ x y z => h x y y z
theorem Equation2631_implies_Equation2556 (G : Type*) [Magma G] (h : Equation2631 G) : Equation2556 G := λ x y z => h x y y z
theorem Equation2633_implies_Equation2558 (G : Type*) [Magma G] (h : Equation2633 G) : Equation2558 G := λ x y z => h x y y z
theorem Equation2634_implies_Equation2559 (G : Type*) [Magma G] (h : Equation2634 G) : Equation2559 G := λ x y z => h x y y z
theorem Equation2635_implies_Equation2559 (G : Type*) [Magma G] (h : Equation2635 G) : Equation2559 G := λ x y z => h x y y z
theorem Equation2636_implies_Equation2560 (G : Type*) [Magma G] (h : Equation2636 G) : Equation2560 G := λ x y z => h x y y z
theorem Equation2658_implies_Equation2654 (G : Type*) [Magma G] (h : Equation2658 G) : Equation2654 G := λ x y z => h x y y z
theorem Equation2668_implies_Equation2664 (G : Type*) [Magma G] (h : Equation2668 G) : Equation2664 G := λ x y z => h x y y z
theorem Equation2678_implies_Equation2674 (G : Type*) [Magma G] (h : Equation2678 G) : Equation2674 G := λ x y z => h x y y z
theorem Equation2682_implies_Equation2671 (G : Type*) [Magma G] (h : Equation2682 G) : Equation2671 G := λ x y z => h x y y z
theorem Equation2686_implies_Equation2674 (G : Type*) [Magma G] (h : Equation2686 G) : Equation2674 G := λ x y z => h x y y z
theorem Equation2690_implies_Equation2674 (G : Type*) [Magma G] (h : Equation2690 G) : Equation2674 G := λ x y z => h x y y z
theorem Equation2691_implies_Equation2675 (G : Type*) [Magma G] (h : Equation2691 G) : Equation2675 G := λ x y z => h x y y z
theorem Equation2692_implies_Equation2676 (G : Type*) [Magma G] (h : Equation2692 G) : Equation2676 G := λ x y z => h x y y z
theorem Equation2693_implies_Equation2676 (G : Type*) [Magma G] (h : Equation2693 G) : Equation2676 G := λ x y z => h x y y z
theorem Equation2694_implies_Equation2677 (G : Type*) [Magma G] (h : Equation2694 G) : Equation2677 G := λ x y z => h x y y z
theorem Equation2705_implies_Equation2701 (G : Type*) [Magma G] (h : Equation2705 G) : Equation2701 G := λ x y z => h x y y z
theorem Equation2715_implies_Equation2711 (G : Type*) [Magma G] (h : Equation2715 G) : Equation2711 G := λ x y z => h x y y z
theorem Equation2719_implies_Equation2708 (G : Type*) [Magma G] (h : Equation2719 G) : Equation2708 G := λ x y z => h x y y z
theorem Equation2723_implies_Equation2711 (G : Type*) [Magma G] (h : Equation2723 G) : Equation2711 G := λ x y z => h x y y z
theorem Equation2727_implies_Equation2711 (G : Type*) [Magma G] (h : Equation2727 G) : Equation2711 G := λ x y z => h x y y z
theorem Equation2728_implies_Equation2712 (G : Type*) [Magma G] (h : Equation2728 G) : Equation2712 G := λ x y z => h x y y z
theorem Equation2729_implies_Equation2713 (G : Type*) [Magma G] (h : Equation2729 G) : Equation2713 G := λ x y z => h x y y z
theorem Equation2730_implies_Equation2713 (G : Type*) [Magma G] (h : Equation2730 G) : Equation2713 G := λ x y z => h x y y z
theorem Equation2731_implies_Equation2714 (G : Type*) [Magma G] (h : Equation2731 G) : Equation2714 G := λ x y z => h x y y z
theorem Equation2742_implies_Equation2738 (G : Type*) [Magma G] (h : Equation2742 G) : Equation2738 G := λ x y z => h x y y z
theorem Equation2752_implies_Equation2748 (G : Type*) [Magma G] (h : Equation2752 G) : Equation2748 G := λ x y z => h x y y z
theorem Equation2756_implies_Equation2745 (G : Type*) [Magma G] (h : Equation2756 G) : Equation2745 G := λ x y z => h x y y z
theorem Equation2760_implies_Equation2748 (G : Type*) [Magma G] (h : Equation2760 G) : Equation2748 G := λ x y z => h x y y z
theorem Equation2764_implies_Equation2748 (G : Type*) [Magma G] (h : Equation2764 G) : Equation2748 G := λ x y z => h x y y z
theorem Equation2765_implies_Equation2749 (G : Type*) [Magma G] (h : Equation2765 G) : Equation2749 G := λ x y z => h x y y z
theorem Equation2766_implies_Equation2750 (G : Type*) [Magma G] (h : Equation2766 G) : Equation2750 G := λ x y z => h x y y z
theorem Equation2767_implies_Equation2750 (G : Type*) [Magma G] (h : Equation2767 G) : Equation2750 G := λ x y z => h x y y z
theorem Equation2768_implies_Equation2751 (G : Type*) [Magma G] (h : Equation2768 G) : Equation2751 G := λ x y z => h x y y z
theorem Equation2773_implies_Equation2735 (G : Type*) [Magma G] (h : Equation2773 G) : Equation2735 G := λ x y z => h x y y z
theorem Equation2777_implies_Equation2738 (G : Type*) [Magma G] (h : Equation2777 G) : Equation2738 G := λ x y z => h x y y z
theorem Equation2781_implies_Equation2738 (G : Type*) [Magma G] (h : Equation2781 G) : Equation2738 G := λ x y z => h x y y z
theorem Equation2782_implies_Equation2739 (G : Type*) [Magma G] (h : Equation2782 G) : Equation2739 G := λ x y z => h x y y z
theorem Equation2783_implies_Equation2740 (G : Type*) [Magma G] (h : Equation2783 G) : Equation2740 G := λ x y z => h x y y z
theorem Equation2784_implies_Equation2740 (G : Type*) [Magma G] (h : Equation2784 G) : Equation2740 G := λ x y z => h x y y z
theorem Equation2785_implies_Equation2741 (G : Type*) [Magma G] (h : Equation2785 G) : Equation2741 G := λ x y z => h x y y z
theorem Equation2790_implies_Equation2745 (G : Type*) [Magma G] (h : Equation2790 G) : Equation2745 G := λ x y z => h x y y z
theorem Equation2794_implies_Equation2748 (G : Type*) [Magma G] (h : Equation2794 G) : Equation2748 G := λ x y z => h x y y z
theorem Equation2798_implies_Equation2748 (G : Type*) [Magma G] (h : Equation2798 G) : Equation2748 G := λ x y z => h x y y z
theorem Equation2799_implies_Equation2749 (G : Type*) [Magma G] (h : Equation2799 G) : Equation2749 G := λ x y z => h x y y z
theorem Equation2800_implies_Equation2750 (G : Type*) [Magma G] (h : Equation2800 G) : Equation2750 G := λ x y z => h x y y z
theorem Equation2801_implies_Equation2750 (G : Type*) [Magma G] (h : Equation2801 G) : Equation2750 G := λ x y z => h x y y z
theorem Equation2802_implies_Equation2751 (G : Type*) [Magma G] (h : Equation2802 G) : Equation2751 G := λ x y z => h x y y z
theorem Equation2807_implies_Equation2745 (G : Type*) [Magma G] (h : Equation2807 G) : Equation2745 G := λ x y z => h x y y z
theorem Equation2811_implies_Equation2748 (G : Type*) [Magma G] (h : Equation2811 G) : Equation2748 G := λ x y z => h x y y z
theorem Equation2815_implies_Equation2748 (G : Type*) [Magma G] (h : Equation2815 G) : Equation2748 G := λ x y z => h x y y z
theorem Equation2816_implies_Equation2749 (G : Type*) [Magma G] (h : Equation2816 G) : Equation2749 G := λ x y z => h x y y z
theorem Equation2817_implies_Equation2750 (G : Type*) [Magma G] (h : Equation2817 G) : Equation2750 G := λ x y z => h x y y z
theorem Equation2818_implies_Equation2750 (G : Type*) [Magma G] (h : Equation2818 G) : Equation2750 G := λ x y z => h x y y z
theorem Equation2819_implies_Equation2751 (G : Type*) [Magma G] (h : Equation2819 G) : Equation2751 G := λ x y z => h x y y z
theorem Equation2821_implies_Equation2753 (G : Type*) [Magma G] (h : Equation2821 G) : Equation2753 G := λ x y z => h x y y z
theorem Equation2822_implies_Equation2754 (G : Type*) [Magma G] (h : Equation2822 G) : Equation2754 G := λ x y z => h x y y z
theorem Equation2823_implies_Equation2754 (G : Type*) [Magma G] (h : Equation2823 G) : Equation2754 G := λ x y z => h x y y z
theorem Equation2824_implies_Equation2755 (G : Type*) [Magma G] (h : Equation2824 G) : Equation2755 G := λ x y z => h x y y z
theorem Equation2826_implies_Equation2757 (G : Type*) [Magma G] (h : Equation2826 G) : Equation2757 G := λ x y z => h x y y z
theorem Equation2827_implies_Equation2758 (G : Type*) [Magma G] (h : Equation2827 G) : Equation2758 G := λ x y z => h x y y z
theorem Equation2828_implies_Equation2758 (G : Type*) [Magma G] (h : Equation2828 G) : Equation2758 G := λ x y z => h x y y z
theorem Equation2829_implies_Equation2759 (G : Type*) [Magma G] (h : Equation2829 G) : Equation2759 G := λ x y z => h x y y z
theorem Equation2831_implies_Equation2757 (G : Type*) [Magma G] (h : Equation2831 G) : Equation2757 G := λ x y z => h x y y z
theorem Equation2832_implies_Equation2758 (G : Type*) [Magma G] (h : Equation2832 G) : Equation2758 G := λ x y z => h x y y z
theorem Equation2833_implies_Equation2758 (G : Type*) [Magma G] (h : Equation2833 G) : Equation2758 G := λ x y z => h x y y z
theorem Equation2834_implies_Equation2759 (G : Type*) [Magma G] (h : Equation2834 G) : Equation2759 G := λ x y z => h x y y z
theorem Equation2836_implies_Equation2761 (G : Type*) [Magma G] (h : Equation2836 G) : Equation2761 G := λ x y z => h x y y z
theorem Equation2837_implies_Equation2762 (G : Type*) [Magma G] (h : Equation2837 G) : Equation2762 G := λ x y z => h x y y z
theorem Equation2838_implies_Equation2762 (G : Type*) [Magma G] (h : Equation2838 G) : Equation2762 G := λ x y z => h x y y z
theorem Equation2839_implies_Equation2763 (G : Type*) [Magma G] (h : Equation2839 G) : Equation2763 G := λ x y z => h x y y z
theorem Equation2861_implies_Equation2857 (G : Type*) [Magma G] (h : Equation2861 G) : Equation2857 G := λ x y z => h x y y z
theorem Equation2871_implies_Equation2867 (G : Type*) [Magma G] (h : Equation2871 G) : Equation2867 G := λ x y z => h x y y z
theorem Equation2881_implies_Equation2877 (G : Type*) [Magma G] (h : Equation2881 G) : Equation2877 G := λ x y z => h x y y z
theorem Equation2885_implies_Equation2874 (G : Type*) [Magma G] (h : Equation2885 G) : Equation2874 G := λ x y z => h x y y z
theorem Equation2889_implies_Equation2877 (G : Type*) [Magma G] (h : Equation2889 G) : Equation2877 G := λ x y z => h x y y z
theorem Equation2893_implies_Equation2877 (G : Type*) [Magma G] (h : Equation2893 G) : Equation2877 G := λ x y z => h x y y z
theorem Equation2894_implies_Equation2878 (G : Type*) [Magma G] (h : Equation2894 G) : Equation2878 G := λ x y z => h x y y z
theorem Equation2895_implies_Equation2879 (G : Type*) [Magma G] (h : Equation2895 G) : Equation2879 G := λ x y z => h x y y z
theorem Equation2896_implies_Equation2879 (G : Type*) [Magma G] (h : Equation2896 G) : Equation2879 G := λ x y z => h x y y z
theorem Equation2897_implies_Equation2880 (G : Type*) [Magma G] (h : Equation2897 G) : Equation2880 G := λ x y z => h x y y z
theorem Equation2908_implies_Equation2904 (G : Type*) [Magma G] (h : Equation2908 G) : Equation2904 G := λ x y z => h x y y z
theorem Equation2918_implies_Equation2914 (G : Type*) [Magma G] (h : Equation2918 G) : Equation2914 G := λ x y z => h x y y z
theorem Equation2922_implies_Equation2911 (G : Type*) [Magma G] (h : Equation2922 G) : Equation2911 G := λ x y z => h x y y z
theorem Equation2926_implies_Equation2914 (G : Type*) [Magma G] (h : Equation2926 G) : Equation2914 G := λ x y z => h x y y z
theorem Equation2930_implies_Equation2914 (G : Type*) [Magma G] (h : Equation2930 G) : Equation2914 G := λ x y z => h x y y z
theorem Equation2931_implies_Equation2915 (G : Type*) [Magma G] (h : Equation2931 G) : Equation2915 G := λ x y z => h x y y z
theorem Equation2932_implies_Equation2916 (G : Type*) [Magma G] (h : Equation2932 G) : Equation2916 G := λ x y z => h x y y z
theorem Equation2933_implies_Equation2916 (G : Type*) [Magma G] (h : Equation2933 G) : Equation2916 G := λ x y z => h x y y z
theorem Equation2934_implies_Equation2917 (G : Type*) [Magma G] (h : Equation2934 G) : Equation2917 G := λ x y z => h x y y z
theorem Equation2945_implies_Equation2941 (G : Type*) [Magma G] (h : Equation2945 G) : Equation2941 G := λ x y z => h x y y z
theorem Equation2955_implies_Equation2951 (G : Type*) [Magma G] (h : Equation2955 G) : Equation2951 G := λ x y z => h x y y z
theorem Equation2959_implies_Equation2948 (G : Type*) [Magma G] (h : Equation2959 G) : Equation2948 G := λ x y z => h x y y z
theorem Equation2963_implies_Equation2951 (G : Type*) [Magma G] (h : Equation2963 G) : Equation2951 G := λ x y z => h x y y z
theorem Equation2967_implies_Equation2951 (G : Type*) [Magma G] (h : Equation2967 G) : Equation2951 G := λ x y z => h x y y z
theorem Equation2968_implies_Equation2952 (G : Type*) [Magma G] (h : Equation2968 G) : Equation2952 G := λ x y z => h x y y z
theorem Equation2969_implies_Equation2953 (G : Type*) [Magma G] (h : Equation2969 G) : Equation2953 G := λ x y z => h x y y z
theorem Equation2970_implies_Equation2953 (G : Type*) [Magma G] (h : Equation2970 G) : Equation2953 G := λ x y z => h x y y z
theorem Equation2971_implies_Equation2954 (G : Type*) [Magma G] (h : Equation2971 G) : Equation2954 G := λ x y z => h x y y z
theorem Equation2976_implies_Equation2938 (G : Type*) [Magma G] (h : Equation2976 G) : Equation2938 G := λ x y z => h x y y z
theorem Equation2980_implies_Equation2941 (G : Type*) [Magma G] (h : Equation2980 G) : Equation2941 G := λ x y z => h x y y z
theorem Equation2984_implies_Equation2941 (G : Type*) [Magma G] (h : Equation2984 G) : Equation2941 G := λ x y z => h x y y z
theorem Equation2985_implies_Equation2942 (G : Type*) [Magma G] (h : Equation2985 G) : Equation2942 G := λ x y z => h x y y z
theorem Equation2986_implies_Equation2943 (G : Type*) [Magma G] (h : Equation2986 G) : Equation2943 G := λ x y z => h x y y z
theorem Equation2987_implies_Equation2943 (G : Type*) [Magma G] (h : Equation2987 G) : Equation2943 G := λ x y z => h x y y z
theorem Equation2988_implies_Equation2944 (G : Type*) [Magma G] (h : Equation2988 G) : Equation2944 G := λ x y z => h x y y z
theorem Equation2993_implies_Equation2948 (G : Type*) [Magma G] (h : Equation2993 G) : Equation2948 G := λ x y z => h x y y z
theorem Equation2997_implies_Equation2951 (G : Type*) [Magma G] (h : Equation2997 G) : Equation2951 G := λ x y z => h x y y z
theorem Equation3001_implies_Equation2951 (G : Type*) [Magma G] (h : Equation3001 G) : Equation2951 G := λ x y z => h x y y z
theorem Equation3002_implies_Equation2952 (G : Type*) [Magma G] (h : Equation3002 G) : Equation2952 G := λ x y z => h x y y z
theorem Equation3003_implies_Equation2953 (G : Type*) [Magma G] (h : Equation3003 G) : Equation2953 G := λ x y z => h x y y z
theorem Equation3004_implies_Equation2953 (G : Type*) [Magma G] (h : Equation3004 G) : Equation2953 G := λ x y z => h x y y z
theorem Equation3005_implies_Equation2954 (G : Type*) [Magma G] (h : Equation3005 G) : Equation2954 G := λ x y z => h x y y z
theorem Equation3010_implies_Equation2948 (G : Type*) [Magma G] (h : Equation3010 G) : Equation2948 G := λ x y z => h x y y z
theorem Equation3014_implies_Equation2951 (G : Type*) [Magma G] (h : Equation3014 G) : Equation2951 G := λ x y z => h x y y z
theorem Equation3018_implies_Equation2951 (G : Type*) [Magma G] (h : Equation3018 G) : Equation2951 G := λ x y z => h x y y z
theorem Equation3019_implies_Equation2952 (G : Type*) [Magma G] (h : Equation3019 G) : Equation2952 G := λ x y z => h x y y z
theorem Equation3020_implies_Equation2953 (G : Type*) [Magma G] (h : Equation3020 G) : Equation2953 G := λ x y z => h x y y z
theorem Equation3021_implies_Equation2953 (G : Type*) [Magma G] (h : Equation3021 G) : Equation2953 G := λ x y z => h x y y z
theorem Equation3022_implies_Equation2954 (G : Type*) [Magma G] (h : Equation3022 G) : Equation2954 G := λ x y z => h x y y z
theorem Equation3024_implies_Equation2956 (G : Type*) [Magma G] (h : Equation3024 G) : Equation2956 G := λ x y z => h x y y z
theorem Equation3025_implies_Equation2957 (G : Type*) [Magma G] (h : Equation3025 G) : Equation2957 G := λ x y z => h x y y z
theorem Equation3026_implies_Equation2957 (G : Type*) [Magma G] (h : Equation3026 G) : Equation2957 G := λ x y z => h x y y z
theorem Equation3027_implies_Equation2958 (G : Type*) [Magma G] (h : Equation3027 G) : Equation2958 G := λ x y z => h x y y z
theorem Equation3029_implies_Equation2960 (G : Type*) [Magma G] (h : Equation3029 G) : Equation2960 G := λ x y z => h x y y z
theorem Equation3030_implies_Equation2961 (G : Type*) [Magma G] (h : Equation3030 G) : Equation2961 G := λ x y z => h x y y z
theorem Equation3031_implies_Equation2961 (G : Type*) [Magma G] (h : Equation3031 G) : Equation2961 G := λ x y z => h x y y z
theorem Equation3032_implies_Equation2962 (G : Type*) [Magma G] (h : Equation3032 G) : Equation2962 G := λ x y z => h x y y z
theorem Equation3034_implies_Equation2960 (G : Type*) [Magma G] (h : Equation3034 G) : Equation2960 G := λ x y z => h x y y z
theorem Equation3035_implies_Equation2961 (G : Type*) [Magma G] (h : Equation3035 G) : Equation2961 G := λ x y z => h x y y z
theorem Equation3036_implies_Equation2961 (G : Type*) [Magma G] (h : Equation3036 G) : Equation2961 G := λ x y z => h x y y z
theorem Equation3037_implies_Equation2962 (G : Type*) [Magma G] (h : Equation3037 G) : Equation2962 G := λ x y z => h x y y z
theorem Equation3039_implies_Equation2964 (G : Type*) [Magma G] (h : Equation3039 G) : Equation2964 G := λ x y z => h x y y z
theorem Equation3040_implies_Equation2965 (G : Type*) [Magma G] (h : Equation3040 G) : Equation2965 G := λ x y z => h x y y z
theorem Equation3041_implies_Equation2965 (G : Type*) [Magma G] (h : Equation3041 G) : Equation2965 G := λ x y z => h x y y z
theorem Equation3042_implies_Equation2966 (G : Type*) [Magma G] (h : Equation3042 G) : Equation2966 G := λ x y z => h x y y z
theorem Equation3064_implies_Equation3060 (G : Type*) [Magma G] (h : Equation3064 G) : Equation3060 G := λ x y z => h x y y z
theorem Equation3074_implies_Equation3070 (G : Type*) [Magma G] (h : Equation3074 G) : Equation3070 G := λ x y z => h x y y z
theorem Equation3084_implies_Equation3080 (G : Type*) [Magma G] (h : Equation3084 G) : Equation3080 G := λ x y z => h x y y z
theorem Equation3088_implies_Equation3077 (G : Type*) [Magma G] (h : Equation3088 G) : Equation3077 G := λ x y z => h x y y z
theorem Equation3092_implies_Equation3080 (G : Type*) [Magma G] (h : Equation3092 G) : Equation3080 G := λ x y z => h x y y z
theorem Equation3096_implies_Equation3080 (G : Type*) [Magma G] (h : Equation3096 G) : Equation3080 G := λ x y z => h x y y z
theorem Equation3097_implies_Equation3081 (G : Type*) [Magma G] (h : Equation3097 G) : Equation3081 G := λ x y z => h x y y z
theorem Equation3098_implies_Equation3082 (G : Type*) [Magma G] (h : Equation3098 G) : Equation3082 G := λ x y z => h x y y z
theorem Equation3099_implies_Equation3082 (G : Type*) [Magma G] (h : Equation3099 G) : Equation3082 G := λ x y z => h x y y z
theorem Equation3100_implies_Equation3083 (G : Type*) [Magma G] (h : Equation3100 G) : Equation3083 G := λ x y z => h x y y z
theorem Equation3111_implies_Equation3107 (G : Type*) [Magma G] (h : Equation3111 G) : Equation3107 G := λ x y z => h x y y z
theorem Equation3121_implies_Equation3117 (G : Type*) [Magma G] (h : Equation3121 G) : Equation3117 G := λ x y z => h x y y z
theorem Equation3125_implies_Equation3114 (G : Type*) [Magma G] (h : Equation3125 G) : Equation3114 G := λ x y z => h x y y z
theorem Equation3129_implies_Equation3117 (G : Type*) [Magma G] (h : Equation3129 G) : Equation3117 G := λ x y z => h x y y z
theorem Equation3133_implies_Equation3117 (G : Type*) [Magma G] (h : Equation3133 G) : Equation3117 G := λ x y z => h x y y z
theorem Equation3134_implies_Equation3118 (G : Type*) [Magma G] (h : Equation3134 G) : Equation3118 G := λ x y z => h x y y z
theorem Equation3135_implies_Equation3119 (G : Type*) [Magma G] (h : Equation3135 G) : Equation3119 G := λ x y z => h x y y z
theorem Equation3136_implies_Equation3119 (G : Type*) [Magma G] (h : Equation3136 G) : Equation3119 G := λ x y z => h x y y z
theorem Equation3137_implies_Equation3120 (G : Type*) [Magma G] (h : Equation3137 G) : Equation3120 G := λ x y z => h x y y z
theorem Equation3148_implies_Equation3144 (G : Type*) [Magma G] (h : Equation3148 G) : Equation3144 G := λ x y z => h x y y z
theorem Equation3158_implies_Equation3154 (G : Type*) [Magma G] (h : Equation3158 G) : Equation3154 G := λ x y z => h x y y z
theorem Equation3162_implies_Equation3151 (G : Type*) [Magma G] (h : Equation3162 G) : Equation3151 G := λ x y z => h x y y z
theorem Equation3166_implies_Equation3154 (G : Type*) [Magma G] (h : Equation3166 G) : Equation3154 G := λ x y z => h x y y z
theorem Equation3170_implies_Equation3154 (G : Type*) [Magma G] (h : Equation3170 G) : Equation3154 G := λ x y z => h x y y z
theorem Equation3171_implies_Equation3155 (G : Type*) [Magma G] (h : Equation3171 G) : Equation3155 G := λ x y z => h x y y z
theorem Equation3172_implies_Equation3156 (G : Type*) [Magma G] (h : Equation3172 G) : Equation3156 G := λ x y z => h x y y z
theorem Equation3173_implies_Equation3156 (G : Type*) [Magma G] (h : Equation3173 G) : Equation3156 G := λ x y z => h x y y z
theorem Equation3174_implies_Equation3157 (G : Type*) [Magma G] (h : Equation3174 G) : Equation3157 G := λ x y z => h x y y z
theorem Equation3179_implies_Equation3141 (G : Type*) [Magma G] (h : Equation3179 G) : Equation3141 G := λ x y z => h x y y z
theorem Equation3183_implies_Equation3144 (G : Type*) [Magma G] (h : Equation3183 G) : Equation3144 G := λ x y z => h x y y z
theorem Equation3187_implies_Equation3144 (G : Type*) [Magma G] (h : Equation3187 G) : Equation3144 G := λ x y z => h x y y z
theorem Equation3188_implies_Equation3145 (G : Type*) [Magma G] (h : Equation3188 G) : Equation3145 G := λ x y z => h x y y z
theorem Equation3189_implies_Equation3146 (G : Type*) [Magma G] (h : Equation3189 G) : Equation3146 G := λ x y z => h x y y z
theorem Equation3190_implies_Equation3146 (G : Type*) [Magma G] (h : Equation3190 G) : Equation3146 G := λ x y z => h x y y z
theorem Equation3191_implies_Equation3147 (G : Type*) [Magma G] (h : Equation3191 G) : Equation3147 G := λ x y z => h x y y z
theorem Equation3196_implies_Equation3151 (G : Type*) [Magma G] (h : Equation3196 G) : Equation3151 G := λ x y z => h x y y z
theorem Equation3200_implies_Equation3154 (G : Type*) [Magma G] (h : Equation3200 G) : Equation3154 G := λ x y z => h x y y z
theorem Equation3204_implies_Equation3154 (G : Type*) [Magma G] (h : Equation3204 G) : Equation3154 G := λ x y z => h x y y z
theorem Equation3205_implies_Equation3155 (G : Type*) [Magma G] (h : Equation3205 G) : Equation3155 G := λ x y z => h x y y z
theorem Equation3206_implies_Equation3156 (G : Type*) [Magma G] (h : Equation3206 G) : Equation3156 G := λ x y z => h x y y z
theorem Equation3207_implies_Equation3156 (G : Type*) [Magma G] (h : Equation3207 G) : Equation3156 G := λ x y z => h x y y z
theorem Equation3208_implies_Equation3157 (G : Type*) [Magma G] (h : Equation3208 G) : Equation3157 G := λ x y z => h x y y z
theorem Equation3213_implies_Equation3151 (G : Type*) [Magma G] (h : Equation3213 G) : Equation3151 G := λ x y z => h x y y z
theorem Equation3217_implies_Equation3154 (G : Type*) [Magma G] (h : Equation3217 G) : Equation3154 G := λ x y z => h x y y z
theorem Equation3221_implies_Equation3154 (G : Type*) [Magma G] (h : Equation3221 G) : Equation3154 G := λ x y z => h x y y z
theorem Equation3222_implies_Equation3155 (G : Type*) [Magma G] (h : Equation3222 G) : Equation3155 G := λ x y z => h x y y z
theorem Equation3223_implies_Equation3156 (G : Type*) [Magma G] (h : Equation3223 G) : Equation3156 G := λ x y z => h x y y z
theorem Equation3224_implies_Equation3156 (G : Type*) [Magma G] (h : Equation3224 G) : Equation3156 G := λ x y z => h x y y z
theorem Equation3225_implies_Equation3157 (G : Type*) [Magma G] (h : Equation3225 G) : Equation3157 G := λ x y z => h x y y z
theorem Equation3227_implies_Equation3159 (G : Type*) [Magma G] (h : Equation3227 G) : Equation3159 G := λ x y z => h x y y z
theorem Equation3228_implies_Equation3160 (G : Type*) [Magma G] (h : Equation3228 G) : Equation3160 G := λ x y z => h x y y z
theorem Equation3229_implies_Equation3160 (G : Type*) [Magma G] (h : Equation3229 G) : Equation3160 G := λ x y z => h x y y z
theorem Equation3230_implies_Equation3161 (G : Type*) [Magma G] (h : Equation3230 G) : Equation3161 G := λ x y z => h x y y z
theorem Equation3232_implies_Equation3163 (G : Type*) [Magma G] (h : Equation3232 G) : Equation3163 G := λ x y z => h x y y z
theorem Equation3233_implies_Equation3164 (G : Type*) [Magma G] (h : Equation3233 G) : Equation3164 G := λ x y z => h x y y z
theorem Equation3234_implies_Equation3164 (G : Type*) [Magma G] (h : Equation3234 G) : Equation3164 G := λ x y z => h x y y z
theorem Equation3235_implies_Equation3165 (G : Type*) [Magma G] (h : Equation3235 G) : Equation3165 G := λ x y z => h x y y z
theorem Equation3237_implies_Equation3163 (G : Type*) [Magma G] (h : Equation3237 G) : Equation3163 G := λ x y z => h x y y z
theorem Equation3238_implies_Equation3164 (G : Type*) [Magma G] (h : Equation3238 G) : Equation3164 G := λ x y z => h x y y z
theorem Equation3239_implies_Equation3164 (G : Type*) [Magma G] (h : Equation3239 G) : Equation3164 G := λ x y z => h x y y z
theorem Equation3240_implies_Equation3165 (G : Type*) [Magma G] (h : Equation3240 G) : Equation3165 G := λ x y z => h x y y z
theorem Equation3242_implies_Equation3167 (G : Type*) [Magma G] (h : Equation3242 G) : Equation3167 G := λ x y z => h x y y z
theorem Equation3243_implies_Equation3168 (G : Type*) [Magma G] (h : Equation3243 G) : Equation3168 G := λ x y z => h x y y z
theorem Equation3244_implies_Equation3168 (G : Type*) [Magma G] (h : Equation3244 G) : Equation3168 G := λ x y z => h x y y z
theorem Equation3245_implies_Equation3169 (G : Type*) [Magma G] (h : Equation3245 G) : Equation3169 G := λ x y z => h x y y z
theorem Equation3267_implies_Equation3263 (G : Type*) [Magma G] (h : Equation3267 G) : Equation3263 G := λ x y z => h x y y z
theorem Equation3277_implies_Equation3273 (G : Type*) [Magma G] (h : Equation3277 G) : Equation3273 G := λ x y z => h x y y z
theorem Equation3287_implies_Equation3283 (G : Type*) [Magma G] (h : Equation3287 G) : Equation3283 G := λ x y z => h x y y z
theorem Equation3291_implies_Equation3280 (G : Type*) [Magma G] (h : Equation3291 G) : Equation3280 G := λ x y z => h x y y z
theorem Equation3295_implies_Equation3283 (G : Type*) [Magma G] (h : Equation3295 G) : Equation3283 G := λ x y z => h x y y z
theorem Equation3299_implies_Equation3283 (G : Type*) [Magma G] (h : Equation3299 G) : Equation3283 G := λ x y z => h x y y z
theorem Equation3300_implies_Equation3284 (G : Type*) [Magma G] (h : Equation3300 G) : Equation3284 G := λ x y z => h x y y z
theorem Equation3301_implies_Equation3285 (G : Type*) [Magma G] (h : Equation3301 G) : Equation3285 G := λ x y z => h x y y z
theorem Equation3302_implies_Equation3285 (G : Type*) [Magma G] (h : Equation3302 G) : Equation3285 G := λ x y z => h x y y z
theorem Equation3303_implies_Equation3286 (G : Type*) [Magma G] (h : Equation3303 G) : Equation3286 G := λ x y z => h x y y z
theorem Equation3314_implies_Equation3310 (G : Type*) [Magma G] (h : Equation3314 G) : Equation3310 G := λ x y z => h x y y z
theorem Equation3324_implies_Equation3320 (G : Type*) [Magma G] (h : Equation3324 G) : Equation3320 G := λ x y z => h x y y z
theorem Equation3328_implies_Equation3317 (G : Type*) [Magma G] (h : Equation3328 G) : Equation3317 G := λ x y z => h x y y z
theorem Equation3332_implies_Equation3320 (G : Type*) [Magma G] (h : Equation3332 G) : Equation3320 G := λ x y z => h x y y z
theorem Equation3336_implies_Equation3320 (G : Type*) [Magma G] (h : Equation3336 G) : Equation3320 G := λ x y z => h x y y z
theorem Equation3337_implies_Equation3321 (G : Type*) [Magma G] (h : Equation3337 G) : Equation3321 G := λ x y z => h x y y z
theorem Equation3338_implies_Equation3322 (G : Type*) [Magma G] (h : Equation3338 G) : Equation3322 G := λ x y z => h x y y z
theorem Equation3339_implies_Equation3322 (G : Type*) [Magma G] (h : Equation3339 G) : Equation3322 G := λ x y z => h x y y z
theorem Equation3340_implies_Equation3323 (G : Type*) [Magma G] (h : Equation3340 G) : Equation3323 G := λ x y z => h x y y z
theorem Equation3351_implies_Equation3347 (G : Type*) [Magma G] (h : Equation3351 G) : Equation3347 G := λ x y z => h x y y z
theorem Equation3361_implies_Equation3357 (G : Type*) [Magma G] (h : Equation3361 G) : Equation3357 G := λ x y z => h x y y z
theorem Equation3365_implies_Equation3354 (G : Type*) [Magma G] (h : Equation3365 G) : Equation3354 G := λ x y z => h x y y z
theorem Equation3369_implies_Equation3357 (G : Type*) [Magma G] (h : Equation3369 G) : Equation3357 G := λ x y z => h x y y z
theorem Equation3373_implies_Equation3357 (G : Type*) [Magma G] (h : Equation3373 G) : Equation3357 G := λ x y z => h x y y z
theorem Equation3374_implies_Equation3358 (G : Type*) [Magma G] (h : Equation3374 G) : Equation3358 G := λ x y z => h x y y z
theorem Equation3375_implies_Equation3359 (G : Type*) [Magma G] (h : Equation3375 G) : Equation3359 G := λ x y z => h x y y z
theorem Equation3376_implies_Equation3359 (G : Type*) [Magma G] (h : Equation3376 G) : Equation3359 G := λ x y z => h x y y z
theorem Equation3377_implies_Equation3360 (G : Type*) [Magma G] (h : Equation3377 G) : Equation3360 G := λ x y z => h x y y z
theorem Equation3382_implies_Equation3344 (G : Type*) [Magma G] (h : Equation3382 G) : Equation3344 G := λ x y z => h x y y z
theorem Equation3386_implies_Equation3347 (G : Type*) [Magma G] (h : Equation3386 G) : Equation3347 G := λ x y z => h x y y z
theorem Equation3390_implies_Equation3347 (G : Type*) [Magma G] (h : Equation3390 G) : Equation3347 G := λ x y z => h x y y z
theorem Equation3391_implies_Equation3348 (G : Type*) [Magma G] (h : Equation3391 G) : Equation3348 G := λ x y z => h x y y z
theorem Equation3392_implies_Equation3349 (G : Type*) [Magma G] (h : Equation3392 G) : Equation3349 G := λ x y z => h x y y z
theorem Equation3393_implies_Equation3349 (G : Type*) [Magma G] (h : Equation3393 G) : Equation3349 G := λ x y z => h x y y z
theorem Equation3394_implies_Equation3350 (G : Type*) [Magma G] (h : Equation3394 G) : Equation3350 G := λ x y z => h x y y z
theorem Equation3399_implies_Equation3354 (G : Type*) [Magma G] (h : Equation3399 G) : Equation3354 G := λ x y z => h x y y z
theorem Equation3403_implies_Equation3357 (G : Type*) [Magma G] (h : Equation3403 G) : Equation3357 G := λ x y z => h x y y z
theorem Equation3407_implies_Equation3357 (G : Type*) [Magma G] (h : Equation3407 G) : Equation3357 G := λ x y z => h x y y z
theorem Equation3408_implies_Equation3358 (G : Type*) [Magma G] (h : Equation3408 G) : Equation3358 G := λ x y z => h x y y z
theorem Equation3409_implies_Equation3359 (G : Type*) [Magma G] (h : Equation3409 G) : Equation3359 G := λ x y z => h x y y z
theorem Equation3410_implies_Equation3359 (G : Type*) [Magma G] (h : Equation3410 G) : Equation3359 G := λ x y z => h x y y z
theorem Equation3411_implies_Equation3360 (G : Type*) [Magma G] (h : Equation3411 G) : Equation3360 G := λ x y z => h x y y z
theorem Equation3416_implies_Equation3354 (G : Type*) [Magma G] (h : Equation3416 G) : Equation3354 G := λ x y z => h x y y z
theorem Equation3420_implies_Equation3357 (G : Type*) [Magma G] (h : Equation3420 G) : Equation3357 G := λ x y z => h x y y z
theorem Equation3424_implies_Equation3357 (G : Type*) [Magma G] (h : Equation3424 G) : Equation3357 G := λ x y z => h x y y z
theorem Equation3425_implies_Equation3358 (G : Type*) [Magma G] (h : Equation3425 G) : Equation3358 G := λ x y z => h x y y z
theorem Equation3426_implies_Equation3359 (G : Type*) [Magma G] (h : Equation3426 G) : Equation3359 G := λ x y z => h x y y z
theorem Equation3427_implies_Equation3359 (G : Type*) [Magma G] (h : Equation3427 G) : Equation3359 G := λ x y z => h x y y z
theorem Equation3428_implies_Equation3360 (G : Type*) [Magma G] (h : Equation3428 G) : Equation3360 G := λ x y z => h x y y z
theorem Equation3430_implies_Equation3362 (G : Type*) [Magma G] (h : Equation3430 G) : Equation3362 G := λ x y z => h x y y z
theorem Equation3431_implies_Equation3363 (G : Type*) [Magma G] (h : Equation3431 G) : Equation3363 G := λ x y z => h x y y z
theorem Equation3432_implies_Equation3363 (G : Type*) [Magma G] (h : Equation3432 G) : Equation3363 G := λ x y z => h x y y z
theorem Equation3433_implies_Equation3364 (G : Type*) [Magma G] (h : Equation3433 G) : Equation3364 G := λ x y z => h x y y z
theorem Equation3435_implies_Equation3366 (G : Type*) [Magma G] (h : Equation3435 G) : Equation3366 G := λ x y z => h x y y z
theorem Equation3436_implies_Equation3367 (G : Type*) [Magma G] (h : Equation3436 G) : Equation3367 G := λ x y z => h x y y z
theorem Equation3437_implies_Equation3367 (G : Type*) [Magma G] (h : Equation3437 G) : Equation3367 G := λ x y z => h x y y z
theorem Equation3438_implies_Equation3368 (G : Type*) [Magma G] (h : Equation3438 G) : Equation3368 G := λ x y z => h x y y z
theorem Equation3440_implies_Equation3366 (G : Type*) [Magma G] (h : Equation3440 G) : Equation3366 G := λ x y z => h x y y z
theorem Equation3441_implies_Equation3367 (G : Type*) [Magma G] (h : Equation3441 G) : Equation3367 G := λ x y z => h x y y z
theorem Equation3442_implies_Equation3367 (G : Type*) [Magma G] (h : Equation3442 G) : Equation3367 G := λ x y z => h x y y z
theorem Equation3443_implies_Equation3368 (G : Type*) [Magma G] (h : Equation3443 G) : Equation3368 G := λ x y z => h x y y z
theorem Equation3445_implies_Equation3370 (G : Type*) [Magma G] (h : Equation3445 G) : Equation3370 G := λ x y z => h x y y z
theorem Equation3446_implies_Equation3371 (G : Type*) [Magma G] (h : Equation3446 G) : Equation3371 G := λ x y z => h x y y z
theorem Equation3447_implies_Equation3371 (G : Type*) [Magma G] (h : Equation3447 G) : Equation3371 G := λ x y z => h x y y z
theorem Equation3448_implies_Equation3372 (G : Type*) [Magma G] (h : Equation3448 G) : Equation3372 G := λ x y z => h x y y z
theorem Equation3470_implies_Equation3466 (G : Type*) [Magma G] (h : Equation3470 G) : Equation3466 G := λ x y z => h x y y z
theorem Equation3480_implies_Equation3476 (G : Type*) [Magma G] (h : Equation3480 G) : Equation3476 G := λ x y z => h x y y z
theorem Equation3490_implies_Equation3486 (G : Type*) [Magma G] (h : Equation3490 G) : Equation3486 G := λ x y z => h x y y z
theorem Equation3494_implies_Equation3483 (G : Type*) [Magma G] (h : Equation3494 G) : Equation3483 G := λ x y z => h x y y z
theorem Equation3498_implies_Equation3486 (G : Type*) [Magma G] (h : Equation3498 G) : Equation3486 G := λ x y z => h x y y z
theorem Equation3502_implies_Equation3486 (G : Type*) [Magma G] (h : Equation3502 G) : Equation3486 G := λ x y z => h x y y z
theorem Equation3503_implies_Equation3487 (G : Type*) [Magma G] (h : Equation3503 G) : Equation3487 G := λ x y z => h x y y z
theorem Equation3504_implies_Equation3488 (G : Type*) [Magma G] (h : Equation3504 G) : Equation3488 G := λ x y z => h x y y z
theorem Equation3505_implies_Equation3488 (G : Type*) [Magma G] (h : Equation3505 G) : Equation3488 G := λ x y z => h x y y z
theorem Equation3506_implies_Equation3489 (G : Type*) [Magma G] (h : Equation3506 G) : Equation3489 G := λ x y z => h x y y z
theorem Equation3517_implies_Equation3513 (G : Type*) [Magma G] (h : Equation3517 G) : Equation3513 G := λ x y z => h x y y z
theorem Equation3527_implies_Equation3523 (G : Type*) [Magma G] (h : Equation3527 G) : Equation3523 G := λ x y z => h x y y z
theorem Equation3531_implies_Equation3520 (G : Type*) [Magma G] (h : Equation3531 G) : Equation3520 G := λ x y z => h x y y z
theorem Equation3535_implies_Equation3523 (G : Type*) [Magma G] (h : Equation3535 G) : Equation3523 G := λ x y z => h x y y z
theorem Equation3539_implies_Equation3523 (G : Type*) [Magma G] (h : Equation3539 G) : Equation3523 G := λ x y z => h x y y z
theorem Equation3540_implies_Equation3524 (G : Type*) [Magma G] (h : Equation3540 G) : Equation3524 G := λ x y z => h x y y z
theorem Equation3541_implies_Equation3525 (G : Type*) [Magma G] (h : Equation3541 G) : Equation3525 G := λ x y z => h x y y z
theorem Equation3542_implies_Equation3525 (G : Type*) [Magma G] (h : Equation3542 G) : Equation3525 G := λ x y z => h x y y z
theorem Equation3543_implies_Equation3526 (G : Type*) [Magma G] (h : Equation3543 G) : Equation3526 G := λ x y z => h x y y z
theorem Equation3554_implies_Equation3550 (G : Type*) [Magma G] (h : Equation3554 G) : Equation3550 G := λ x y z => h x y y z
theorem Equation3564_implies_Equation3560 (G : Type*) [Magma G] (h : Equation3564 G) : Equation3560 G := λ x y z => h x y y z
theorem Equation3568_implies_Equation3557 (G : Type*) [Magma G] (h : Equation3568 G) : Equation3557 G := λ x y z => h x y y z
theorem Equation3572_implies_Equation3560 (G : Type*) [Magma G] (h : Equation3572 G) : Equation3560 G := λ x y z => h x y y z
theorem Equation3576_implies_Equation3560 (G : Type*) [Magma G] (h : Equation3576 G) : Equation3560 G := λ x y z => h x y y z
theorem Equation3577_implies_Equation3561 (G : Type*) [Magma G] (h : Equation3577 G) : Equation3561 G := λ x y z => h x y y z
theorem Equation3578_implies_Equation3562 (G : Type*) [Magma G] (h : Equation3578 G) : Equation3562 G := λ x y z => h x y y z
theorem Equation3579_implies_Equation3562 (G : Type*) [Magma G] (h : Equation3579 G) : Equation3562 G := λ x y z => h x y y z
theorem Equation3580_implies_Equation3563 (G : Type*) [Magma G] (h : Equation3580 G) : Equation3563 G := λ x y z => h x y y z
theorem Equation3585_implies_Equation3547 (G : Type*) [Magma G] (h : Equation3585 G) : Equation3547 G := λ x y z => h x y y z
theorem Equation3589_implies_Equation3550 (G : Type*) [Magma G] (h : Equation3589 G) : Equation3550 G := λ x y z => h x y y z
theorem Equation3593_implies_Equation3550 (G : Type*) [Magma G] (h : Equation3593 G) : Equation3550 G := λ x y z => h x y y z
theorem Equation3594_implies_Equation3551 (G : Type*) [Magma G] (h : Equation3594 G) : Equation3551 G := λ x y z => h x y y z
theorem Equation3595_implies_Equation3552 (G : Type*) [Magma G] (h : Equation3595 G) : Equation3552 G := λ x y z => h x y y z
theorem Equation3596_implies_Equation3552 (G : Type*) [Magma G] (h : Equation3596 G) : Equation3552 G := λ x y z => h x y y z
theorem Equation3597_implies_Equation3553 (G : Type*) [Magma G] (h : Equation3597 G) : Equation3553 G := λ x y z => h x y y z
theorem Equation3602_implies_Equation3557 (G : Type*) [Magma G] (h : Equation3602 G) : Equation3557 G := λ x y z => h x y y z
theorem Equation3606_implies_Equation3560 (G : Type*) [Magma G] (h : Equation3606 G) : Equation3560 G := λ x y z => h x y y z
theorem Equation3610_implies_Equation3560 (G : Type*) [Magma G] (h : Equation3610 G) : Equation3560 G := λ x y z => h x y y z
theorem Equation3611_implies_Equation3561 (G : Type*) [Magma G] (h : Equation3611 G) : Equation3561 G := λ x y z => h x y y z
theorem Equation3612_implies_Equation3562 (G : Type*) [Magma G] (h : Equation3612 G) : Equation3562 G := λ x y z => h x y y z
theorem Equation3613_implies_Equation3562 (G : Type*) [Magma G] (h : Equation3613 G) : Equation3562 G := λ x y z => h x y y z
theorem Equation3614_implies_Equation3563 (G : Type*) [Magma G] (h : Equation3614 G) : Equation3563 G := λ x y z => h x y y z
theorem Equation3619_implies_Equation3557 (G : Type*) [Magma G] (h : Equation3619 G) : Equation3557 G := λ x y z => h x y y z
theorem Equation3623_implies_Equation3560 (G : Type*) [Magma G] (h : Equation3623 G) : Equation3560 G := λ x y z => h x y y z
theorem Equation3627_implies_Equation3560 (G : Type*) [Magma G] (h : Equation3627 G) : Equation3560 G := λ x y z => h x y y z
theorem Equation3628_implies_Equation3561 (G : Type*) [Magma G] (h : Equation3628 G) : Equation3561 G := λ x y z => h x y y z
theorem Equation3629_implies_Equation3562 (G : Type*) [Magma G] (h : Equation3629 G) : Equation3562 G := λ x y z => h x y y z
theorem Equation3630_implies_Equation3562 (G : Type*) [Magma G] (h : Equation3630 G) : Equation3562 G := λ x y z => h x y y z
theorem Equation3631_implies_Equation3563 (G : Type*) [Magma G] (h : Equation3631 G) : Equation3563 G := λ x y z => h x y y z
theorem Equation3633_implies_Equation3565 (G : Type*) [Magma G] (h : Equation3633 G) : Equation3565 G := λ x y z => h x y y z
theorem Equation3634_implies_Equation3566 (G : Type*) [Magma G] (h : Equation3634 G) : Equation3566 G := λ x y z => h x y y z
theorem Equation3635_implies_Equation3566 (G : Type*) [Magma G] (h : Equation3635 G) : Equation3566 G := λ x y z => h x y y z
theorem Equation3636_implies_Equation3567 (G : Type*) [Magma G] (h : Equation3636 G) : Equation3567 G := λ x y z => h x y y z
theorem Equation3638_implies_Equation3569 (G : Type*) [Magma G] (h : Equation3638 G) : Equation3569 G := λ x y z => h x y y z
theorem Equation3639_implies_Equation3570 (G : Type*) [Magma G] (h : Equation3639 G) : Equation3570 G := λ x y z => h x y y z
theorem Equation3640_implies_Equation3570 (G : Type*) [Magma G] (h : Equation3640 G) : Equation3570 G := λ x y z => h x y y z
theorem Equation3641_implies_Equation3571 (G : Type*) [Magma G] (h : Equation3641 G) : Equation3571 G := λ x y z => h x y y z
theorem Equation3643_implies_Equation3569 (G : Type*) [Magma G] (h : Equation3643 G) : Equation3569 G := λ x y z => h x y y z
theorem Equation3644_implies_Equation3570 (G : Type*) [Magma G] (h : Equation3644 G) : Equation3570 G := λ x y z => h x y y z
theorem Equation3645_implies_Equation3570 (G : Type*) [Magma G] (h : Equation3645 G) : Equation3570 G := λ x y z => h x y y z
theorem Equation3646_implies_Equation3571 (G : Type*) [Magma G] (h : Equation3646 G) : Equation3571 G := λ x y z => h x y y z
theorem Equation3648_implies_Equation3573 (G : Type*) [Magma G] (h : Equation3648 G) : Equation3573 G := λ x y z => h x y y z
theorem Equation3649_implies_Equation3574 (G : Type*) [Magma G] (h : Equation3649 G) : Equation3574 G := λ x y z => h x y y z
theorem Equation3650_implies_Equation3574 (G : Type*) [Magma G] (h : Equation3650 G) : Equation3574 G := λ x y z => h x y y z
theorem Equation3651_implies_Equation3575 (G : Type*) [Magma G] (h : Equation3651 G) : Equation3575 G := λ x y z => h x y y z
theorem Equation3673_implies_Equation3669 (G : Type*) [Magma G] (h : Equation3673 G) : Equation3669 G := λ x y z => h x y y z
theorem Equation3683_implies_Equation3679 (G : Type*) [Magma G] (h : Equation3683 G) : Equation3679 G := λ x y z => h x y y z
theorem Equation3693_implies_Equation3689 (G : Type*) [Magma G] (h : Equation3693 G) : Equation3689 G := λ x y z => h x y y z
theorem Equation3697_implies_Equation3686 (G : Type*) [Magma G] (h : Equation3697 G) : Equation3686 G := λ x y z => h x y y z
theorem Equation3701_implies_Equation3689 (G : Type*) [Magma G] (h : Equation3701 G) : Equation3689 G := λ x y z => h x y y z
theorem Equation3705_implies_Equation3689 (G : Type*) [Magma G] (h : Equation3705 G) : Equation3689 G := λ x y z => h x y y z
theorem Equation3706_implies_Equation3690 (G : Type*) [Magma G] (h : Equation3706 G) : Equation3690 G := λ x y z => h x y y z
theorem Equation3707_implies_Equation3691 (G : Type*) [Magma G] (h : Equation3707 G) : Equation3691 G := λ x y z => h x y y z
theorem Equation3708_implies_Equation3691 (G : Type*) [Magma G] (h : Equation3708 G) : Equation3691 G := λ x y z => h x y y z
theorem Equation3709_implies_Equation3692 (G : Type*) [Magma G] (h : Equation3709 G) : Equation3692 G := λ x y z => h x y y z
theorem Equation3720_implies_Equation3716 (G : Type*) [Magma G] (h : Equation3720 G) : Equation3716 G := λ x y z => h x y y z
theorem Equation3730_implies_Equation3726 (G : Type*) [Magma G] (h : Equation3730 G) : Equation3726 G := λ x y z => h x y y z
theorem Equation3734_implies_Equation3723 (G : Type*) [Magma G] (h : Equation3734 G) : Equation3723 G := λ x y z => h x y y z
theorem Equation3738_implies_Equation3726 (G : Type*) [Magma G] (h : Equation3738 G) : Equation3726 G := λ x y z => h x y y z
theorem Equation3742_implies_Equation3726 (G : Type*) [Magma G] (h : Equation3742 G) : Equation3726 G := λ x y z => h x y y z
theorem Equation3743_implies_Equation3727 (G : Type*) [Magma G] (h : Equation3743 G) : Equation3727 G := λ x y z => h x y y z
theorem Equation3744_implies_Equation3728 (G : Type*) [Magma G] (h : Equation3744 G) : Equation3728 G := λ x y z => h x y y z
theorem Equation3745_implies_Equation3728 (G : Type*) [Magma G] (h : Equation3745 G) : Equation3728 G := λ x y z => h x y y z
theorem Equation3746_implies_Equation3729 (G : Type*) [Magma G] (h : Equation3746 G) : Equation3729 G := λ x y z => h x y y z
theorem Equation3757_implies_Equation3753 (G : Type*) [Magma G] (h : Equation3757 G) : Equation3753 G := λ x y z => h x y y z
theorem Equation3767_implies_Equation3763 (G : Type*) [Magma G] (h : Equation3767 G) : Equation3763 G := λ x y z => h x y y z
theorem Equation3771_implies_Equation3760 (G : Type*) [Magma G] (h : Equation3771 G) : Equation3760 G := λ x y z => h x y y z
theorem Equation3775_implies_Equation3763 (G : Type*) [Magma G] (h : Equation3775 G) : Equation3763 G := λ x y z => h x y y z
theorem Equation3779_implies_Equation3763 (G : Type*) [Magma G] (h : Equation3779 G) : Equation3763 G := λ x y z => h x y y z
theorem Equation3780_implies_Equation3764 (G : Type*) [Magma G] (h : Equation3780 G) : Equation3764 G := λ x y z => h x y y z
theorem Equation3781_implies_Equation3765 (G : Type*) [Magma G] (h : Equation3781 G) : Equation3765 G := λ x y z => h x y y z
theorem Equation3782_implies_Equation3765 (G : Type*) [Magma G] (h : Equation3782 G) : Equation3765 G := λ x y z => h x y y z
theorem Equation3783_implies_Equation3766 (G : Type*) [Magma G] (h : Equation3783 G) : Equation3766 G := λ x y z => h x y y z
theorem Equation3788_implies_Equation3750 (G : Type*) [Magma G] (h : Equation3788 G) : Equation3750 G := λ x y z => h x y y z
theorem Equation3792_implies_Equation3753 (G : Type*) [Magma G] (h : Equation3792 G) : Equation3753 G := λ x y z => h x y y z
theorem Equation3796_implies_Equation3753 (G : Type*) [Magma G] (h : Equation3796 G) : Equation3753 G := λ x y z => h x y y z
theorem Equation3797_implies_Equation3754 (G : Type*) [Magma G] (h : Equation3797 G) : Equation3754 G := λ x y z => h x y y z
theorem Equation3798_implies_Equation3755 (G : Type*) [Magma G] (h : Equation3798 G) : Equation3755 G := λ x y z => h x y y z
theorem Equation3799_implies_Equation3755 (G : Type*) [Magma G] (h : Equation3799 G) : Equation3755 G := λ x y z => h x y y z
theorem Equation3800_implies_Equation3756 (G : Type*) [Magma G] (h : Equation3800 G) : Equation3756 G := λ x y z => h x y y z
theorem Equation3805_implies_Equation3760 (G : Type*) [Magma G] (h : Equation3805 G) : Equation3760 G := λ x y z => h x y y z
theorem Equation3809_implies_Equation3763 (G : Type*) [Magma G] (h : Equation3809 G) : Equation3763 G := λ x y z => h x y y z
theorem Equation3813_implies_Equation3763 (G : Type*) [Magma G] (h : Equation3813 G) : Equation3763 G := λ x y z => h x y y z
theorem Equation3814_implies_Equation3764 (G : Type*) [Magma G] (h : Equation3814 G) : Equation3764 G := λ x y z => h x y y z
theorem Equation3815_implies_Equation3765 (G : Type*) [Magma G] (h : Equation3815 G) : Equation3765 G := λ x y z => h x y y z
theorem Equation3816_implies_Equation3765 (G : Type*) [Magma G] (h : Equation3816 G) : Equation3765 G := λ x y z => h x y y z
theorem Equation3817_implies_Equation3766 (G : Type*) [Magma G] (h : Equation3817 G) : Equation3766 G := λ x y z => h x y y z
theorem Equation3822_implies_Equation3760 (G : Type*) [Magma G] (h : Equation3822 G) : Equation3760 G := λ x y z => h x y y z
theorem Equation3826_implies_Equation3763 (G : Type*) [Magma G] (h : Equation3826 G) : Equation3763 G := λ x y z => h x y y z
theorem Equation3830_implies_Equation3763 (G : Type*) [Magma G] (h : Equation3830 G) : Equation3763 G := λ x y z => h x y y z
theorem Equation3831_implies_Equation3764 (G : Type*) [Magma G] (h : Equation3831 G) : Equation3764 G := λ x y z => h x y y z
theorem Equation3832_implies_Equation3765 (G : Type*) [Magma G] (h : Equation3832 G) : Equation3765 G := λ x y z => h x y y z
theorem Equation3833_implies_Equation3765 (G : Type*) [Magma G] (h : Equation3833 G) : Equation3765 G := λ x y z => h x y y z
theorem Equation3834_implies_Equation3766 (G : Type*) [Magma G] (h : Equation3834 G) : Equation3766 G := λ x y z => h x y y z
theorem Equation3836_implies_Equation3768 (G : Type*) [Magma G] (h : Equation3836 G) : Equation3768 G := λ x y z => h x y y z
theorem Equation3837_implies_Equation3769 (G : Type*) [Magma G] (h : Equation3837 G) : Equation3769 G := λ x y z => h x y y z
theorem Equation3838_implies_Equation3769 (G : Type*) [Magma G] (h : Equation3838 G) : Equation3769 G := λ x y z => h x y y z
theorem Equation3839_implies_Equation3770 (G : Type*) [Magma G] (h : Equation3839 G) : Equation3770 G := λ x y z => h x y y z
theorem Equation3841_implies_Equation3772 (G : Type*) [Magma G] (h : Equation3841 G) : Equation3772 G := λ x y z => h x y y z
theorem Equation3842_implies_Equation3773 (G : Type*) [Magma G] (h : Equation3842 G) : Equation3773 G := λ x y z => h x y y z
theorem Equation3843_implies_Equation3773 (G : Type*) [Magma G] (h : Equation3843 G) : Equation3773 G := λ x y z => h x y y z
theorem Equation3844_implies_Equation3774 (G : Type*) [Magma G] (h : Equation3844 G) : Equation3774 G := λ x y z => h x y y z
theorem Equation3846_implies_Equation3772 (G : Type*) [Magma G] (h : Equation3846 G) : Equation3772 G := λ x y z => h x y y z
theorem Equation3847_implies_Equation3773 (G : Type*) [Magma G] (h : Equation3847 G) : Equation3773 G := λ x y z => h x y y z
theorem Equation3848_implies_Equation3773 (G : Type*) [Magma G] (h : Equation3848 G) : Equation3773 G := λ x y z => h x y y z
theorem Equation3849_implies_Equation3774 (G : Type*) [Magma G] (h : Equation3849 G) : Equation3774 G := λ x y z => h x y y z
theorem Equation3851_implies_Equation3776 (G : Type*) [Magma G] (h : Equation3851 G) : Equation3776 G := λ x y z => h x y y z
theorem Equation3852_implies_Equation3777 (G : Type*) [Magma G] (h : Equation3852 G) : Equation3777 G := λ x y z => h x y y z
theorem Equation3853_implies_Equation3777 (G : Type*) [Magma G] (h : Equation3853 G) : Equation3777 G := λ x y z => h x y y z
theorem Equation3854_implies_Equation3778 (G : Type*) [Magma G] (h : Equation3854 G) : Equation3778 G := λ x y z => h x y y z
theorem Equation3876_implies_Equation3872 (G : Type*) [Magma G] (h : Equation3876 G) : Equation3872 G := λ x y z => h x y y z
theorem Equation3886_implies_Equation3882 (G : Type*) [Magma G] (h : Equation3886 G) : Equation3882 G := λ x y z => h x y y z
theorem Equation3896_implies_Equation3892 (G : Type*) [Magma G] (h : Equation3896 G) : Equation3892 G := λ x y z => h x y y z
theorem Equation3900_implies_Equation3889 (G : Type*) [Magma G] (h : Equation3900 G) : Equation3889 G := λ x y z => h x y y z
theorem Equation3904_implies_Equation3892 (G : Type*) [Magma G] (h : Equation3904 G) : Equation3892 G := λ x y z => h x y y z
theorem Equation3908_implies_Equation3892 (G : Type*) [Magma G] (h : Equation3908 G) : Equation3892 G := λ x y z => h x y y z
theorem Equation3909_implies_Equation3893 (G : Type*) [Magma G] (h : Equation3909 G) : Equation3893 G := λ x y z => h x y y z
theorem Equation3910_implies_Equation3894 (G : Type*) [Magma G] (h : Equation3910 G) : Equation3894 G := λ x y z => h x y y z
theorem Equation3911_implies_Equation3894 (G : Type*) [Magma G] (h : Equation3911 G) : Equation3894 G := λ x y z => h x y y z
theorem Equation3912_implies_Equation3895 (G : Type*) [Magma G] (h : Equation3912 G) : Equation3895 G := λ x y z => h x y y z
theorem Equation3923_implies_Equation3919 (G : Type*) [Magma G] (h : Equation3923 G) : Equation3919 G := λ x y z => h x y y z
theorem Equation3933_implies_Equation3929 (G : Type*) [Magma G] (h : Equation3933 G) : Equation3929 G := λ x y z => h x y y z
theorem Equation3937_implies_Equation3926 (G : Type*) [Magma G] (h : Equation3937 G) : Equation3926 G := λ x y z => h x y y z
theorem Equation3941_implies_Equation3929 (G : Type*) [Magma G] (h : Equation3941 G) : Equation3929 G := λ x y z => h x y y z
theorem Equation3945_implies_Equation3929 (G : Type*) [Magma G] (h : Equation3945 G) : Equation3929 G := λ x y z => h x y y z
theorem Equation3946_implies_Equation3930 (G : Type*) [Magma G] (h : Equation3946 G) : Equation3930 G := λ x y z => h x y y z
theorem Equation3947_implies_Equation3931 (G : Type*) [Magma G] (h : Equation3947 G) : Equation3931 G := λ x y z => h x y y z
theorem Equation3948_implies_Equation3931 (G : Type*) [Magma G] (h : Equation3948 G) : Equation3931 G := λ x y z => h x y y z
theorem Equation3949_implies_Equation3932 (G : Type*) [Magma G] (h : Equation3949 G) : Equation3932 G := λ x y z => h x y y z
theorem Equation3960_implies_Equation3956 (G : Type*) [Magma G] (h : Equation3960 G) : Equation3956 G := λ x y z => h x y y z
theorem Equation3970_implies_Equation3966 (G : Type*) [Magma G] (h : Equation3970 G) : Equation3966 G := λ x y z => h x y y z
theorem Equation3974_implies_Equation3963 (G : Type*) [Magma G] (h : Equation3974 G) : Equation3963 G := λ x y z => h x y y z
theorem Equation3978_implies_Equation3966 (G : Type*) [Magma G] (h : Equation3978 G) : Equation3966 G := λ x y z => h x y y z
theorem Equation3982_implies_Equation3966 (G : Type*) [Magma G] (h : Equation3982 G) : Equation3966 G := λ x y z => h x y y z
theorem Equation3983_implies_Equation3967 (G : Type*) [Magma G] (h : Equation3983 G) : Equation3967 G := λ x y z => h x y y z
theorem Equation3984_implies_Equation3968 (G : Type*) [Magma G] (h : Equation3984 G) : Equation3968 G := λ x y z => h x y y z
theorem Equation3985_implies_Equation3968 (G : Type*) [Magma G] (h : Equation3985 G) : Equation3968 G := λ x y z => h x y y z
theorem Equation3986_implies_Equation3969 (G : Type*) [Magma G] (h : Equation3986 G) : Equation3969 G := λ x y z => h x y y z
theorem Equation3991_implies_Equation3953 (G : Type*) [Magma G] (h : Equation3991 G) : Equation3953 G := λ x y z => h x y y z
theorem Equation3995_implies_Equation3956 (G : Type*) [Magma G] (h : Equation3995 G) : Equation3956 G := λ x y z => h x y y z
theorem Equation3999_implies_Equation3956 (G : Type*) [Magma G] (h : Equation3999 G) : Equation3956 G := λ x y z => h x y y z
theorem Equation4000_implies_Equation3957 (G : Type*) [Magma G] (h : Equation4000 G) : Equation3957 G := λ x y z => h x y y z
theorem Equation4001_implies_Equation3958 (G : Type*) [Magma G] (h : Equation4001 G) : Equation3958 G := λ x y z => h x y y z
theorem Equation4002_implies_Equation3958 (G : Type*) [Magma G] (h : Equation4002 G) : Equation3958 G := λ x y z => h x y y z
theorem Equation4003_implies_Equation3959 (G : Type*) [Magma G] (h : Equation4003 G) : Equation3959 G := λ x y z => h x y y z
theorem Equation4008_implies_Equation3963 (G : Type*) [Magma G] (h : Equation4008 G) : Equation3963 G := λ x y z => h x y y z
theorem Equation4012_implies_Equation3966 (G : Type*) [Magma G] (h : Equation4012 G) : Equation3966 G := λ x y z => h x y y z
theorem Equation4016_implies_Equation3966 (G : Type*) [Magma G] (h : Equation4016 G) : Equation3966 G := λ x y z => h x y y z
theorem Equation4017_implies_Equation3967 (G : Type*) [Magma G] (h : Equation4017 G) : Equation3967 G := λ x y z => h x y y z
theorem Equation4018_implies_Equation3968 (G : Type*) [Magma G] (h : Equation4018 G) : Equation3968 G := λ x y z => h x y y z
theorem Equation4019_implies_Equation3968 (G : Type*) [Magma G] (h : Equation4019 G) : Equation3968 G := λ x y z => h x y y z
theorem Equation4020_implies_Equation3969 (G : Type*) [Magma G] (h : Equation4020 G) : Equation3969 G := λ x y z => h x y y z
theorem Equation4025_implies_Equation3963 (G : Type*) [Magma G] (h : Equation4025 G) : Equation3963 G := λ x y z => h x y y z
theorem Equation4029_implies_Equation3966 (G : Type*) [Magma G] (h : Equation4029 G) : Equation3966 G := λ x y z => h x y y z
theorem Equation4033_implies_Equation3966 (G : Type*) [Magma G] (h : Equation4033 G) : Equation3966 G := λ x y z => h x y y z
theorem Equation4034_implies_Equation3967 (G : Type*) [Magma G] (h : Equation4034 G) : Equation3967 G := λ x y z => h x y y z
theorem Equation4035_implies_Equation3968 (G : Type*) [Magma G] (h : Equation4035 G) : Equation3968 G := λ x y z => h x y y z
theorem Equation4036_implies_Equation3968 (G : Type*) [Magma G] (h : Equation4036 G) : Equation3968 G := λ x y z => h x y y z
theorem Equation4037_implies_Equation3969 (G : Type*) [Magma G] (h : Equation4037 G) : Equation3969 G := λ x y z => h x y y z
theorem Equation4039_implies_Equation3971 (G : Type*) [Magma G] (h : Equation4039 G) : Equation3971 G := λ x y z => h x y y z
theorem Equation4040_implies_Equation3972 (G : Type*) [Magma G] (h : Equation4040 G) : Equation3972 G := λ x y z => h x y y z
theorem Equation4041_implies_Equation3972 (G : Type*) [Magma G] (h : Equation4041 G) : Equation3972 G := λ x y z => h x y y z
theorem Equation4042_implies_Equation3973 (G : Type*) [Magma G] (h : Equation4042 G) : Equation3973 G := λ x y z => h x y y z
theorem Equation4044_implies_Equation3975 (G : Type*) [Magma G] (h : Equation4044 G) : Equation3975 G := λ x y z => h x y y z
theorem Equation4045_implies_Equation3976 (G : Type*) [Magma G] (h : Equation4045 G) : Equation3976 G := λ x y z => h x y y z
theorem Equation4046_implies_Equation3976 (G : Type*) [Magma G] (h : Equation4046 G) : Equation3976 G := λ x y z => h x y y z
theorem Equation4047_implies_Equation3977 (G : Type*) [Magma G] (h : Equation4047 G) : Equation3977 G := λ x y z => h x y y z
theorem Equation4049_implies_Equation3975 (G : Type*) [Magma G] (h : Equation4049 G) : Equation3975 G := λ x y z => h x y y z
theorem Equation4050_implies_Equation3976 (G : Type*) [Magma G] (h : Equation4050 G) : Equation3976 G := λ x y z => h x y y z
theorem Equation4051_implies_Equation3976 (G : Type*) [Magma G] (h : Equation4051 G) : Equation3976 G := λ x y z => h x y y z
theorem Equation4052_implies_Equation3977 (G : Type*) [Magma G] (h : Equation4052 G) : Equation3977 G := λ x y z => h x y y z
theorem Equation4054_implies_Equation3979 (G : Type*) [Magma G] (h : Equation4054 G) : Equation3979 G := λ x y z => h x y y z
theorem Equation4055_implies_Equation3980 (G : Type*) [Magma G] (h : Equation4055 G) : Equation3980 G := λ x y z => h x y y z
theorem Equation4056_implies_Equation3980 (G : Type*) [Magma G] (h : Equation4056 G) : Equation3980 G := λ x y z => h x y y z
theorem Equation4057_implies_Equation3981 (G : Type*) [Magma G] (h : Equation4057 G) : Equation3981 G := λ x y z => h x y y z
theorem Equation4079_implies_Equation4075 (G : Type*) [Magma G] (h : Equation4079 G) : Equation4075 G := λ x y z => h x y y z
theorem Equation4089_implies_Equation4085 (G : Type*) [Magma G] (h : Equation4089 G) : Equation4085 G := λ x y z => h x y y z
theorem Equation4099_implies_Equation4095 (G : Type*) [Magma G] (h : Equation4099 G) : Equation4095 G := λ x y z => h x y y z
theorem Equation4103_implies_Equation4092 (G : Type*) [Magma G] (h : Equation4103 G) : Equation4092 G := λ x y z => h x y y z
theorem Equation4107_implies_Equation4095 (G : Type*) [Magma G] (h : Equation4107 G) : Equation4095 G := λ x y z => h x y y z
theorem Equation4111_implies_Equation4095 (G : Type*) [Magma G] (h : Equation4111 G) : Equation4095 G := λ x y z => h x y y z
theorem Equation4112_implies_Equation4096 (G : Type*) [Magma G] (h : Equation4112 G) : Equation4096 G := λ x y z => h x y y z
theorem Equation4113_implies_Equation4097 (G : Type*) [Magma G] (h : Equation4113 G) : Equation4097 G := λ x y z => h x y y z
theorem Equation4114_implies_Equation4097 (G : Type*) [Magma G] (h : Equation4114 G) : Equation4097 G := λ x y z => h x y y z
theorem Equation4115_implies_Equation4098 (G : Type*) [Magma G] (h : Equation4115 G) : Equation4098 G := λ x y z => h x y y z
theorem Equation4126_implies_Equation4122 (G : Type*) [Magma G] (h : Equation4126 G) : Equation4122 G := λ x y z => h x y y z
theorem Equation4136_implies_Equation4132 (G : Type*) [Magma G] (h : Equation4136 G) : Equation4132 G := λ x y z => h x y y z
theorem Equation4140_implies_Equation4129 (G : Type*) [Magma G] (h : Equation4140 G) : Equation4129 G := λ x y z => h x y y z
theorem Equation4144_implies_Equation4132 (G : Type*) [Magma G] (h : Equation4144 G) : Equation4132 G := λ x y z => h x y y z
theorem Equation4148_implies_Equation4132 (G : Type*) [Magma G] (h : Equation4148 G) : Equation4132 G := λ x y z => h x y y z
theorem Equation4149_implies_Equation4133 (G : Type*) [Magma G] (h : Equation4149 G) : Equation4133 G := λ x y z => h x y y z
theorem Equation4150_implies_Equation4134 (G : Type*) [Magma G] (h : Equation4150 G) : Equation4134 G := λ x y z => h x y y z
theorem Equation4151_implies_Equation4134 (G : Type*) [Magma G] (h : Equation4151 G) : Equation4134 G := λ x y z => h x y y z
theorem Equation4152_implies_Equation4135 (G : Type*) [Magma G] (h : Equation4152 G) : Equation4135 G := λ x y z => h x y y z
theorem Equation4163_implies_Equation4159 (G : Type*) [Magma G] (h : Equation4163 G) : Equation4159 G := λ x y z => h x y y z
theorem Equation4173_implies_Equation4169 (G : Type*) [Magma G] (h : Equation4173 G) : Equation4169 G := λ x y z => h x y y z
theorem Equation4177_implies_Equation4166 (G : Type*) [Magma G] (h : Equation4177 G) : Equation4166 G := λ x y z => h x y y z
theorem Equation4181_implies_Equation4169 (G : Type*) [Magma G] (h : Equation4181 G) : Equation4169 G := λ x y z => h x y y z
theorem Equation4185_implies_Equation4169 (G : Type*) [Magma G] (h : Equation4185 G) : Equation4169 G := λ x y z => h x y y z
theorem Equation4186_implies_Equation4170 (G : Type*) [Magma G] (h : Equation4186 G) : Equation4170 G := λ x y z => h x y y z
theorem Equation4187_implies_Equation4171 (G : Type*) [Magma G] (h : Equation4187 G) : Equation4171 G := λ x y z => h x y y z
theorem Equation4188_implies_Equation4171 (G : Type*) [Magma G] (h : Equation4188 G) : Equation4171 G := λ x y z => h x y y z
theorem Equation4189_implies_Equation4172 (G : Type*) [Magma G] (h : Equation4189 G) : Equation4172 G := λ x y z => h x y y z
theorem Equation4194_implies_Equation4156 (G : Type*) [Magma G] (h : Equation4194 G) : Equation4156 G := λ x y z => h x y y z
theorem Equation4198_implies_Equation4159 (G : Type*) [Magma G] (h : Equation4198 G) : Equation4159 G := λ x y z => h x y y z
theorem Equation4202_implies_Equation4159 (G : Type*) [Magma G] (h : Equation4202 G) : Equation4159 G := λ x y z => h x y y z
theorem Equation4203_implies_Equation4160 (G : Type*) [Magma G] (h : Equation4203 G) : Equation4160 G := λ x y z => h x y y z
theorem Equation4204_implies_Equation4161 (G : Type*) [Magma G] (h : Equation4204 G) : Equation4161 G := λ x y z => h x y y z
theorem Equation4205_implies_Equation4161 (G : Type*) [Magma G] (h : Equation4205 G) : Equation4161 G := λ x y z => h x y y z
theorem Equation4206_implies_Equation4162 (G : Type*) [Magma G] (h : Equation4206 G) : Equation4162 G := λ x y z => h x y y z
theorem Equation4211_implies_Equation4166 (G : Type*) [Magma G] (h : Equation4211 G) : Equation4166 G := λ x y z => h x y y z
theorem Equation4215_implies_Equation4169 (G : Type*) [Magma G] (h : Equation4215 G) : Equation4169 G := λ x y z => h x y y z
theorem Equation4219_implies_Equation4169 (G : Type*) [Magma G] (h : Equation4219 G) : Equation4169 G := λ x y z => h x y y z
theorem Equation4220_implies_Equation4170 (G : Type*) [Magma G] (h : Equation4220 G) : Equation4170 G := λ x y z => h x y y z
theorem Equation4221_implies_Equation4171 (G : Type*) [Magma G] (h : Equation4221 G) : Equation4171 G := λ x y z => h x y y z
theorem Equation4222_implies_Equation4171 (G : Type*) [Magma G] (h : Equation4222 G) : Equation4171 G := λ x y z => h x y y z
theorem Equation4223_implies_Equation4172 (G : Type*) [Magma G] (h : Equation4223 G) : Equation4172 G := λ x y z => h x y y z
theorem Equation4228_implies_Equation4166 (G : Type*) [Magma G] (h : Equation4228 G) : Equation4166 G := λ x y z => h x y y z
theorem Equation4232_implies_Equation4169 (G : Type*) [Magma G] (h : Equation4232 G) : Equation4169 G := λ x y z => h x y y z
theorem Equation4236_implies_Equation4169 (G : Type*) [Magma G] (h : Equation4236 G) : Equation4169 G := λ x y z => h x y y z
theorem Equation4237_implies_Equation4170 (G : Type*) [Magma G] (h : Equation4237 G) : Equation4170 G := λ x y z => h x y y z
theorem Equation4238_implies_Equation4171 (G : Type*) [Magma G] (h : Equation4238 G) : Equation4171 G := λ x y z => h x y y z
theorem Equation4239_implies_Equation4171 (G : Type*) [Magma G] (h : Equation4239 G) : Equation4171 G := λ x y z => h x y y z
theorem Equation4240_implies_Equation4172 (G : Type*) [Magma G] (h : Equation4240 G) : Equation4172 G := λ x y z => h x y y z
theorem Equation4242_implies_Equation4174 (G : Type*) [Magma G] (h : Equation4242 G) : Equation4174 G := λ x y z => h x y y z
theorem Equation4243_implies_Equation4175 (G : Type*) [Magma G] (h : Equation4243 G) : Equation4175 G := λ x y z => h x y y z
theorem Equation4244_implies_Equation4175 (G : Type*) [Magma G] (h : Equation4244 G) : Equation4175 G := λ x y z => h x y y z
theorem Equation4245_implies_Equation4176 (G : Type*) [Magma G] (h : Equation4245 G) : Equation4176 G := λ x y z => h x y y z
theorem Equation4247_implies_Equation4178 (G : Type*) [Magma G] (h : Equation4247 G) : Equation4178 G := λ x y z => h x y y z
theorem Equation4248_implies_Equation4179 (G : Type*) [Magma G] (h : Equation4248 G) : Equation4179 G := λ x y z => h x y y z
theorem Equation4249_implies_Equation4179 (G : Type*) [Magma G] (h : Equation4249 G) : Equation4179 G := λ x y z => h x y y z
theorem Equation4250_implies_Equation4180 (G : Type*) [Magma G] (h : Equation4250 G) : Equation4180 G := λ x y z => h x y y z
theorem Equation4252_implies_Equation4178 (G : Type*) [Magma G] (h : Equation4252 G) : Equation4178 G := λ x y z => h x y y z
theorem Equation4253_implies_Equation4179 (G : Type*) [Magma G] (h : Equation4253 G) : Equation4179 G := λ x y z => h x y y z
theorem Equation4254_implies_Equation4179 (G : Type*) [Magma G] (h : Equation4254 G) : Equation4179 G := λ x y z => h x y y z
theorem Equation4255_implies_Equation4180 (G : Type*) [Magma G] (h : Equation4255 G) : Equation4180 G := λ x y z => h x y y z
theorem Equation4257_implies_Equation4182 (G : Type*) [Magma G] (h : Equation4257 G) : Equation4182 G := λ x y z => h x y y z
theorem Equation4258_implies_Equation4183 (G : Type*) [Magma G] (h : Equation4258 G) : Equation4183 G := λ x y z => h x y y z
theorem Equation4259_implies_Equation4183 (G : Type*) [Magma G] (h : Equation4259 G) : Equation4183 G := λ x y z => h x y y z
theorem Equation4260_implies_Equation4184 (G : Type*) [Magma G] (h : Equation4260 G) : Equation4184 G := λ x y z => h x y y z
theorem Equation4281_implies_Equation4277 (G : Type*) [Magma G] (h : Equation4281 G) : Equation4277 G := λ x y z => h x y y z
theorem Equation4289_implies_Equation4285 (G : Type*) [Magma G] (h : Equation4289 G) : Equation4285 G := λ x y z => h x y y z
theorem Equation4298_implies_Equation4294 (G : Type*) [Magma G] (h : Equation4298 G) : Equation4294 G := λ x y z => h x y y z
theorem Equation4302_implies_Equation4292 (G : Type*) [Magma G] (h : Equation4302 G) : Equation4292 G := λ x y z => h x y y z
theorem Equation4306_implies_Equation4294 (G : Type*) [Magma G] (h : Equation4306 G) : Equation4294 G := λ x y z => h x y y z
theorem Equation4308_implies_Equation4294 (G : Type*) [Magma G] (h : Equation4308 G) : Equation4294 G := λ x y z => h x y y z
theorem Equation4309_implies_Equation4295 (G : Type*) [Magma G] (h : Equation4309 G) : Equation4295 G := λ x y z => h x y y z
theorem Equation4310_implies_Equation4296 (G : Type*) [Magma G] (h : Equation4310 G) : Equation4296 G := λ x y z => h x y y z
theorem Equation4311_implies_Equation4296 (G : Type*) [Magma G] (h : Equation4311 G) : Equation4296 G := λ x y z => h x y y z
theorem Equation4312_implies_Equation4297 (G : Type*) [Magma G] (h : Equation4312 G) : Equation4297 G := λ x y z => h x y y z
theorem Equation4319_implies_Equation4315 (G : Type*) [Magma G] (h : Equation4319 G) : Equation4315 G := λ x y z => h x y y z
theorem Equation4329_implies_Equation4322 (G : Type*) [Magma G] (h : Equation4329 G) : Equation4322 G := λ x y z => h x y y z
theorem Equation4334_implies_Equation4323 (G : Type*) [Magma G] (h : Equation4334 G) : Equation4323 G := λ x y z => h x y y z
theorem Equation4335_implies_Equation4324 (G : Type*) [Magma G] (h : Equation4335 G) : Equation4324 G := λ x y z => h x y y z
theorem Equation4336_implies_Equation4324 (G : Type*) [Magma G] (h : Equation4336 G) : Equation4324 G := λ x y z => h x y y z
theorem Equation4337_implies_Equation4325 (G : Type*) [Magma G] (h : Equation4337 G) : Equation4325 G := λ x y z => h x y y z
theorem Equation4342_implies_Equation4339 (G : Type*) [Magma G] (h : Equation4342 G) : Equation4339 G := λ x y z => h x y y z
theorem Equation4349_implies_Equation4344 (G : Type*) [Magma G] (h : Equation4349 G) : Equation4344 G := λ x y z => h x y y z
theorem Equation4353_implies_Equation4345 (G : Type*) [Magma G] (h : Equation4353 G) : Equation4345 G := λ x y z => h x y y z
theorem Equation4355_implies_Equation4346 (G : Type*) [Magma G] (h : Equation4355 G) : Equation4346 G := λ x y z => h x y y z
theorem Equation4357_implies_Equation4339 (G : Type*) [Magma G] (h : Equation4357 G) : Equation4339 G := λ x y z => h x y y z
theorem Equation4359_implies_Equation4339 (G : Type*) [Magma G] (h : Equation4359 G) : Equation4339 G := λ x y z => h x y y z
theorem Equation4360_implies_Equation4340 (G : Type*) [Magma G] (h : Equation4360 G) : Equation4340 G := λ x y z => h x y y z
theorem Equation4363_implies_Equation4344 (G : Type*) [Magma G] (h : Equation4363 G) : Equation4344 G := λ x y z => h x y y z
theorem Equation4366_implies_Equation4345 (G : Type*) [Magma G] (h : Equation4366 G) : Equation4345 G := λ x y z => h x y y z
theorem Equation4371_implies_Equation4345 (G : Type*) [Magma G] (h : Equation4371 G) : Equation4345 G := λ x y z => h x y y z
theorem Equation4374_implies_Equation4351 (G : Type*) [Magma G] (h : Equation4374 G) : Equation4351 G := λ x y z => h x y y z
theorem Equation4376_implies_Equation4351 (G : Type*) [Magma G] (h : Equation4376 G) : Equation4351 G := λ x y z => h x y y z
theorem Equation4394_implies_Equation4390 (G : Type*) [Magma G] (h : Equation4394 G) : Equation4390 G := λ x y z => h x y y z
theorem Equation4404_implies_Equation4400 (G : Type*) [Magma G] (h : Equation4404 G) : Equation4400 G := λ x y z => h x y y z
theorem Equation4414_implies_Equation4410 (G : Type*) [Magma G] (h : Equation4414 G) : Equation4410 G := λ x y z => h x y y z
theorem Equation4418_implies_Equation4407 (G : Type*) [Magma G] (h : Equation4418 G) : Equation4407 G := λ x y z => h x y y z
theorem Equation4422_implies_Equation4410 (G : Type*) [Magma G] (h : Equation4422 G) : Equation4410 G := λ x y z => h x y y z
theorem Equation4426_implies_Equation4410 (G : Type*) [Magma G] (h : Equation4426 G) : Equation4410 G := λ x y z => h x y y z
theorem Equation4427_implies_Equation4411 (G : Type*) [Magma G] (h : Equation4427 G) : Equation4411 G := λ x y z => h x y y z
theorem Equation4428_implies_Equation4412 (G : Type*) [Magma G] (h : Equation4428 G) : Equation4412 G := λ x y z => h x y y z
theorem Equation4429_implies_Equation4412 (G : Type*) [Magma G] (h : Equation4429 G) : Equation4412 G := λ x y z => h x y y z
theorem Equation4430_implies_Equation4413 (G : Type*) [Magma G] (h : Equation4430 G) : Equation4413 G := λ x y z => h x y y z
theorem Equation4441_implies_Equation4437 (G : Type*) [Magma G] (h : Equation4441 G) : Equation4437 G := λ x y z => h x y y z
theorem Equation4451_implies_Equation4447 (G : Type*) [Magma G] (h : Equation4451 G) : Equation4447 G := λ x y z => h x y y z
theorem Equation4455_implies_Equation4444 (G : Type*) [Magma G] (h : Equation4455 G) : Equation4444 G := λ x y z => h x y y z
theorem Equation4459_implies_Equation4447 (G : Type*) [Magma G] (h : Equation4459 G) : Equation4447 G := λ x y z => h x y y z
theorem Equation4463_implies_Equation4447 (G : Type*) [Magma G] (h : Equation4463 G) : Equation4447 G := λ x y z => h x y y z
theorem Equation4464_implies_Equation4448 (G : Type*) [Magma G] (h : Equation4464 G) : Equation4448 G := λ x y z => h x y y z
theorem Equation4465_implies_Equation4449 (G : Type*) [Magma G] (h : Equation4465 G) : Equation4449 G := λ x y z => h x y y z
theorem Equation4466_implies_Equation4449 (G : Type*) [Magma G] (h : Equation4466 G) : Equation4449 G := λ x y z => h x y y z
theorem Equation4467_implies_Equation4450 (G : Type*) [Magma G] (h : Equation4467 G) : Equation4450 G := λ x y z => h x y y z
theorem Equation4478_implies_Equation4474 (G : Type*) [Magma G] (h : Equation4478 G) : Equation4474 G := λ x y z => h x y y z
theorem Equation4488_implies_Equation4484 (G : Type*) [Magma G] (h : Equation4488 G) : Equation4484 G := λ x y z => h x y y z
theorem Equation4492_implies_Equation4481 (G : Type*) [Magma G] (h : Equation4492 G) : Equation4481 G := λ x y z => h x y y z
theorem Equation4496_implies_Equation4484 (G : Type*) [Magma G] (h : Equation4496 G) : Equation4484 G := λ x y z => h x y y z
theorem Equation4500_implies_Equation4484 (G : Type*) [Magma G] (h : Equation4500 G) : Equation4484 G := λ x y z => h x y y z
theorem Equation4501_implies_Equation4485 (G : Type*) [Magma G] (h : Equation4501 G) : Equation4485 G := λ x y z => h x y y z
theorem Equation4502_implies_Equation4486 (G : Type*) [Magma G] (h : Equation4502 G) : Equation4486 G := λ x y z => h x y y z
theorem Equation4503_implies_Equation4486 (G : Type*) [Magma G] (h : Equation4503 G) : Equation4486 G := λ x y z => h x y y z
theorem Equation4504_implies_Equation4487 (G : Type*) [Magma G] (h : Equation4504 G) : Equation4487 G := λ x y z => h x y y z
theorem Equation4509_implies_Equation4471 (G : Type*) [Magma G] (h : Equation4509 G) : Equation4471 G := λ x y z => h x y y z
theorem Equation4513_implies_Equation4474 (G : Type*) [Magma G] (h : Equation4513 G) : Equation4474 G := λ x y z => h x y y z
theorem Equation4517_implies_Equation4474 (G : Type*) [Magma G] (h : Equation4517 G) : Equation4474 G := λ x y z => h x y y z
theorem Equation4518_implies_Equation4475 (G : Type*) [Magma G] (h : Equation4518 G) : Equation4475 G := λ x y z => h x y y z
theorem Equation4519_implies_Equation4476 (G : Type*) [Magma G] (h : Equation4519 G) : Equation4476 G := λ x y z => h x y y z
theorem Equation4520_implies_Equation4476 (G : Type*) [Magma G] (h : Equation4520 G) : Equation4476 G := λ x y z => h x y y z
theorem Equation4521_implies_Equation4477 (G : Type*) [Magma G] (h : Equation4521 G) : Equation4477 G := λ x y z => h x y y z
theorem Equation4526_implies_Equation4481 (G : Type*) [Magma G] (h : Equation4526 G) : Equation4481 G := λ x y z => h x y y z
theorem Equation4530_implies_Equation4484 (G : Type*) [Magma G] (h : Equation4530 G) : Equation4484 G := λ x y z => h x y y z
theorem Equation4534_implies_Equation4484 (G : Type*) [Magma G] (h : Equation4534 G) : Equation4484 G := λ x y z => h x y y z
theorem Equation4535_implies_Equation4485 (G : Type*) [Magma G] (h : Equation4535 G) : Equation4485 G := λ x y z => h x y y z
theorem Equation4536_implies_Equation4486 (G : Type*) [Magma G] (h : Equation4536 G) : Equation4486 G := λ x y z => h x y y z
theorem Equation4537_implies_Equation4486 (G : Type*) [Magma G] (h : Equation4537 G) : Equation4486 G := λ x y z => h x y y z
theorem Equation4538_implies_Equation4487 (G : Type*) [Magma G] (h : Equation4538 G) : Equation4487 G := λ x y z => h x y y z
theorem Equation4543_implies_Equation4481 (G : Type*) [Magma G] (h : Equation4543 G) : Equation4481 G := λ x y z => h x y y z
theorem Equation4547_implies_Equation4484 (G : Type*) [Magma G] (h : Equation4547 G) : Equation4484 G := λ x y z => h x y y z
theorem Equation4551_implies_Equation4484 (G : Type*) [Magma G] (h : Equation4551 G) : Equation4484 G := λ x y z => h x y y z
theorem Equation4552_implies_Equation4485 (G : Type*) [Magma G] (h : Equation4552 G) : Equation4485 G := λ x y z => h x y y z
theorem Equation4553_implies_Equation4486 (G : Type*) [Magma G] (h : Equation4553 G) : Equation4486 G := λ x y z => h x y y z
theorem Equation4554_implies_Equation4486 (G : Type*) [Magma G] (h : Equation4554 G) : Equation4486 G := λ x y z => h x y y z
theorem Equation4555_implies_Equation4487 (G : Type*) [Magma G] (h : Equation4555 G) : Equation4487 G := λ x y z => h x y y z
theorem Equation4557_implies_Equation4489 (G : Type*) [Magma G] (h : Equation4557 G) : Equation4489 G := λ x y z => h x y y z
theorem Equation4558_implies_Equation4490 (G : Type*) [Magma G] (h : Equation4558 G) : Equation4490 G := λ x y z => h x y y z
theorem Equation4559_implies_Equation4490 (G : Type*) [Magma G] (h : Equation4559 G) : Equation4490 G := λ x y z => h x y y z
theorem Equation4560_implies_Equation4491 (G : Type*) [Magma G] (h : Equation4560 G) : Equation4491 G := λ x y z => h x y y z
theorem Equation4562_implies_Equation4493 (G : Type*) [Magma G] (h : Equation4562 G) : Equation4493 G := λ x y z => h x y y z
theorem Equation4563_implies_Equation4494 (G : Type*) [Magma G] (h : Equation4563 G) : Equation4494 G := λ x y z => h x y y z
theorem Equation4564_implies_Equation4494 (G : Type*) [Magma G] (h : Equation4564 G) : Equation4494 G := λ x y z => h x y y z
theorem Equation4565_implies_Equation4495 (G : Type*) [Magma G] (h : Equation4565 G) : Equation4495 G := λ x y z => h x y y z
theorem Equation4567_implies_Equation4493 (G : Type*) [Magma G] (h : Equation4567 G) : Equation4493 G := λ x y z => h x y y z
theorem Equation4568_implies_Equation4494 (G : Type*) [Magma G] (h : Equation4568 G) : Equation4494 G := λ x y z => h x y y z
theorem Equation4569_implies_Equation4494 (G : Type*) [Magma G] (h : Equation4569 G) : Equation4494 G := λ x y z => h x y y z
theorem Equation4570_implies_Equation4495 (G : Type*) [Magma G] (h : Equation4570 G) : Equation4495 G := λ x y z => h x y y z
theorem Equation4572_implies_Equation4497 (G : Type*) [Magma G] (h : Equation4572 G) : Equation4497 G := λ x y z => h x y y z
theorem Equation4573_implies_Equation4498 (G : Type*) [Magma G] (h : Equation4573 G) : Equation4498 G := λ x y z => h x y y z
theorem Equation4574_implies_Equation4498 (G : Type*) [Magma G] (h : Equation4574 G) : Equation4498 G := λ x y z => h x y y z
theorem Equation4575_implies_Equation4499 (G : Type*) [Magma G] (h : Equation4575 G) : Equation4499 G := λ x y z => h x y y z
theorem Equation4596_implies_Equation4592 (G : Type*) [Magma G] (h : Equation4596 G) : Equation4592 G := λ x y z => h x y y z
theorem Equation4604_implies_Equation4600 (G : Type*) [Magma G] (h : Equation4604 G) : Equation4600 G := λ x y z => h x y y z
theorem Equation4613_implies_Equation4609 (G : Type*) [Magma G] (h : Equation4613 G) : Equation4609 G := λ x y z => h x y y z
theorem Equation4617_implies_Equation4607 (G : Type*) [Magma G] (h : Equation4617 G) : Equation4607 G := λ x y z => h x y y z
theorem Equation4621_implies_Equation4609 (G : Type*) [Magma G] (h : Equation4621 G) : Equation4609 G := λ x y z => h x y y z
theorem Equation4623_implies_Equation4609 (G : Type*) [Magma G] (h : Equation4623 G) : Equation4609 G := λ x y z => h x y y z
theorem Equation4624_implies_Equation4610 (G : Type*) [Magma G] (h : Equation4624 G) : Equation4610 G := λ x y z => h x y y z
theorem Equation4625_implies_Equation4611 (G : Type*) [Magma G] (h : Equation4625 G) : Equation4611 G := λ x y z => h x y y z
theorem Equation4626_implies_Equation4611 (G : Type*) [Magma G] (h : Equation4626 G) : Equation4611 G := λ x y z => h x y y z
theorem Equation4627_implies_Equation4612 (G : Type*) [Magma G] (h : Equation4627 G) : Equation4612 G := λ x y z => h x y y z
theorem Equation4634_implies_Equation4630 (G : Type*) [Magma G] (h : Equation4634 G) : Equation4630 G := λ x y z => h x y y z
theorem Equation4644_implies_Equation4637 (G : Type*) [Magma G] (h : Equation4644 G) : Equation4637 G := λ x y z => h x y y z
theorem Equation4649_implies_Equation4638 (G : Type*) [Magma G] (h : Equation4649 G) : Equation4638 G := λ x y z => h x y y z
theorem Equation4650_implies_Equation4639 (G : Type*) [Magma G] (h : Equation4650 G) : Equation4639 G := λ x y z => h x y y z
theorem Equation4651_implies_Equation4639 (G : Type*) [Magma G] (h : Equation4651 G) : Equation4639 G := λ x y z => h x y y z
theorem Equation4652_implies_Equation4640 (G : Type*) [Magma G] (h : Equation4652 G) : Equation4640 G := λ x y z => h x y y z
theorem Equation4657_implies_Equation4654 (G : Type*) [Magma G] (h : Equation4657 G) : Equation4654 G := λ x y z => h x y y z
theorem Equation4664_implies_Equation4659 (G : Type*) [Magma G] (h : Equation4664 G) : Equation4659 G := λ x y z => h x y y z
theorem Equation4668_implies_Equation4660 (G : Type*) [Magma G] (h : Equation4668 G) : Equation4660 G := λ x y z => h x y y z
theorem Equation4670_implies_Equation4661 (G : Type*) [Magma G] (h : Equation4670 G) : Equation4661 G := λ x y z => h x y y z
theorem Equation4672_implies_Equation4654 (G : Type*) [Magma G] (h : Equation4672 G) : Equation4654 G := λ x y z => h x y y z
theorem Equation4674_implies_Equation4654 (G : Type*) [Magma G] (h : Equation4674 G) : Equation4654 G := λ x y z => h x y y z
theorem Equation4675_implies_Equation4655 (G : Type*) [Magma G] (h : Equation4675 G) : Equation4655 G := λ x y z => h x y y z
theorem Equation4678_implies_Equation4659 (G : Type*) [Magma G] (h : Equation4678 G) : Equation4659 G := λ x y z => h x y y z
theorem Equation4681_implies_Equation4660 (G : Type*) [Magma G] (h : Equation4681 G) : Equation4660 G := λ x y z => h x y y z
theorem Equation4686_implies_Equation4660 (G : Type*) [Magma G] (h : Equation4686 G) : Equation4660 G := λ x y z => h x y y z
theorem Equation4689_implies_Equation4666 (G : Type*) [Magma G] (h : Equation4689 G) : Equation4666 G := λ x y z => h x y y z
theorem Equation4691_implies_Equation4666 (G : Type*) [Magma G] (h : Equation4691 G) : Equation4666 G := λ x y z => h x y y z