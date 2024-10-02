
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3, 3, 1, 1], [3, 3, 1, 2], [3, 3, 1, 2], [3, 0, 1, 1]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3, 3, 1, 1], [3, 3, 1, 2], [3, 3, 1, 2], [3, 0, 1, 1]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3, 3, 1, 1], [3, 3, 1, 2], [3, 3, 1, 2], [3, 0, 1, 1]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3, 3, 1, 1], [3, 3, 1, 2], [3, 3, 1, 2], [3, 0, 1, 1]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1484, 3993, 4606] [2, 3, 8, 23, 38, 39, 40, 43, 47, 99, 151, 203, 255, 307, 359, 411, 614, 817, 1020, 1223, 1427, 1429, 1431, 1432, 1434, 1435, 1441, 1442, 1444, 1445, 1451, 1452, 1454, 1455, 1479, 1482, 1488, 1489, 1491, 1492, 1515, 1516, 1518, 1519, 1525, 1526, 1528, 1629, 1832, 2035, 2238, 2441, 2644, 2847, 3050, 3253, 3456, 3659, 3864, 3865, 3867, 3868, 3870, 3871, 3878, 3880, 3881, 3887, 3888, 3890, 3915, 3917, 3925, 3927, 3928, 3951, 3952, 3954, 3961, 3962, 3964, 4065, 4268, 4269, 4270, 4272, 4273, 4275, 4276, 4283, 4284, 4290, 4291, 4293, 4314, 4320, 4321, 4343, 4380, 4583, 4584, 4585, 4587, 4588, 4590, 4591, 4598, 4599, 4605, 4608, 4629, 4635, 4636, 4658] :=
    ⟨Fin 4, «FinitePoly [[3, 3, 1, 1], [3, 3, 1, 2], [3, 3, 1, 2], [3, 0, 1, 1]]», by decideFin!⟩
