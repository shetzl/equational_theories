
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3, 3, 1, 1], [3, 3, 1, 1], [3, 1, 1, 1], [1, 1, 1, 1]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3, 3, 1, 1], [3, 3, 1, 1], [3, 1, 1, 1], [1, 1, 1, 1]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3, 3, 1, 1], [3, 3, 1, 1], [3, 1, 1, 1], [1, 1, 1, 1]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3, 3, 1, 1], [3, 3, 1, 1], [3, 1, 1, 1], [1, 1, 1, 1]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1, 3258, 3259, 3261, 3262, 3353, 3457, 3459, 3462, 3465, 3549, 3877, 3880, 3887, 3890, 3955, 4067, 4073, 4083, 4093, 4131, 4284, 4389, 4408, 4472, 4531, 4606] [2, 3, 8, 23, 38, 39, 40, 43, 47, 99, 151, 203, 255, 307, 359, 411, 614, 817, 1020, 1223, 1426, 1629, 1832, 2035, 2238, 2441, 2644, 2847, 3050, 3254, 3255, 3256, 3268, 3269, 3271, 3272, 3278, 3279, 3281, 3306, 3308, 3309, 3315, 3316, 3318, 3319, 3342, 3343, 3345, 3346, 3352, 3355, 3458, 3461, 3464, 3472, 3474, 3475, 3481, 3482, 3484, 3509, 3511, 3512, 3518, 3519, 3521, 3522, 3545, 3546, 3548, 3555, 3556, 3558, 3659, 3864, 3865, 3867, 3868, 3870, 3871, 3878, 3881, 3888, 3915, 3917, 3918, 3924, 3925, 3927, 3928, 3951, 3952, 3954, 3961, 3962, 3964, 4066, 4068, 4070, 4071, 4074, 4080, 4084, 4090, 4091, 4118, 4120, 4121, 4127, 4128, 4130, 4154, 4155, 4157, 4158, 4164, 4165, 4167, 4268, 4269, 4270, 4272, 4273, 4275, 4283, 4290, 4291, 4293, 4314, 4320, 4321, 4343, 4381, 4382, 4383, 4385, 4386, 4388, 4396, 4399, 4405, 4406, 4433, 4435, 4436, 4443, 4445, 4470, 4473, 4479, 4480, 4583, 4584, 4585, 4587, 4588, 4590, 4598, 4599, 4605, 4608, 4629, 4635, 4636, 4658] :=
    ⟨Fin 4, «FinitePoly [[3, 3, 1, 1], [3, 3, 1, 1], [3, 1, 1, 1], [1, 1, 1, 1]]», by decideFin!⟩
