
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0, 3, 2, 1], [3, 0, 1, 3], [2, 2, 0, 2], [1, 1, 3, 0]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0, 3, 2, 1], [3, 0, 1, 3], [2, 2, 0, 2], [1, 1, 3, 0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[0, 3, 2, 1], [3, 0, 1, 3], [2, 2, 0, 2], [1, 1, 3, 0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0, 3, 2, 1], [3, 0, 1, 3], [2, 2, 0, 2], [1, 1, 3, 0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [40, 1459, 1523, 1673, 1746, 1865, 2132, 2282, 2474, 4497] [203, 1427, 1428, 1431, 1432, 1434, 1435, 1441, 1442, 1444, 1445, 1452, 1454, 1478, 1479, 1481, 1482, 1488, 1489, 1491, 1492, 1516, 1518, 1525, 1526, 1528, 1630, 1631, 1632, 1634, 1635, 1638, 1644, 1647, 1648, 1654, 1655, 1657, 1681, 1682, 1684, 1685, 1691, 1692, 1694, 1695, 1719, 1721, 1722, 1728, 1729, 1833, 1834, 1837, 1838, 1840, 1841, 1847, 1848, 1850, 1851, 1858, 1860, 1884, 1885, 1887, 1888, 1894, 1895, 1897, 1898, 1921, 1922, 1924, 1925, 1931, 1932, 1934, 2036, 2037, 2040, 2041, 2043, 2044, 2050, 2051, 2053, 2054, 2060, 2061, 2063, 2064, 2087, 2088, 2090, 2091, 2097, 2098, 2100, 2101, 2125, 2127, 2134, 2135, 2137, 2239, 2240, 2241, 2243, 2244, 2247, 2253, 2256, 2257, 2263, 2264, 2266, 2290, 2291, 2293, 2294, 2300, 2301, 2303, 2304, 2327, 2328, 2330, 2331, 2337, 2338, 2340, 2443, 2449, 2456, 2469, 2530, 2534, 3050, 4381, 4382, 4383, 4385, 4386, 4396, 4398, 4399, 4405, 4406, 4408, 4433, 4435, 4436, 4442, 4443, 4445, 4470, 4472, 4473, 4479, 4480, 4658] :=
    ⟨Fin 4, «FinitePoly [[0, 3, 2, 1], [3, 0, 1, 3], [2, 2, 0, 2], [1, 1, 3, 0]]», by decideFin!⟩
