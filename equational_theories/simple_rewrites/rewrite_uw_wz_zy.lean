import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation81 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ w))
def Equation98 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ u))
def Equation133 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ w)
def Equation150 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ u)
def Equation185 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ w)
def Equation202 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ u)
def Equation237 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ w
def Equation254 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ u
def Equation289 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ w
def Equation306 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ u
def Equation341 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ w)
def Equation358 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ u)
def Equation393 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ w
def Equation410 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ u
def Equation445 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (y ∘ (z ∘ w)))
def Equation462 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ (y ∘ (z ∘ (w ∘ u)))
def Equation482 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ (y ∘ (z ∘ w)))
def Equation499 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (x ∘ (z ∘ (w ∘ u)))
def Equation509 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (x ∘ (z ∘ w)))
def Equation519 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (y ∘ (z ∘ w)))
def Equation523 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (x ∘ w)))
def Equation527 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (y ∘ w)))
def Equation531 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (z ∘ w)))
def Equation532 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (w ∘ x)))
def Equation533 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (w ∘ y)))
def Equation534 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (w ∘ z)))
def Equation535 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (w ∘ w)))
def Equation536 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (y ∘ (z ∘ (w ∘ u)))
def Equation553 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (x ∘ (w ∘ u)))
def Equation570 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (y ∘ (w ∘ u)))
def Equation587 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (z ∘ (w ∘ u)))
def Equation592 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (x ∘ u)))
def Equation597 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (y ∘ u)))
def Equation602 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (z ∘ u)))
def Equation607 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (w ∘ u)))
def Equation608 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ x)))
def Equation609 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ y)))
def Equation610 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ z)))
def Equation611 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ w)))
def Equation612 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ u)))
def Equation648 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((y ∘ z) ∘ w))
def Equation665 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ (y ∘ ((z ∘ w) ∘ u))
def Equation685 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (x ∘ ((y ∘ z) ∘ w))
def Equation702 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (x ∘ ((z ∘ w) ∘ u))
def Equation712 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((x ∘ z) ∘ w))
def Equation722 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((y ∘ z) ∘ w))
def Equation726 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ x) ∘ w))
def Equation730 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ y) ∘ w))
def Equation734 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ z) ∘ w))
def Equation735 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ w) ∘ x))
def Equation736 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ w) ∘ y))
def Equation737 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ w) ∘ z))
def Equation738 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ w) ∘ w))
def Equation739 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (y ∘ ((z ∘ w) ∘ u))
def Equation756 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((x ∘ w) ∘ u))
def Equation773 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((y ∘ w) ∘ u))
def Equation790 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((z ∘ w) ∘ u))
def Equation795 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ x) ∘ u))
def Equation800 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ y) ∘ u))
def Equation805 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ z) ∘ u))
def Equation810 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ w) ∘ u))
def Equation811 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ x))
def Equation812 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ y))
def Equation813 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ z))
def Equation814 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ w))
def Equation815 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ u))
def Equation851 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ y) ∘ (z ∘ w))
def Equation868 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ ((y ∘ z) ∘ (w ∘ u))
def Equation888 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ y) ∘ (z ∘ w))
def Equation905 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((x ∘ z) ∘ (w ∘ u))
def Equation915 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ x) ∘ (z ∘ w))
def Equation925 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ y) ∘ (z ∘ w))
def Equation929 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (x ∘ w))
def Equation933 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (y ∘ w))
def Equation937 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (z ∘ w))
def Equation938 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (w ∘ x))
def Equation939 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (w ∘ y))
def Equation940 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (w ∘ z))
def Equation941 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (w ∘ w))
def Equation942 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((y ∘ z) ∘ (w ∘ u))
def Equation959 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ x) ∘ (w ∘ u))
def Equation976 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ y) ∘ (w ∘ u))
def Equation993 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ z) ∘ (w ∘ u))
def Equation998 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (x ∘ u))
def Equation1003 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (y ∘ u))
def Equation1008 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (z ∘ u))
def Equation1013 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (w ∘ u))
def Equation1014 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ x))
def Equation1015 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ y))
def Equation1016 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ z))
def Equation1017 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ w))
def Equation1018 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ u))
def Equation1054 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (y ∘ z)) ∘ w)
def Equation1071 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ ((y ∘ (z ∘ w)) ∘ u)
def Equation1091 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((x ∘ (y ∘ z)) ∘ w)
def Equation1108 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((x ∘ (z ∘ w)) ∘ u)
def Equation1118 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (x ∘ z)) ∘ w)
def Equation1128 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (y ∘ z)) ∘ w)
def Equation1132 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ x)) ∘ w)
def Equation1136 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ y)) ∘ w)
def Equation1140 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ z)) ∘ w)
def Equation1141 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ x)
def Equation1142 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ y)
def Equation1143 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ z)
def Equation1144 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ w)
def Equation1145 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ u)
def Equation1162 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (x ∘ w)) ∘ u)
def Equation1179 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (y ∘ w)) ∘ u)
def Equation1196 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (z ∘ w)) ∘ u)
def Equation1201 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ x)) ∘ u)
def Equation1206 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ y)) ∘ u)
def Equation1211 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ z)) ∘ u)
def Equation1216 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ w)) ∘ u)
def Equation1217 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ x)
def Equation1218 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ y)
def Equation1219 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ z)
def Equation1220 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ w)
def Equation1221 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ u)
def Equation1257 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ y) ∘ z) ∘ w)
def Equation1274 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ (((y ∘ z) ∘ w) ∘ u)
def Equation1294 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((x ∘ y) ∘ z) ∘ w)
def Equation1311 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((x ∘ z) ∘ w) ∘ u)
def Equation1321 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ x) ∘ z) ∘ w)
def Equation1331 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ y) ∘ z) ∘ w)
def Equation1335 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ x) ∘ w)
def Equation1339 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ y) ∘ w)
def Equation1343 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ z) ∘ w)
def Equation1344 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ w) ∘ x)
def Equation1345 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ w) ∘ y)
def Equation1346 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ w) ∘ z)
def Equation1347 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ w) ∘ w)
def Equation1348 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((y ∘ z) ∘ w) ∘ u)
def Equation1365 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ x) ∘ w) ∘ u)
def Equation1382 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ y) ∘ w) ∘ u)
def Equation1399 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ z) ∘ w) ∘ u)
def Equation1404 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ x) ∘ u)
def Equation1409 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ y) ∘ u)
def Equation1414 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ z) ∘ u)
def Equation1419 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ w) ∘ u)
def Equation1420 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ x)
def Equation1421 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ y)
def Equation1422 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ z)
def Equation1423 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ w)
def Equation1424 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ u)
def Equation1460 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (y ∘ (z ∘ w))
def Equation1477 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ y) ∘ (z ∘ (w ∘ u))
def Equation1497 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ (y ∘ (z ∘ w))
def Equation1514 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ x) ∘ (z ∘ (w ∘ u))
def Equation1524 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (x ∘ (z ∘ w))
def Equation1534 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (y ∘ (z ∘ w))
def Equation1538 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (x ∘ w))
def Equation1542 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (y ∘ w))
def Equation1546 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (z ∘ w))
def Equation1547 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (w ∘ x))
def Equation1548 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (w ∘ y))
def Equation1549 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (w ∘ z))
def Equation1550 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (w ∘ w))
def Equation1551 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ y) ∘ (z ∘ (w ∘ u))
def Equation1568 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (x ∘ (w ∘ u))
def Equation1585 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (y ∘ (w ∘ u))
def Equation1602 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (z ∘ (w ∘ u))
def Equation1607 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (x ∘ u))
def Equation1612 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (y ∘ u))
def Equation1617 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (z ∘ u))
def Equation1622 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (w ∘ u))
def Equation1623 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ x))
def Equation1624 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ y))
def Equation1625 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ z))
def Equation1626 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ w))
def Equation1627 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ u))
def Equation1663 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((y ∘ z) ∘ w)
def Equation1680 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ y) ∘ ((z ∘ w) ∘ u)
def Equation1700 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ x) ∘ ((y ∘ z) ∘ w)
def Equation1717 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ x) ∘ ((z ∘ w) ∘ u)
def Equation1727 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((x ∘ z) ∘ w)
def Equation1737 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((y ∘ z) ∘ w)
def Equation1741 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ x) ∘ w)
def Equation1745 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ y) ∘ w)
def Equation1749 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ z) ∘ w)
def Equation1750 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ x)
def Equation1751 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ y)
def Equation1752 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ z)
def Equation1753 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ w)
def Equation1754 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ u)
def Equation1771 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((x ∘ w) ∘ u)
def Equation1788 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((y ∘ w) ∘ u)
def Equation1805 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((z ∘ w) ∘ u)
def Equation1810 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ x) ∘ u)
def Equation1815 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ y) ∘ u)
def Equation1820 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ z) ∘ u)
def Equation1825 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ w) ∘ u)
def Equation1826 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ x)
def Equation1827 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ y)
def Equation1828 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ z)
def Equation1829 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ w)
def Equation1830 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ u)
def Equation1866 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ y)) ∘ (z ∘ w)
def Equation1883 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ (y ∘ z)) ∘ (w ∘ u)
def Equation1903 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ y)) ∘ (z ∘ w)
def Equation1920 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (x ∘ z)) ∘ (w ∘ u)
def Equation1930 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ x)) ∘ (z ∘ w)
def Equation1940 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ y)) ∘ (z ∘ w)
def Equation1944 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (x ∘ w)
def Equation1948 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (y ∘ w)
def Equation1952 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (z ∘ w)
def Equation1953 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ x)
def Equation1954 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ y)
def Equation1955 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ z)
def Equation1956 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ w)
def Equation1957 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ u)
def Equation1974 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ x)) ∘ (w ∘ u)
def Equation1991 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ y)) ∘ (w ∘ u)
def Equation2008 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ z)) ∘ (w ∘ u)
def Equation2013 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (x ∘ u)
def Equation2018 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (y ∘ u)
def Equation2023 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (z ∘ u)
def Equation2028 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (w ∘ u)
def Equation2029 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ x)
def Equation2030 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ y)
def Equation2031 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ z)
def Equation2032 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ w)
def Equation2033 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ u)
def Equation2069 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ y) ∘ (z ∘ w)
def Equation2086 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((x ∘ y) ∘ z) ∘ (w ∘ u)
def Equation2106 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ y) ∘ (z ∘ w)
def Equation2123 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ x) ∘ z) ∘ (w ∘ u)
def Equation2133 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ x) ∘ (z ∘ w)
def Equation2143 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ y) ∘ (z ∘ w)
def Equation2147 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (x ∘ w)
def Equation2151 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (y ∘ w)
def Equation2155 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (z ∘ w)
def Equation2156 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ x)
def Equation2157 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ y)
def Equation2158 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ z)
def Equation2159 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ w)
def Equation2160 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ u)
def Equation2177 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ x) ∘ (w ∘ u)
def Equation2194 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ y) ∘ (w ∘ u)
def Equation2211 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ z) ∘ (w ∘ u)
def Equation2216 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (x ∘ u)
def Equation2221 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (y ∘ u)
def Equation2226 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (z ∘ u)
def Equation2231 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (w ∘ u)
def Equation2232 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ x)
def Equation2233 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ y)
def Equation2234 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ z)
def Equation2235 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ w)
def Equation2236 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ u)
def Equation2272 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (y ∘ z))) ∘ w
def Equation2289 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ (y ∘ (z ∘ w))) ∘ u
def Equation2309 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (x ∘ (y ∘ z))) ∘ w
def Equation2326 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (x ∘ (z ∘ w))) ∘ u
def Equation2336 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (x ∘ z))) ∘ w
def Equation2346 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (y ∘ z))) ∘ w
def Equation2350 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ x))) ∘ w
def Equation2354 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ y))) ∘ w
def Equation2358 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ z))) ∘ w
def Equation2359 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ x
def Equation2360 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ y
def Equation2361 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ z
def Equation2362 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ w
def Equation2363 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ u
def Equation2380 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (x ∘ w))) ∘ u
def Equation2397 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (y ∘ w))) ∘ u
def Equation2414 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (z ∘ w))) ∘ u
def Equation2419 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ x))) ∘ u
def Equation2424 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ y))) ∘ u
def Equation2429 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ z))) ∘ u
def Equation2434 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ w))) ∘ u
def Equation2435 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ x
def Equation2436 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ y
def Equation2437 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ z
def Equation2438 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ w
def Equation2439 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ u
def Equation2475 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ y) ∘ z)) ∘ w
def Equation2492 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ ((y ∘ z) ∘ w)) ∘ u
def Equation2512 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((x ∘ y) ∘ z)) ∘ w
def Equation2529 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((x ∘ z) ∘ w)) ∘ u
def Equation2539 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ x) ∘ z)) ∘ w
def Equation2549 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ y) ∘ z)) ∘ w
def Equation2553 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ x)) ∘ w
def Equation2557 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ y)) ∘ w
def Equation2561 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ z)) ∘ w
def Equation2562 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ x
def Equation2563 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ y
def Equation2564 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ z
def Equation2565 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ w
def Equation2566 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ u
def Equation2583 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ x) ∘ w)) ∘ u
def Equation2600 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ y) ∘ w)) ∘ u
def Equation2617 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ z) ∘ w)) ∘ u
def Equation2622 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ x)) ∘ u
def Equation2627 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ y)) ∘ u
def Equation2632 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ z)) ∘ u
def Equation2637 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ w)) ∘ u
def Equation2638 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ x
def Equation2639 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ y
def Equation2640 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ z
def Equation2641 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ w
def Equation2642 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ u
def Equation2678 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (y ∘ z)) ∘ w
def Equation2695 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((x ∘ y) ∘ (z ∘ w)) ∘ u
def Equation2715 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ x) ∘ (y ∘ z)) ∘ w
def Equation2732 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ x) ∘ (z ∘ w)) ∘ u
def Equation2742 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (x ∘ z)) ∘ w
def Equation2752 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (y ∘ z)) ∘ w
def Equation2756 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ x)) ∘ w
def Equation2760 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ y)) ∘ w
def Equation2764 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ z)) ∘ w
def Equation2765 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ x
def Equation2766 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ y
def Equation2767 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ z
def Equation2768 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ w
def Equation2769 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ u
def Equation2786 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (x ∘ w)) ∘ u
def Equation2803 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (y ∘ w)) ∘ u
def Equation2820 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (z ∘ w)) ∘ u
def Equation2825 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ x)) ∘ u
def Equation2830 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ y)) ∘ u
def Equation2835 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ z)) ∘ u
def Equation2840 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ w)) ∘ u
def Equation2841 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ x
def Equation2842 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ y
def Equation2843 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ z
def Equation2844 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ w
def Equation2845 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ u
def Equation2881 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ y)) ∘ z) ∘ w
def Equation2898 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((x ∘ (y ∘ z)) ∘ w) ∘ u
def Equation2918 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (x ∘ y)) ∘ z) ∘ w
def Equation2935 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (x ∘ z)) ∘ w) ∘ u
def Equation2945 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ x)) ∘ z) ∘ w
def Equation2955 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ y)) ∘ z) ∘ w
def Equation2959 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ x) ∘ w
def Equation2963 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ y) ∘ w
def Equation2967 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ z) ∘ w
def Equation2968 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ x
def Equation2969 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ y
def Equation2970 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ z
def Equation2971 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ w
def Equation2972 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ u
def Equation2989 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ x)) ∘ w) ∘ u
def Equation3006 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ y)) ∘ w) ∘ u
def Equation3023 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ z)) ∘ w) ∘ u
def Equation3028 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ x) ∘ u
def Equation3033 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ y) ∘ u
def Equation3038 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ z) ∘ u
def Equation3043 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ w) ∘ u
def Equation3044 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ x
def Equation3045 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ y
def Equation3046 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ z
def Equation3047 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ w
def Equation3048 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ u
def Equation3084 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ y) ∘ z) ∘ w
def Equation3101 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((x ∘ y) ∘ z) ∘ w) ∘ u
def Equation3121 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ x) ∘ y) ∘ z) ∘ w
def Equation3138 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ x) ∘ z) ∘ w) ∘ u
def Equation3148 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ x) ∘ z) ∘ w
def Equation3158 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ y) ∘ z) ∘ w
def Equation3162 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ x) ∘ w
def Equation3166 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ y) ∘ w
def Equation3170 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ z) ∘ w
def Equation3171 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ x
def Equation3172 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ y
def Equation3173 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ z
def Equation3174 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ w
def Equation3175 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ u
def Equation3192 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ x) ∘ w) ∘ u
def Equation3209 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ y) ∘ w) ∘ u
def Equation3226 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ z) ∘ w) ∘ u
def Equation3231 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ x) ∘ u
def Equation3236 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ y) ∘ u
def Equation3241 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ z) ∘ u
def Equation3246 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ w) ∘ u
def Equation3247 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ x
def Equation3248 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ y
def Equation3249 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ z
def Equation3250 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ w
def Equation3251 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ u
def Equation3287 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (y ∘ (z ∘ w))
def Equation3304 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = y ∘ (z ∘ (w ∘ u))
def Equation3324 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ (y ∘ (z ∘ w))
def Equation3341 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = x ∘ (z ∘ (w ∘ u))
def Equation3351 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (x ∘ (z ∘ w))
def Equation3361 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (y ∘ (z ∘ w))
def Equation3365 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (x ∘ w))
def Equation3369 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (y ∘ w))
def Equation3373 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (z ∘ w))
def Equation3374 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (w ∘ x))
def Equation3375 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (w ∘ y))
def Equation3376 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (w ∘ z))
def Equation3377 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (w ∘ w))
def Equation3378 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = y ∘ (z ∘ (w ∘ u))
def Equation3395 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (x ∘ (w ∘ u))
def Equation3412 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (y ∘ (w ∘ u))
def Equation3429 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (z ∘ (w ∘ u))
def Equation3434 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (x ∘ u))
def Equation3439 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (y ∘ u))
def Equation3444 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (z ∘ u))
def Equation3449 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (w ∘ u))
def Equation3450 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ x))
def Equation3451 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ y))
def Equation3452 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ z))
def Equation3453 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ w))
def Equation3454 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ u))
def Equation3490 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((y ∘ z) ∘ w)
def Equation3507 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = y ∘ ((z ∘ w) ∘ u)
def Equation3527 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = x ∘ ((y ∘ z) ∘ w)
def Equation3544 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = x ∘ ((z ∘ w) ∘ u)
def Equation3554 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((x ∘ z) ∘ w)
def Equation3564 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((y ∘ z) ∘ w)
def Equation3568 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ x) ∘ w)
def Equation3572 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ y) ∘ w)
def Equation3576 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ z) ∘ w)
def Equation3577 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ w) ∘ x)
def Equation3578 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ w) ∘ y)
def Equation3579 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ w) ∘ z)
def Equation3580 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ w) ∘ w)
def Equation3581 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = y ∘ ((z ∘ w) ∘ u)
def Equation3598 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((x ∘ w) ∘ u)
def Equation3615 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((y ∘ w) ∘ u)
def Equation3632 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((z ∘ w) ∘ u)
def Equation3637 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ x) ∘ u)
def Equation3642 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ y) ∘ u)
def Equation3647 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ z) ∘ u)
def Equation3652 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ w) ∘ u)
def Equation3653 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ x)
def Equation3654 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ y)
def Equation3655 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ z)
def Equation3656 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ w)
def Equation3657 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ u)
def Equation3693 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ y) ∘ (z ∘ w)
def Equation3710 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = (y ∘ z) ∘ (w ∘ u)
def Equation3730 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ y) ∘ (z ∘ w)
def Equation3747 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (x ∘ z) ∘ (w ∘ u)
def Equation3757 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ x) ∘ (z ∘ w)
def Equation3767 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ y) ∘ (z ∘ w)
def Equation3771 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (x ∘ w)
def Equation3775 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (y ∘ w)
def Equation3779 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (z ∘ w)
def Equation3780 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (w ∘ x)
def Equation3781 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (w ∘ y)
def Equation3782 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (w ∘ z)
def Equation3783 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (w ∘ w)
def Equation3784 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (y ∘ z) ∘ (w ∘ u)
def Equation3801 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ x) ∘ (w ∘ u)
def Equation3818 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ y) ∘ (w ∘ u)
def Equation3835 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ z) ∘ (w ∘ u)
def Equation3840 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (x ∘ u)
def Equation3845 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (y ∘ u)
def Equation3850 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (z ∘ u)
def Equation3855 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (w ∘ u)
def Equation3856 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ x)
def Equation3857 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ y)
def Equation3858 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ z)
def Equation3859 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ w)
def Equation3860 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ u)
def Equation3896 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (y ∘ z)) ∘ w
def Equation3913 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = (y ∘ (z ∘ w)) ∘ u
def Equation3933 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (x ∘ (y ∘ z)) ∘ w
def Equation3950 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (x ∘ (z ∘ w)) ∘ u
def Equation3960 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (x ∘ z)) ∘ w
def Equation3970 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (y ∘ z)) ∘ w
def Equation3974 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ x)) ∘ w
def Equation3978 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ y)) ∘ w
def Equation3982 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ z)) ∘ w
def Equation3983 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ w)) ∘ x
def Equation3984 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ w)) ∘ y
def Equation3985 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ w)) ∘ z
def Equation3986 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ w)) ∘ w
def Equation3987 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (y ∘ (z ∘ w)) ∘ u
def Equation4004 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (x ∘ w)) ∘ u
def Equation4021 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (y ∘ w)) ∘ u
def Equation4038 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (z ∘ w)) ∘ u
def Equation4043 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ x)) ∘ u
def Equation4048 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ y)) ∘ u
def Equation4053 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ z)) ∘ u
def Equation4058 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ w)) ∘ u
def Equation4059 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ x
def Equation4060 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ y
def Equation4061 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ z
def Equation4062 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ w
def Equation4063 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ u
def Equation4099 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ y) ∘ z) ∘ w
def Equation4116 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = ((y ∘ z) ∘ w) ∘ u
def Equation4136 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((x ∘ y) ∘ z) ∘ w
def Equation4153 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((x ∘ z) ∘ w) ∘ u
def Equation4163 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ x) ∘ z) ∘ w
def Equation4173 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ y) ∘ z) ∘ w
def Equation4177 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ x) ∘ w
def Equation4181 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ y) ∘ w
def Equation4185 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ z) ∘ w
def Equation4186 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ w) ∘ x
def Equation4187 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ w) ∘ y
def Equation4188 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ w) ∘ z
def Equation4189 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ w) ∘ w
def Equation4190 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((y ∘ z) ∘ w) ∘ u
def Equation4207 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ x) ∘ w) ∘ u
def Equation4224 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ y) ∘ w) ∘ u
def Equation4241 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ z) ∘ w) ∘ u
def Equation4246 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ x) ∘ u
def Equation4251 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ y) ∘ u
def Equation4256 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ z) ∘ u
def Equation4261 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ w) ∘ u
def Equation4262 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ x
def Equation4263 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ y
def Equation4264 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ z
def Equation4265 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ w
def Equation4266 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ u
def Equation4298 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = y ∘ (z ∘ w)
def Equation4313 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (x ∘ y) = z ∘ (w ∘ u)
def Equation4326 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = y ∘ (z ∘ w)
def Equation4338 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ x) = z ∘ (w ∘ u)
def Equation4342 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = x ∘ (z ∘ w)
def Equation4347 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = y ∘ (z ∘ w)
def Equation4352 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = z ∘ (y ∘ w)
def Equation4354 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = z ∘ (w ∘ y)
def Equation4356 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ y) = z ∘ (w ∘ u)
def Equation4361 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = x ∘ (w ∘ u)
def Equation4368 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = y ∘ (w ∘ u)
def Equation4373 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = z ∘ (w ∘ u)
def Equation4375 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (y ∘ u)
def Equation4377 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (z ∘ u)
def Equation4378 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (u ∘ z)
def Equation4414 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (y ∘ z) ∘ w
def Equation4431 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (x ∘ y) = (z ∘ w) ∘ u
def Equation4451 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ x) = (y ∘ z) ∘ w
def Equation4468 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ x) = (z ∘ w) ∘ u
def Equation4478 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (x ∘ z) ∘ w
def Equation4488 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (y ∘ z) ∘ w
def Equation4492 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ x) ∘ w
def Equation4496 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ y) ∘ w
def Equation4500 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ z) ∘ w
def Equation4501 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ w) ∘ x
def Equation4502 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ w) ∘ y
def Equation4503 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ w) ∘ z
def Equation4504 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ w) ∘ w
def Equation4505 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ y) = (z ∘ w) ∘ u
def Equation4522 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (x ∘ w) ∘ u
def Equation4539 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (y ∘ w) ∘ u
def Equation4556 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (z ∘ w) ∘ u
def Equation4561 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ x) ∘ u
def Equation4566 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ y) ∘ u
def Equation4571 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ z) ∘ u
def Equation4576 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ w) ∘ u
def Equation4577 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ x
def Equation4578 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ y
def Equation4579 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ z
def Equation4580 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ w
def Equation4581 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ u
def Equation4613 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (y ∘ z) ∘ w
def Equation4628 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ x) ∘ y = (z ∘ w) ∘ u
def Equation4641 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ x = (y ∘ z) ∘ w
def Equation4653 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ x = (z ∘ w) ∘ u
def Equation4657 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ y = (x ∘ z) ∘ w
def Equation4662 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ y = (y ∘ z) ∘ w
def Equation4667 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ y = (z ∘ y) ∘ w
def Equation4669 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ y = (z ∘ w) ∘ y
def Equation4671 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ y = (z ∘ w) ∘ u
def Equation4676 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (x ∘ w) ∘ u
def Equation4683 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (y ∘ w) ∘ u
def Equation4688 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (z ∘ w) ∘ u
def Equation4690 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ y) ∘ u
def Equation4692 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ z) ∘ u
def Equation4693 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ u) ∘ z
theorem Equation98_implies_Equation81 (G : Type*) [Magma G] (h : Equation98 G) : Equation81 G := λ x y z w => h x y y z w
theorem Equation150_implies_Equation133 (G : Type*) [Magma G] (h : Equation150 G) : Equation133 G := λ x y z w => h x y y z w
theorem Equation202_implies_Equation185 (G : Type*) [Magma G] (h : Equation202 G) : Equation185 G := λ x y z w => h x y y z w
theorem Equation254_implies_Equation237 (G : Type*) [Magma G] (h : Equation254 G) : Equation237 G := λ x y z w => h x y y z w
theorem Equation306_implies_Equation289 (G : Type*) [Magma G] (h : Equation306 G) : Equation289 G := λ x y z w => h x y y z w
theorem Equation358_implies_Equation341 (G : Type*) [Magma G] (h : Equation358 G) : Equation341 G := λ x y z w => h x y y z w
theorem Equation410_implies_Equation393 (G : Type*) [Magma G] (h : Equation410 G) : Equation393 G := λ x y z w => h x y y z w
theorem Equation462_implies_Equation445 (G : Type*) [Magma G] (h : Equation462 G) : Equation445 G := λ x y z w => h x y y z w
theorem Equation499_implies_Equation482 (G : Type*) [Magma G] (h : Equation499 G) : Equation482 G := λ x y z w => h x y y z w
theorem Equation536_implies_Equation519 (G : Type*) [Magma G] (h : Equation536 G) : Equation519 G := λ x y z w => h x y y z w
theorem Equation553_implies_Equation509 (G : Type*) [Magma G] (h : Equation553 G) : Equation509 G := λ x y z w => h x y y z w
theorem Equation570_implies_Equation519 (G : Type*) [Magma G] (h : Equation570 G) : Equation519 G := λ x y z w => h x y y z w
theorem Equation587_implies_Equation519 (G : Type*) [Magma G] (h : Equation587 G) : Equation519 G := λ x y z w => h x y y z w
theorem Equation592_implies_Equation523 (G : Type*) [Magma G] (h : Equation592 G) : Equation523 G := λ x y z w => h x y y z w
theorem Equation597_implies_Equation527 (G : Type*) [Magma G] (h : Equation597 G) : Equation527 G := λ x y z w => h x y y z w
theorem Equation602_implies_Equation527 (G : Type*) [Magma G] (h : Equation602 G) : Equation527 G := λ x y z w => h x y y z w
theorem Equation607_implies_Equation531 (G : Type*) [Magma G] (h : Equation607 G) : Equation531 G := λ x y z w => h x y y z w
theorem Equation608_implies_Equation532 (G : Type*) [Magma G] (h : Equation608 G) : Equation532 G := λ x y z w => h x y y z w
theorem Equation609_implies_Equation533 (G : Type*) [Magma G] (h : Equation609 G) : Equation533 G := λ x y z w => h x y y z w
theorem Equation610_implies_Equation533 (G : Type*) [Magma G] (h : Equation610 G) : Equation533 G := λ x y z w => h x y y z w
theorem Equation611_implies_Equation534 (G : Type*) [Magma G] (h : Equation611 G) : Equation534 G := λ x y z w => h x y y z w
theorem Equation612_implies_Equation535 (G : Type*) [Magma G] (h : Equation612 G) : Equation535 G := λ x y z w => h x y y z w
theorem Equation665_implies_Equation648 (G : Type*) [Magma G] (h : Equation665 G) : Equation648 G := λ x y z w => h x y y z w
theorem Equation702_implies_Equation685 (G : Type*) [Magma G] (h : Equation702 G) : Equation685 G := λ x y z w => h x y y z w
theorem Equation739_implies_Equation722 (G : Type*) [Magma G] (h : Equation739 G) : Equation722 G := λ x y z w => h x y y z w
theorem Equation756_implies_Equation712 (G : Type*) [Magma G] (h : Equation756 G) : Equation712 G := λ x y z w => h x y y z w
theorem Equation773_implies_Equation722 (G : Type*) [Magma G] (h : Equation773 G) : Equation722 G := λ x y z w => h x y y z w
theorem Equation790_implies_Equation722 (G : Type*) [Magma G] (h : Equation790 G) : Equation722 G := λ x y z w => h x y y z w
theorem Equation795_implies_Equation726 (G : Type*) [Magma G] (h : Equation795 G) : Equation726 G := λ x y z w => h x y y z w
theorem Equation800_implies_Equation730 (G : Type*) [Magma G] (h : Equation800 G) : Equation730 G := λ x y z w => h x y y z w
theorem Equation805_implies_Equation730 (G : Type*) [Magma G] (h : Equation805 G) : Equation730 G := λ x y z w => h x y y z w
theorem Equation810_implies_Equation734 (G : Type*) [Magma G] (h : Equation810 G) : Equation734 G := λ x y z w => h x y y z w
theorem Equation811_implies_Equation735 (G : Type*) [Magma G] (h : Equation811 G) : Equation735 G := λ x y z w => h x y y z w
theorem Equation812_implies_Equation736 (G : Type*) [Magma G] (h : Equation812 G) : Equation736 G := λ x y z w => h x y y z w
theorem Equation813_implies_Equation736 (G : Type*) [Magma G] (h : Equation813 G) : Equation736 G := λ x y z w => h x y y z w
theorem Equation814_implies_Equation737 (G : Type*) [Magma G] (h : Equation814 G) : Equation737 G := λ x y z w => h x y y z w
theorem Equation815_implies_Equation738 (G : Type*) [Magma G] (h : Equation815 G) : Equation738 G := λ x y z w => h x y y z w
theorem Equation868_implies_Equation851 (G : Type*) [Magma G] (h : Equation868 G) : Equation851 G := λ x y z w => h x y y z w
theorem Equation905_implies_Equation888 (G : Type*) [Magma G] (h : Equation905 G) : Equation888 G := λ x y z w => h x y y z w
theorem Equation942_implies_Equation925 (G : Type*) [Magma G] (h : Equation942 G) : Equation925 G := λ x y z w => h x y y z w
theorem Equation959_implies_Equation915 (G : Type*) [Magma G] (h : Equation959 G) : Equation915 G := λ x y z w => h x y y z w
theorem Equation976_implies_Equation925 (G : Type*) [Magma G] (h : Equation976 G) : Equation925 G := λ x y z w => h x y y z w
theorem Equation993_implies_Equation925 (G : Type*) [Magma G] (h : Equation993 G) : Equation925 G := λ x y z w => h x y y z w
theorem Equation998_implies_Equation929 (G : Type*) [Magma G] (h : Equation998 G) : Equation929 G := λ x y z w => h x y y z w
theorem Equation1003_implies_Equation933 (G : Type*) [Magma G] (h : Equation1003 G) : Equation933 G := λ x y z w => h x y y z w
theorem Equation1008_implies_Equation933 (G : Type*) [Magma G] (h : Equation1008 G) : Equation933 G := λ x y z w => h x y y z w
theorem Equation1013_implies_Equation937 (G : Type*) [Magma G] (h : Equation1013 G) : Equation937 G := λ x y z w => h x y y z w
theorem Equation1014_implies_Equation938 (G : Type*) [Magma G] (h : Equation1014 G) : Equation938 G := λ x y z w => h x y y z w
theorem Equation1015_implies_Equation939 (G : Type*) [Magma G] (h : Equation1015 G) : Equation939 G := λ x y z w => h x y y z w
theorem Equation1016_implies_Equation939 (G : Type*) [Magma G] (h : Equation1016 G) : Equation939 G := λ x y z w => h x y y z w
theorem Equation1017_implies_Equation940 (G : Type*) [Magma G] (h : Equation1017 G) : Equation940 G := λ x y z w => h x y y z w
theorem Equation1018_implies_Equation941 (G : Type*) [Magma G] (h : Equation1018 G) : Equation941 G := λ x y z w => h x y y z w
theorem Equation1071_implies_Equation1054 (G : Type*) [Magma G] (h : Equation1071 G) : Equation1054 G := λ x y z w => h x y y z w
theorem Equation1108_implies_Equation1091 (G : Type*) [Magma G] (h : Equation1108 G) : Equation1091 G := λ x y z w => h x y y z w
theorem Equation1145_implies_Equation1128 (G : Type*) [Magma G] (h : Equation1145 G) : Equation1128 G := λ x y z w => h x y y z w
theorem Equation1162_implies_Equation1118 (G : Type*) [Magma G] (h : Equation1162 G) : Equation1118 G := λ x y z w => h x y y z w
theorem Equation1179_implies_Equation1128 (G : Type*) [Magma G] (h : Equation1179 G) : Equation1128 G := λ x y z w => h x y y z w
theorem Equation1196_implies_Equation1128 (G : Type*) [Magma G] (h : Equation1196 G) : Equation1128 G := λ x y z w => h x y y z w
theorem Equation1201_implies_Equation1132 (G : Type*) [Magma G] (h : Equation1201 G) : Equation1132 G := λ x y z w => h x y y z w
theorem Equation1206_implies_Equation1136 (G : Type*) [Magma G] (h : Equation1206 G) : Equation1136 G := λ x y z w => h x y y z w
theorem Equation1211_implies_Equation1136 (G : Type*) [Magma G] (h : Equation1211 G) : Equation1136 G := λ x y z w => h x y y z w
theorem Equation1216_implies_Equation1140 (G : Type*) [Magma G] (h : Equation1216 G) : Equation1140 G := λ x y z w => h x y y z w
theorem Equation1217_implies_Equation1141 (G : Type*) [Magma G] (h : Equation1217 G) : Equation1141 G := λ x y z w => h x y y z w
theorem Equation1218_implies_Equation1142 (G : Type*) [Magma G] (h : Equation1218 G) : Equation1142 G := λ x y z w => h x y y z w
theorem Equation1219_implies_Equation1142 (G : Type*) [Magma G] (h : Equation1219 G) : Equation1142 G := λ x y z w => h x y y z w
theorem Equation1220_implies_Equation1143 (G : Type*) [Magma G] (h : Equation1220 G) : Equation1143 G := λ x y z w => h x y y z w
theorem Equation1221_implies_Equation1144 (G : Type*) [Magma G] (h : Equation1221 G) : Equation1144 G := λ x y z w => h x y y z w
theorem Equation1274_implies_Equation1257 (G : Type*) [Magma G] (h : Equation1274 G) : Equation1257 G := λ x y z w => h x y y z w
theorem Equation1311_implies_Equation1294 (G : Type*) [Magma G] (h : Equation1311 G) : Equation1294 G := λ x y z w => h x y y z w
theorem Equation1348_implies_Equation1331 (G : Type*) [Magma G] (h : Equation1348 G) : Equation1331 G := λ x y z w => h x y y z w
theorem Equation1365_implies_Equation1321 (G : Type*) [Magma G] (h : Equation1365 G) : Equation1321 G := λ x y z w => h x y y z w
theorem Equation1382_implies_Equation1331 (G : Type*) [Magma G] (h : Equation1382 G) : Equation1331 G := λ x y z w => h x y y z w
theorem Equation1399_implies_Equation1331 (G : Type*) [Magma G] (h : Equation1399 G) : Equation1331 G := λ x y z w => h x y y z w
theorem Equation1404_implies_Equation1335 (G : Type*) [Magma G] (h : Equation1404 G) : Equation1335 G := λ x y z w => h x y y z w
theorem Equation1409_implies_Equation1339 (G : Type*) [Magma G] (h : Equation1409 G) : Equation1339 G := λ x y z w => h x y y z w
theorem Equation1414_implies_Equation1339 (G : Type*) [Magma G] (h : Equation1414 G) : Equation1339 G := λ x y z w => h x y y z w
theorem Equation1419_implies_Equation1343 (G : Type*) [Magma G] (h : Equation1419 G) : Equation1343 G := λ x y z w => h x y y z w
theorem Equation1420_implies_Equation1344 (G : Type*) [Magma G] (h : Equation1420 G) : Equation1344 G := λ x y z w => h x y y z w
theorem Equation1421_implies_Equation1345 (G : Type*) [Magma G] (h : Equation1421 G) : Equation1345 G := λ x y z w => h x y y z w
theorem Equation1422_implies_Equation1345 (G : Type*) [Magma G] (h : Equation1422 G) : Equation1345 G := λ x y z w => h x y y z w
theorem Equation1423_implies_Equation1346 (G : Type*) [Magma G] (h : Equation1423 G) : Equation1346 G := λ x y z w => h x y y z w
theorem Equation1424_implies_Equation1347 (G : Type*) [Magma G] (h : Equation1424 G) : Equation1347 G := λ x y z w => h x y y z w
theorem Equation1477_implies_Equation1460 (G : Type*) [Magma G] (h : Equation1477 G) : Equation1460 G := λ x y z w => h x y y z w
theorem Equation1514_implies_Equation1497 (G : Type*) [Magma G] (h : Equation1514 G) : Equation1497 G := λ x y z w => h x y y z w
theorem Equation1551_implies_Equation1534 (G : Type*) [Magma G] (h : Equation1551 G) : Equation1534 G := λ x y z w => h x y y z w
theorem Equation1568_implies_Equation1524 (G : Type*) [Magma G] (h : Equation1568 G) : Equation1524 G := λ x y z w => h x y y z w
theorem Equation1585_implies_Equation1534 (G : Type*) [Magma G] (h : Equation1585 G) : Equation1534 G := λ x y z w => h x y y z w
theorem Equation1602_implies_Equation1534 (G : Type*) [Magma G] (h : Equation1602 G) : Equation1534 G := λ x y z w => h x y y z w
theorem Equation1607_implies_Equation1538 (G : Type*) [Magma G] (h : Equation1607 G) : Equation1538 G := λ x y z w => h x y y z w
theorem Equation1612_implies_Equation1542 (G : Type*) [Magma G] (h : Equation1612 G) : Equation1542 G := λ x y z w => h x y y z w
theorem Equation1617_implies_Equation1542 (G : Type*) [Magma G] (h : Equation1617 G) : Equation1542 G := λ x y z w => h x y y z w
theorem Equation1622_implies_Equation1546 (G : Type*) [Magma G] (h : Equation1622 G) : Equation1546 G := λ x y z w => h x y y z w
theorem Equation1623_implies_Equation1547 (G : Type*) [Magma G] (h : Equation1623 G) : Equation1547 G := λ x y z w => h x y y z w
theorem Equation1624_implies_Equation1548 (G : Type*) [Magma G] (h : Equation1624 G) : Equation1548 G := λ x y z w => h x y y z w
theorem Equation1625_implies_Equation1548 (G : Type*) [Magma G] (h : Equation1625 G) : Equation1548 G := λ x y z w => h x y y z w
theorem Equation1626_implies_Equation1549 (G : Type*) [Magma G] (h : Equation1626 G) : Equation1549 G := λ x y z w => h x y y z w
theorem Equation1627_implies_Equation1550 (G : Type*) [Magma G] (h : Equation1627 G) : Equation1550 G := λ x y z w => h x y y z w
theorem Equation1680_implies_Equation1663 (G : Type*) [Magma G] (h : Equation1680 G) : Equation1663 G := λ x y z w => h x y y z w
theorem Equation1717_implies_Equation1700 (G : Type*) [Magma G] (h : Equation1717 G) : Equation1700 G := λ x y z w => h x y y z w
theorem Equation1754_implies_Equation1737 (G : Type*) [Magma G] (h : Equation1754 G) : Equation1737 G := λ x y z w => h x y y z w
theorem Equation1771_implies_Equation1727 (G : Type*) [Magma G] (h : Equation1771 G) : Equation1727 G := λ x y z w => h x y y z w
theorem Equation1788_implies_Equation1737 (G : Type*) [Magma G] (h : Equation1788 G) : Equation1737 G := λ x y z w => h x y y z w
theorem Equation1805_implies_Equation1737 (G : Type*) [Magma G] (h : Equation1805 G) : Equation1737 G := λ x y z w => h x y y z w
theorem Equation1810_implies_Equation1741 (G : Type*) [Magma G] (h : Equation1810 G) : Equation1741 G := λ x y z w => h x y y z w
theorem Equation1815_implies_Equation1745 (G : Type*) [Magma G] (h : Equation1815 G) : Equation1745 G := λ x y z w => h x y y z w
theorem Equation1820_implies_Equation1745 (G : Type*) [Magma G] (h : Equation1820 G) : Equation1745 G := λ x y z w => h x y y z w
theorem Equation1825_implies_Equation1749 (G : Type*) [Magma G] (h : Equation1825 G) : Equation1749 G := λ x y z w => h x y y z w
theorem Equation1826_implies_Equation1750 (G : Type*) [Magma G] (h : Equation1826 G) : Equation1750 G := λ x y z w => h x y y z w
theorem Equation1827_implies_Equation1751 (G : Type*) [Magma G] (h : Equation1827 G) : Equation1751 G := λ x y z w => h x y y z w
theorem Equation1828_implies_Equation1751 (G : Type*) [Magma G] (h : Equation1828 G) : Equation1751 G := λ x y z w => h x y y z w
theorem Equation1829_implies_Equation1752 (G : Type*) [Magma G] (h : Equation1829 G) : Equation1752 G := λ x y z w => h x y y z w
theorem Equation1830_implies_Equation1753 (G : Type*) [Magma G] (h : Equation1830 G) : Equation1753 G := λ x y z w => h x y y z w
theorem Equation1883_implies_Equation1866 (G : Type*) [Magma G] (h : Equation1883 G) : Equation1866 G := λ x y z w => h x y y z w
theorem Equation1920_implies_Equation1903 (G : Type*) [Magma G] (h : Equation1920 G) : Equation1903 G := λ x y z w => h x y y z w
theorem Equation1957_implies_Equation1940 (G : Type*) [Magma G] (h : Equation1957 G) : Equation1940 G := λ x y z w => h x y y z w
theorem Equation1974_implies_Equation1930 (G : Type*) [Magma G] (h : Equation1974 G) : Equation1930 G := λ x y z w => h x y y z w
theorem Equation1991_implies_Equation1940 (G : Type*) [Magma G] (h : Equation1991 G) : Equation1940 G := λ x y z w => h x y y z w
theorem Equation2008_implies_Equation1940 (G : Type*) [Magma G] (h : Equation2008 G) : Equation1940 G := λ x y z w => h x y y z w
theorem Equation2013_implies_Equation1944 (G : Type*) [Magma G] (h : Equation2013 G) : Equation1944 G := λ x y z w => h x y y z w
theorem Equation2018_implies_Equation1948 (G : Type*) [Magma G] (h : Equation2018 G) : Equation1948 G := λ x y z w => h x y y z w
theorem Equation2023_implies_Equation1948 (G : Type*) [Magma G] (h : Equation2023 G) : Equation1948 G := λ x y z w => h x y y z w
theorem Equation2028_implies_Equation1952 (G : Type*) [Magma G] (h : Equation2028 G) : Equation1952 G := λ x y z w => h x y y z w
theorem Equation2029_implies_Equation1953 (G : Type*) [Magma G] (h : Equation2029 G) : Equation1953 G := λ x y z w => h x y y z w
theorem Equation2030_implies_Equation1954 (G : Type*) [Magma G] (h : Equation2030 G) : Equation1954 G := λ x y z w => h x y y z w
theorem Equation2031_implies_Equation1954 (G : Type*) [Magma G] (h : Equation2031 G) : Equation1954 G := λ x y z w => h x y y z w
theorem Equation2032_implies_Equation1955 (G : Type*) [Magma G] (h : Equation2032 G) : Equation1955 G := λ x y z w => h x y y z w
theorem Equation2033_implies_Equation1956 (G : Type*) [Magma G] (h : Equation2033 G) : Equation1956 G := λ x y z w => h x y y z w
theorem Equation2086_implies_Equation2069 (G : Type*) [Magma G] (h : Equation2086 G) : Equation2069 G := λ x y z w => h x y y z w
theorem Equation2123_implies_Equation2106 (G : Type*) [Magma G] (h : Equation2123 G) : Equation2106 G := λ x y z w => h x y y z w
theorem Equation2160_implies_Equation2143 (G : Type*) [Magma G] (h : Equation2160 G) : Equation2143 G := λ x y z w => h x y y z w
theorem Equation2177_implies_Equation2133 (G : Type*) [Magma G] (h : Equation2177 G) : Equation2133 G := λ x y z w => h x y y z w
theorem Equation2194_implies_Equation2143 (G : Type*) [Magma G] (h : Equation2194 G) : Equation2143 G := λ x y z w => h x y y z w
theorem Equation2211_implies_Equation2143 (G : Type*) [Magma G] (h : Equation2211 G) : Equation2143 G := λ x y z w => h x y y z w
theorem Equation2216_implies_Equation2147 (G : Type*) [Magma G] (h : Equation2216 G) : Equation2147 G := λ x y z w => h x y y z w
theorem Equation2221_implies_Equation2151 (G : Type*) [Magma G] (h : Equation2221 G) : Equation2151 G := λ x y z w => h x y y z w
theorem Equation2226_implies_Equation2151 (G : Type*) [Magma G] (h : Equation2226 G) : Equation2151 G := λ x y z w => h x y y z w
theorem Equation2231_implies_Equation2155 (G : Type*) [Magma G] (h : Equation2231 G) : Equation2155 G := λ x y z w => h x y y z w
theorem Equation2232_implies_Equation2156 (G : Type*) [Magma G] (h : Equation2232 G) : Equation2156 G := λ x y z w => h x y y z w
theorem Equation2233_implies_Equation2157 (G : Type*) [Magma G] (h : Equation2233 G) : Equation2157 G := λ x y z w => h x y y z w
theorem Equation2234_implies_Equation2157 (G : Type*) [Magma G] (h : Equation2234 G) : Equation2157 G := λ x y z w => h x y y z w
theorem Equation2235_implies_Equation2158 (G : Type*) [Magma G] (h : Equation2235 G) : Equation2158 G := λ x y z w => h x y y z w
theorem Equation2236_implies_Equation2159 (G : Type*) [Magma G] (h : Equation2236 G) : Equation2159 G := λ x y z w => h x y y z w
theorem Equation2289_implies_Equation2272 (G : Type*) [Magma G] (h : Equation2289 G) : Equation2272 G := λ x y z w => h x y y z w
theorem Equation2326_implies_Equation2309 (G : Type*) [Magma G] (h : Equation2326 G) : Equation2309 G := λ x y z w => h x y y z w
theorem Equation2363_implies_Equation2346 (G : Type*) [Magma G] (h : Equation2363 G) : Equation2346 G := λ x y z w => h x y y z w
theorem Equation2380_implies_Equation2336 (G : Type*) [Magma G] (h : Equation2380 G) : Equation2336 G := λ x y z w => h x y y z w
theorem Equation2397_implies_Equation2346 (G : Type*) [Magma G] (h : Equation2397 G) : Equation2346 G := λ x y z w => h x y y z w
theorem Equation2414_implies_Equation2346 (G : Type*) [Magma G] (h : Equation2414 G) : Equation2346 G := λ x y z w => h x y y z w
theorem Equation2419_implies_Equation2350 (G : Type*) [Magma G] (h : Equation2419 G) : Equation2350 G := λ x y z w => h x y y z w
theorem Equation2424_implies_Equation2354 (G : Type*) [Magma G] (h : Equation2424 G) : Equation2354 G := λ x y z w => h x y y z w
theorem Equation2429_implies_Equation2354 (G : Type*) [Magma G] (h : Equation2429 G) : Equation2354 G := λ x y z w => h x y y z w
theorem Equation2434_implies_Equation2358 (G : Type*) [Magma G] (h : Equation2434 G) : Equation2358 G := λ x y z w => h x y y z w
theorem Equation2435_implies_Equation2359 (G : Type*) [Magma G] (h : Equation2435 G) : Equation2359 G := λ x y z w => h x y y z w
theorem Equation2436_implies_Equation2360 (G : Type*) [Magma G] (h : Equation2436 G) : Equation2360 G := λ x y z w => h x y y z w
theorem Equation2437_implies_Equation2360 (G : Type*) [Magma G] (h : Equation2437 G) : Equation2360 G := λ x y z w => h x y y z w
theorem Equation2438_implies_Equation2361 (G : Type*) [Magma G] (h : Equation2438 G) : Equation2361 G := λ x y z w => h x y y z w
theorem Equation2439_implies_Equation2362 (G : Type*) [Magma G] (h : Equation2439 G) : Equation2362 G := λ x y z w => h x y y z w
theorem Equation2492_implies_Equation2475 (G : Type*) [Magma G] (h : Equation2492 G) : Equation2475 G := λ x y z w => h x y y z w
theorem Equation2529_implies_Equation2512 (G : Type*) [Magma G] (h : Equation2529 G) : Equation2512 G := λ x y z w => h x y y z w
theorem Equation2566_implies_Equation2549 (G : Type*) [Magma G] (h : Equation2566 G) : Equation2549 G := λ x y z w => h x y y z w
theorem Equation2583_implies_Equation2539 (G : Type*) [Magma G] (h : Equation2583 G) : Equation2539 G := λ x y z w => h x y y z w
theorem Equation2600_implies_Equation2549 (G : Type*) [Magma G] (h : Equation2600 G) : Equation2549 G := λ x y z w => h x y y z w
theorem Equation2617_implies_Equation2549 (G : Type*) [Magma G] (h : Equation2617 G) : Equation2549 G := λ x y z w => h x y y z w
theorem Equation2622_implies_Equation2553 (G : Type*) [Magma G] (h : Equation2622 G) : Equation2553 G := λ x y z w => h x y y z w
theorem Equation2627_implies_Equation2557 (G : Type*) [Magma G] (h : Equation2627 G) : Equation2557 G := λ x y z w => h x y y z w
theorem Equation2632_implies_Equation2557 (G : Type*) [Magma G] (h : Equation2632 G) : Equation2557 G := λ x y z w => h x y y z w
theorem Equation2637_implies_Equation2561 (G : Type*) [Magma G] (h : Equation2637 G) : Equation2561 G := λ x y z w => h x y y z w
theorem Equation2638_implies_Equation2562 (G : Type*) [Magma G] (h : Equation2638 G) : Equation2562 G := λ x y z w => h x y y z w
theorem Equation2639_implies_Equation2563 (G : Type*) [Magma G] (h : Equation2639 G) : Equation2563 G := λ x y z w => h x y y z w
theorem Equation2640_implies_Equation2563 (G : Type*) [Magma G] (h : Equation2640 G) : Equation2563 G := λ x y z w => h x y y z w
theorem Equation2641_implies_Equation2564 (G : Type*) [Magma G] (h : Equation2641 G) : Equation2564 G := λ x y z w => h x y y z w
theorem Equation2642_implies_Equation2565 (G : Type*) [Magma G] (h : Equation2642 G) : Equation2565 G := λ x y z w => h x y y z w
theorem Equation2695_implies_Equation2678 (G : Type*) [Magma G] (h : Equation2695 G) : Equation2678 G := λ x y z w => h x y y z w
theorem Equation2732_implies_Equation2715 (G : Type*) [Magma G] (h : Equation2732 G) : Equation2715 G := λ x y z w => h x y y z w
theorem Equation2769_implies_Equation2752 (G : Type*) [Magma G] (h : Equation2769 G) : Equation2752 G := λ x y z w => h x y y z w
theorem Equation2786_implies_Equation2742 (G : Type*) [Magma G] (h : Equation2786 G) : Equation2742 G := λ x y z w => h x y y z w
theorem Equation2803_implies_Equation2752 (G : Type*) [Magma G] (h : Equation2803 G) : Equation2752 G := λ x y z w => h x y y z w
theorem Equation2820_implies_Equation2752 (G : Type*) [Magma G] (h : Equation2820 G) : Equation2752 G := λ x y z w => h x y y z w
theorem Equation2825_implies_Equation2756 (G : Type*) [Magma G] (h : Equation2825 G) : Equation2756 G := λ x y z w => h x y y z w
theorem Equation2830_implies_Equation2760 (G : Type*) [Magma G] (h : Equation2830 G) : Equation2760 G := λ x y z w => h x y y z w
theorem Equation2835_implies_Equation2760 (G : Type*) [Magma G] (h : Equation2835 G) : Equation2760 G := λ x y z w => h x y y z w
theorem Equation2840_implies_Equation2764 (G : Type*) [Magma G] (h : Equation2840 G) : Equation2764 G := λ x y z w => h x y y z w
theorem Equation2841_implies_Equation2765 (G : Type*) [Magma G] (h : Equation2841 G) : Equation2765 G := λ x y z w => h x y y z w
theorem Equation2842_implies_Equation2766 (G : Type*) [Magma G] (h : Equation2842 G) : Equation2766 G := λ x y z w => h x y y z w
theorem Equation2843_implies_Equation2766 (G : Type*) [Magma G] (h : Equation2843 G) : Equation2766 G := λ x y z w => h x y y z w
theorem Equation2844_implies_Equation2767 (G : Type*) [Magma G] (h : Equation2844 G) : Equation2767 G := λ x y z w => h x y y z w
theorem Equation2845_implies_Equation2768 (G : Type*) [Magma G] (h : Equation2845 G) : Equation2768 G := λ x y z w => h x y y z w
theorem Equation2898_implies_Equation2881 (G : Type*) [Magma G] (h : Equation2898 G) : Equation2881 G := λ x y z w => h x y y z w
theorem Equation2935_implies_Equation2918 (G : Type*) [Magma G] (h : Equation2935 G) : Equation2918 G := λ x y z w => h x y y z w
theorem Equation2972_implies_Equation2955 (G : Type*) [Magma G] (h : Equation2972 G) : Equation2955 G := λ x y z w => h x y y z w
theorem Equation2989_implies_Equation2945 (G : Type*) [Magma G] (h : Equation2989 G) : Equation2945 G := λ x y z w => h x y y z w
theorem Equation3006_implies_Equation2955 (G : Type*) [Magma G] (h : Equation3006 G) : Equation2955 G := λ x y z w => h x y y z w
theorem Equation3023_implies_Equation2955 (G : Type*) [Magma G] (h : Equation3023 G) : Equation2955 G := λ x y z w => h x y y z w
theorem Equation3028_implies_Equation2959 (G : Type*) [Magma G] (h : Equation3028 G) : Equation2959 G := λ x y z w => h x y y z w
theorem Equation3033_implies_Equation2963 (G : Type*) [Magma G] (h : Equation3033 G) : Equation2963 G := λ x y z w => h x y y z w
theorem Equation3038_implies_Equation2963 (G : Type*) [Magma G] (h : Equation3038 G) : Equation2963 G := λ x y z w => h x y y z w
theorem Equation3043_implies_Equation2967 (G : Type*) [Magma G] (h : Equation3043 G) : Equation2967 G := λ x y z w => h x y y z w
theorem Equation3044_implies_Equation2968 (G : Type*) [Magma G] (h : Equation3044 G) : Equation2968 G := λ x y z w => h x y y z w
theorem Equation3045_implies_Equation2969 (G : Type*) [Magma G] (h : Equation3045 G) : Equation2969 G := λ x y z w => h x y y z w
theorem Equation3046_implies_Equation2969 (G : Type*) [Magma G] (h : Equation3046 G) : Equation2969 G := λ x y z w => h x y y z w
theorem Equation3047_implies_Equation2970 (G : Type*) [Magma G] (h : Equation3047 G) : Equation2970 G := λ x y z w => h x y y z w
theorem Equation3048_implies_Equation2971 (G : Type*) [Magma G] (h : Equation3048 G) : Equation2971 G := λ x y z w => h x y y z w
theorem Equation3101_implies_Equation3084 (G : Type*) [Magma G] (h : Equation3101 G) : Equation3084 G := λ x y z w => h x y y z w
theorem Equation3138_implies_Equation3121 (G : Type*) [Magma G] (h : Equation3138 G) : Equation3121 G := λ x y z w => h x y y z w
theorem Equation3175_implies_Equation3158 (G : Type*) [Magma G] (h : Equation3175 G) : Equation3158 G := λ x y z w => h x y y z w
theorem Equation3192_implies_Equation3148 (G : Type*) [Magma G] (h : Equation3192 G) : Equation3148 G := λ x y z w => h x y y z w
theorem Equation3209_implies_Equation3158 (G : Type*) [Magma G] (h : Equation3209 G) : Equation3158 G := λ x y z w => h x y y z w
theorem Equation3226_implies_Equation3158 (G : Type*) [Magma G] (h : Equation3226 G) : Equation3158 G := λ x y z w => h x y y z w
theorem Equation3231_implies_Equation3162 (G : Type*) [Magma G] (h : Equation3231 G) : Equation3162 G := λ x y z w => h x y y z w
theorem Equation3236_implies_Equation3166 (G : Type*) [Magma G] (h : Equation3236 G) : Equation3166 G := λ x y z w => h x y y z w
theorem Equation3241_implies_Equation3166 (G : Type*) [Magma G] (h : Equation3241 G) : Equation3166 G := λ x y z w => h x y y z w
theorem Equation3246_implies_Equation3170 (G : Type*) [Magma G] (h : Equation3246 G) : Equation3170 G := λ x y z w => h x y y z w
theorem Equation3247_implies_Equation3171 (G : Type*) [Magma G] (h : Equation3247 G) : Equation3171 G := λ x y z w => h x y y z w
theorem Equation3248_implies_Equation3172 (G : Type*) [Magma G] (h : Equation3248 G) : Equation3172 G := λ x y z w => h x y y z w
theorem Equation3249_implies_Equation3172 (G : Type*) [Magma G] (h : Equation3249 G) : Equation3172 G := λ x y z w => h x y y z w
theorem Equation3250_implies_Equation3173 (G : Type*) [Magma G] (h : Equation3250 G) : Equation3173 G := λ x y z w => h x y y z w
theorem Equation3251_implies_Equation3174 (G : Type*) [Magma G] (h : Equation3251 G) : Equation3174 G := λ x y z w => h x y y z w
theorem Equation3304_implies_Equation3287 (G : Type*) [Magma G] (h : Equation3304 G) : Equation3287 G := λ x y z w => h x y y z w
theorem Equation3341_implies_Equation3324 (G : Type*) [Magma G] (h : Equation3341 G) : Equation3324 G := λ x y z w => h x y y z w
theorem Equation3378_implies_Equation3361 (G : Type*) [Magma G] (h : Equation3378 G) : Equation3361 G := λ x y z w => h x y y z w
theorem Equation3395_implies_Equation3351 (G : Type*) [Magma G] (h : Equation3395 G) : Equation3351 G := λ x y z w => h x y y z w
theorem Equation3412_implies_Equation3361 (G : Type*) [Magma G] (h : Equation3412 G) : Equation3361 G := λ x y z w => h x y y z w
theorem Equation3429_implies_Equation3361 (G : Type*) [Magma G] (h : Equation3429 G) : Equation3361 G := λ x y z w => h x y y z w
theorem Equation3434_implies_Equation3365 (G : Type*) [Magma G] (h : Equation3434 G) : Equation3365 G := λ x y z w => h x y y z w
theorem Equation3439_implies_Equation3369 (G : Type*) [Magma G] (h : Equation3439 G) : Equation3369 G := λ x y z w => h x y y z w
theorem Equation3444_implies_Equation3369 (G : Type*) [Magma G] (h : Equation3444 G) : Equation3369 G := λ x y z w => h x y y z w
theorem Equation3449_implies_Equation3373 (G : Type*) [Magma G] (h : Equation3449 G) : Equation3373 G := λ x y z w => h x y y z w
theorem Equation3450_implies_Equation3374 (G : Type*) [Magma G] (h : Equation3450 G) : Equation3374 G := λ x y z w => h x y y z w
theorem Equation3451_implies_Equation3375 (G : Type*) [Magma G] (h : Equation3451 G) : Equation3375 G := λ x y z w => h x y y z w
theorem Equation3452_implies_Equation3375 (G : Type*) [Magma G] (h : Equation3452 G) : Equation3375 G := λ x y z w => h x y y z w
theorem Equation3453_implies_Equation3376 (G : Type*) [Magma G] (h : Equation3453 G) : Equation3376 G := λ x y z w => h x y y z w
theorem Equation3454_implies_Equation3377 (G : Type*) [Magma G] (h : Equation3454 G) : Equation3377 G := λ x y z w => h x y y z w
theorem Equation3507_implies_Equation3490 (G : Type*) [Magma G] (h : Equation3507 G) : Equation3490 G := λ x y z w => h x y y z w
theorem Equation3544_implies_Equation3527 (G : Type*) [Magma G] (h : Equation3544 G) : Equation3527 G := λ x y z w => h x y y z w
theorem Equation3581_implies_Equation3564 (G : Type*) [Magma G] (h : Equation3581 G) : Equation3564 G := λ x y z w => h x y y z w
theorem Equation3598_implies_Equation3554 (G : Type*) [Magma G] (h : Equation3598 G) : Equation3554 G := λ x y z w => h x y y z w
theorem Equation3615_implies_Equation3564 (G : Type*) [Magma G] (h : Equation3615 G) : Equation3564 G := λ x y z w => h x y y z w
theorem Equation3632_implies_Equation3564 (G : Type*) [Magma G] (h : Equation3632 G) : Equation3564 G := λ x y z w => h x y y z w
theorem Equation3637_implies_Equation3568 (G : Type*) [Magma G] (h : Equation3637 G) : Equation3568 G := λ x y z w => h x y y z w
theorem Equation3642_implies_Equation3572 (G : Type*) [Magma G] (h : Equation3642 G) : Equation3572 G := λ x y z w => h x y y z w
theorem Equation3647_implies_Equation3572 (G : Type*) [Magma G] (h : Equation3647 G) : Equation3572 G := λ x y z w => h x y y z w
theorem Equation3652_implies_Equation3576 (G : Type*) [Magma G] (h : Equation3652 G) : Equation3576 G := λ x y z w => h x y y z w
theorem Equation3653_implies_Equation3577 (G : Type*) [Magma G] (h : Equation3653 G) : Equation3577 G := λ x y z w => h x y y z w
theorem Equation3654_implies_Equation3578 (G : Type*) [Magma G] (h : Equation3654 G) : Equation3578 G := λ x y z w => h x y y z w
theorem Equation3655_implies_Equation3578 (G : Type*) [Magma G] (h : Equation3655 G) : Equation3578 G := λ x y z w => h x y y z w
theorem Equation3656_implies_Equation3579 (G : Type*) [Magma G] (h : Equation3656 G) : Equation3579 G := λ x y z w => h x y y z w
theorem Equation3657_implies_Equation3580 (G : Type*) [Magma G] (h : Equation3657 G) : Equation3580 G := λ x y z w => h x y y z w
theorem Equation3710_implies_Equation3693 (G : Type*) [Magma G] (h : Equation3710 G) : Equation3693 G := λ x y z w => h x y y z w
theorem Equation3747_implies_Equation3730 (G : Type*) [Magma G] (h : Equation3747 G) : Equation3730 G := λ x y z w => h x y y z w
theorem Equation3784_implies_Equation3767 (G : Type*) [Magma G] (h : Equation3784 G) : Equation3767 G := λ x y z w => h x y y z w
theorem Equation3801_implies_Equation3757 (G : Type*) [Magma G] (h : Equation3801 G) : Equation3757 G := λ x y z w => h x y y z w
theorem Equation3818_implies_Equation3767 (G : Type*) [Magma G] (h : Equation3818 G) : Equation3767 G := λ x y z w => h x y y z w
theorem Equation3835_implies_Equation3767 (G : Type*) [Magma G] (h : Equation3835 G) : Equation3767 G := λ x y z w => h x y y z w
theorem Equation3840_implies_Equation3771 (G : Type*) [Magma G] (h : Equation3840 G) : Equation3771 G := λ x y z w => h x y y z w
theorem Equation3845_implies_Equation3775 (G : Type*) [Magma G] (h : Equation3845 G) : Equation3775 G := λ x y z w => h x y y z w
theorem Equation3850_implies_Equation3775 (G : Type*) [Magma G] (h : Equation3850 G) : Equation3775 G := λ x y z w => h x y y z w
theorem Equation3855_implies_Equation3779 (G : Type*) [Magma G] (h : Equation3855 G) : Equation3779 G := λ x y z w => h x y y z w
theorem Equation3856_implies_Equation3780 (G : Type*) [Magma G] (h : Equation3856 G) : Equation3780 G := λ x y z w => h x y y z w
theorem Equation3857_implies_Equation3781 (G : Type*) [Magma G] (h : Equation3857 G) : Equation3781 G := λ x y z w => h x y y z w
theorem Equation3858_implies_Equation3781 (G : Type*) [Magma G] (h : Equation3858 G) : Equation3781 G := λ x y z w => h x y y z w
theorem Equation3859_implies_Equation3782 (G : Type*) [Magma G] (h : Equation3859 G) : Equation3782 G := λ x y z w => h x y y z w
theorem Equation3860_implies_Equation3783 (G : Type*) [Magma G] (h : Equation3860 G) : Equation3783 G := λ x y z w => h x y y z w
theorem Equation3913_implies_Equation3896 (G : Type*) [Magma G] (h : Equation3913 G) : Equation3896 G := λ x y z w => h x y y z w
theorem Equation3950_implies_Equation3933 (G : Type*) [Magma G] (h : Equation3950 G) : Equation3933 G := λ x y z w => h x y y z w
theorem Equation3987_implies_Equation3970 (G : Type*) [Magma G] (h : Equation3987 G) : Equation3970 G := λ x y z w => h x y y z w
theorem Equation4004_implies_Equation3960 (G : Type*) [Magma G] (h : Equation4004 G) : Equation3960 G := λ x y z w => h x y y z w
theorem Equation4021_implies_Equation3970 (G : Type*) [Magma G] (h : Equation4021 G) : Equation3970 G := λ x y z w => h x y y z w
theorem Equation4038_implies_Equation3970 (G : Type*) [Magma G] (h : Equation4038 G) : Equation3970 G := λ x y z w => h x y y z w
theorem Equation4043_implies_Equation3974 (G : Type*) [Magma G] (h : Equation4043 G) : Equation3974 G := λ x y z w => h x y y z w
theorem Equation4048_implies_Equation3978 (G : Type*) [Magma G] (h : Equation4048 G) : Equation3978 G := λ x y z w => h x y y z w
theorem Equation4053_implies_Equation3978 (G : Type*) [Magma G] (h : Equation4053 G) : Equation3978 G := λ x y z w => h x y y z w
theorem Equation4058_implies_Equation3982 (G : Type*) [Magma G] (h : Equation4058 G) : Equation3982 G := λ x y z w => h x y y z w
theorem Equation4059_implies_Equation3983 (G : Type*) [Magma G] (h : Equation4059 G) : Equation3983 G := λ x y z w => h x y y z w
theorem Equation4060_implies_Equation3984 (G : Type*) [Magma G] (h : Equation4060 G) : Equation3984 G := λ x y z w => h x y y z w
theorem Equation4061_implies_Equation3984 (G : Type*) [Magma G] (h : Equation4061 G) : Equation3984 G := λ x y z w => h x y y z w
theorem Equation4062_implies_Equation3985 (G : Type*) [Magma G] (h : Equation4062 G) : Equation3985 G := λ x y z w => h x y y z w
theorem Equation4063_implies_Equation3986 (G : Type*) [Magma G] (h : Equation4063 G) : Equation3986 G := λ x y z w => h x y y z w
theorem Equation4116_implies_Equation4099 (G : Type*) [Magma G] (h : Equation4116 G) : Equation4099 G := λ x y z w => h x y y z w
theorem Equation4153_implies_Equation4136 (G : Type*) [Magma G] (h : Equation4153 G) : Equation4136 G := λ x y z w => h x y y z w
theorem Equation4190_implies_Equation4173 (G : Type*) [Magma G] (h : Equation4190 G) : Equation4173 G := λ x y z w => h x y y z w
theorem Equation4207_implies_Equation4163 (G : Type*) [Magma G] (h : Equation4207 G) : Equation4163 G := λ x y z w => h x y y z w
theorem Equation4224_implies_Equation4173 (G : Type*) [Magma G] (h : Equation4224 G) : Equation4173 G := λ x y z w => h x y y z w
theorem Equation4241_implies_Equation4173 (G : Type*) [Magma G] (h : Equation4241 G) : Equation4173 G := λ x y z w => h x y y z w
theorem Equation4246_implies_Equation4177 (G : Type*) [Magma G] (h : Equation4246 G) : Equation4177 G := λ x y z w => h x y y z w
theorem Equation4251_implies_Equation4181 (G : Type*) [Magma G] (h : Equation4251 G) : Equation4181 G := λ x y z w => h x y y z w
theorem Equation4256_implies_Equation4181 (G : Type*) [Magma G] (h : Equation4256 G) : Equation4181 G := λ x y z w => h x y y z w
theorem Equation4261_implies_Equation4185 (G : Type*) [Magma G] (h : Equation4261 G) : Equation4185 G := λ x y z w => h x y y z w
theorem Equation4262_implies_Equation4186 (G : Type*) [Magma G] (h : Equation4262 G) : Equation4186 G := λ x y z w => h x y y z w
theorem Equation4263_implies_Equation4187 (G : Type*) [Magma G] (h : Equation4263 G) : Equation4187 G := λ x y z w => h x y y z w
theorem Equation4264_implies_Equation4187 (G : Type*) [Magma G] (h : Equation4264 G) : Equation4187 G := λ x y z w => h x y y z w
theorem Equation4265_implies_Equation4188 (G : Type*) [Magma G] (h : Equation4265 G) : Equation4188 G := λ x y z w => h x y y z w
theorem Equation4266_implies_Equation4189 (G : Type*) [Magma G] (h : Equation4266 G) : Equation4189 G := λ x y z w => h x y y z w
theorem Equation4313_implies_Equation4298 (G : Type*) [Magma G] (h : Equation4313 G) : Equation4298 G := λ x y z w => h x y y z w
theorem Equation4338_implies_Equation4326 (G : Type*) [Magma G] (h : Equation4338 G) : Equation4326 G := λ x y z w => h x y y z w
theorem Equation4356_implies_Equation4347 (G : Type*) [Magma G] (h : Equation4356 G) : Equation4347 G := λ x y z w => h x y y z w
theorem Equation4361_implies_Equation4342 (G : Type*) [Magma G] (h : Equation4361 G) : Equation4342 G := λ x y z w => h x y y z w
theorem Equation4368_implies_Equation4347 (G : Type*) [Magma G] (h : Equation4368 G) : Equation4347 G := λ x y z w => h x y y z w
theorem Equation4373_implies_Equation4347 (G : Type*) [Magma G] (h : Equation4373 G) : Equation4347 G := λ x y z w => h x y y z w
theorem Equation4375_implies_Equation4352 (G : Type*) [Magma G] (h : Equation4375 G) : Equation4352 G := λ x y z w => h x y y z w
theorem Equation4377_implies_Equation4352 (G : Type*) [Magma G] (h : Equation4377 G) : Equation4352 G := λ x y z w => h x y y z w
theorem Equation4378_implies_Equation4354 (G : Type*) [Magma G] (h : Equation4378 G) : Equation4354 G := λ x y z w => h x y y z w
theorem Equation4431_implies_Equation4414 (G : Type*) [Magma G] (h : Equation4431 G) : Equation4414 G := λ x y z w => h x y y z w
theorem Equation4468_implies_Equation4451 (G : Type*) [Magma G] (h : Equation4468 G) : Equation4451 G := λ x y z w => h x y y z w
theorem Equation4505_implies_Equation4488 (G : Type*) [Magma G] (h : Equation4505 G) : Equation4488 G := λ x y z w => h x y y z w
theorem Equation4522_implies_Equation4478 (G : Type*) [Magma G] (h : Equation4522 G) : Equation4478 G := λ x y z w => h x y y z w
theorem Equation4539_implies_Equation4488 (G : Type*) [Magma G] (h : Equation4539 G) : Equation4488 G := λ x y z w => h x y y z w
theorem Equation4556_implies_Equation4488 (G : Type*) [Magma G] (h : Equation4556 G) : Equation4488 G := λ x y z w => h x y y z w
theorem Equation4561_implies_Equation4492 (G : Type*) [Magma G] (h : Equation4561 G) : Equation4492 G := λ x y z w => h x y y z w
theorem Equation4566_implies_Equation4496 (G : Type*) [Magma G] (h : Equation4566 G) : Equation4496 G := λ x y z w => h x y y z w
theorem Equation4571_implies_Equation4496 (G : Type*) [Magma G] (h : Equation4571 G) : Equation4496 G := λ x y z w => h x y y z w
theorem Equation4576_implies_Equation4500 (G : Type*) [Magma G] (h : Equation4576 G) : Equation4500 G := λ x y z w => h x y y z w
theorem Equation4577_implies_Equation4501 (G : Type*) [Magma G] (h : Equation4577 G) : Equation4501 G := λ x y z w => h x y y z w
theorem Equation4578_implies_Equation4502 (G : Type*) [Magma G] (h : Equation4578 G) : Equation4502 G := λ x y z w => h x y y z w
theorem Equation4579_implies_Equation4502 (G : Type*) [Magma G] (h : Equation4579 G) : Equation4502 G := λ x y z w => h x y y z w
theorem Equation4580_implies_Equation4503 (G : Type*) [Magma G] (h : Equation4580 G) : Equation4503 G := λ x y z w => h x y y z w
theorem Equation4581_implies_Equation4504 (G : Type*) [Magma G] (h : Equation4581 G) : Equation4504 G := λ x y z w => h x y y z w
theorem Equation4628_implies_Equation4613 (G : Type*) [Magma G] (h : Equation4628 G) : Equation4613 G := λ x y z w => h x y y z w
theorem Equation4653_implies_Equation4641 (G : Type*) [Magma G] (h : Equation4653 G) : Equation4641 G := λ x y z w => h x y y z w
theorem Equation4671_implies_Equation4662 (G : Type*) [Magma G] (h : Equation4671 G) : Equation4662 G := λ x y z w => h x y y z w
theorem Equation4676_implies_Equation4657 (G : Type*) [Magma G] (h : Equation4676 G) : Equation4657 G := λ x y z w => h x y y z w
theorem Equation4683_implies_Equation4662 (G : Type*) [Magma G] (h : Equation4683 G) : Equation4662 G := λ x y z w => h x y y z w
theorem Equation4688_implies_Equation4662 (G : Type*) [Magma G] (h : Equation4688 G) : Equation4662 G := λ x y z w => h x y y z w
theorem Equation4690_implies_Equation4667 (G : Type*) [Magma G] (h : Equation4690 G) : Equation4667 G := λ x y z w => h x y y z w
theorem Equation4692_implies_Equation4667 (G : Type*) [Magma G] (h : Equation4692 G) : Equation4667 G := λ x y z w => h x y y z w
theorem Equation4693_implies_Equation4669 (G : Type*) [Magma G] (h : Equation4693 G) : Equation4669 G := λ x y z w => h x y y z w