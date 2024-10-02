
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following refutation as produced by
random generation of polynomials:
'(0 * x**2 + 0 * y**2 + 3 * x + 2 * y + 0 * x * y) % 5' (0, 39, 202, 208, 210, 410, 413, 428, 472, 476, 480, 500, 512, 561, 1425, 1428, 1451, 1487, 1491, 1495, 1514, 1518, 1522, 2034, 2037, 2040, 2062, 2123, 2127, 2131, 2134, 2145, 3049, 3055, 3067, 3078, 3090, 3114, 3138, 3149, 3160, 3658, 3661, 3664, 3676, 3683, 3687, 3691, 3699, 3723, 4269, 4292, 4340, 4589, 4621, 4635)
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly 3 * x + 2 * y % 5» : Magma (Fin 5) where
  op := memoFinOp fun x y => 3 * x + 2 * y

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly 3 * x + 2 * y % 5» :
  ∃ (G : Type) (_ : Magma G), Facts G [209, 211, 481, 501, 1452, 1496, 1523, 2063, 2132, 2146, 3115, 3161] [2, 3, 8, 23, 38, 39, 43, 47, 99, 151, 204, 205, 206, 208, 212, 218, 219, 221, 222, 228, 229, 231, 255, 307, 359, 412, 413, 416, 417, 419, 420, 426, 427, 430, 436, 437, 439, 440, 463, 464, 466, 467, 474, 476, 500, 503, 504, 510, 511, 614, 817, 1020, 1223, 1427, 1428, 1431, 1432, 1434, 1435, 1441, 1442, 1444, 1445, 1451, 1454, 1455, 1478, 1479, 1481, 1482, 1489, 1491, 1516, 1518, 1525, 1526, 1528, 1629, 1832, 2036, 2037, 2040, 2043, 2044, 2050, 2051, 2053, 2054, 2060, 2061, 2064, 2087, 2088, 2090, 2091, 2097, 2098, 2100, 2101, 2125, 2127, 2134, 2137, 2238, 2441, 2644, 2847, 3051, 3052, 3053, 3055, 3058, 3059, 3065, 3066, 3069, 3075, 3076, 3078, 3102, 3103, 3105, 3106, 3112, 3113, 3116, 3140, 3142, 3143, 3149, 3152, 3253, 3456, 3660, 3661, 3664, 3667, 3668, 3674, 3675, 3678, 3685, 3687, 3712, 3714, 3721, 3722, 3725, 3748, 3749, 3751, 3752, 3759, 3761, 3862, 4065, 4268, 4269, 4272, 4273, 4275, 4276, 4283, 4284, 4290, 4291, 4314, 4320, 4321, 4343, 4380, 4583, 4584, 4585, 4587, 4588, 4591, 4598, 4599, 4605, 4606, 4608, 4629, 4635, 4658] :=
    ⟨Fin 5, «FinitePoly 3 * x + 2 * y % 5», by decideFin!⟩
