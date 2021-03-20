### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# ╔═╡ 1ff9ef98-84e2-11eb-2308-7b3e5ff349b9
using RowEchelon

# ╔═╡ ff144a4a-8832-11eb-1f39-d785facee428
using LinearAlgebra

# ╔═╡ deda3a60-84df-11eb-2ac9-6b71debb6a64
md"""
``\newcommand\m[1]{\begin{bmatrix}#1\end{bmatrix}}``
"""

# ╔═╡ 3bceafac-8423-11eb-004f-2b5764c25b2e
md"""
## Q1
"""

# ╔═╡ 4605ce44-84df-11eb-2da9-2f536684d0cc
q1a = [7 11]' * [2 3 5]

# ╔═╡ 6d24d362-84df-11eb-177b-fdc9a6ca2520
md"""
``span(col(A)) = \bigg\{\m{7 \\ 11}\bigg\}``

``span(row(A)) = \bigg\{\m{2 & 3 & 5}\bigg\}``

``span(N(A)) = \bigg\{\m{-\frac{5}{2} & 0 & 1}, \m{-\frac{3}{2} & 1 & 0} \bigg\}``

``span(N(A^T)) = \bigg\{\m{-\frac{11}{7} \\ 1}\bigg\}``
"""

# ╔═╡ a7e24dce-84e0-11eb-107a-35b145d0a99c
q1a * [-5/2 0 1]'

# ╔═╡ b5708b60-84e0-11eb-028d-7b602060ff1f
q1a * [-3/2 1 0]'

# ╔═╡ b9b8cf8e-84e0-11eb-34b4-f5ca90a5d157
q1a' * [-11/7 1]'

# ╔═╡ c148c0f4-84e0-11eb-1c2a-4d1086f99b6c
md"""
``col(A) \perp N(A^T)``

``row(A) \perp N(A)``
"""

# ╔═╡ 020515d6-84e1-11eb-3e30-3f79e05d57a7
md"""
## Q2
"""

# ╔═╡ b2fa0b54-84e0-11eb-2f3b-0740414ec94d
q2a = [7 11]' * [2 3 5] + [13 17]' * [19 23 29]

# ╔═╡ 484a9c6e-84e1-11eb-0e7d-f7f385630f9e
md"""
``span(col(A)) = \bigg\{\m{7 \\ 11}, \m{13 \\ 17}\bigg\}``

``span(row(A)) = \bigg\{\m{2 & 3 & 5}, \m{19 & 23 & 29}\bigg\}``

``span(N(A)) = \bigg\{\m{\frac{28}{11} & \frac{-37}{11} & 1}\bigg\}``

``span(N(A^T)) = Z``

Because the rank is 2, the nullspace part of any vector in ``R^2`` is ``x_n = 0``
"""

# ╔═╡ 26a5681a-84e0-11eb-33e7-4dc76624c6d2
md"""
## Q3
"""

# ╔═╡ 174abcbc-84e0-11eb-22f1-c90b021c8a0d
q3a = hcat([1 2 -3]', [2 -3 5]', [1 1 1]')

# ╔═╡ 73f5261a-84e4-11eb-3056-f56b0ae43b45
rref(q3a)

# ╔═╡ 809b8c6a-84e4-11eb-188e-39331d8c83e3
q3a1 = hcat([1 2 -3]', [2 -3 5]', [-(1+2) -(2-3) -(-3+5)]')

# ╔═╡ c957d86c-84e4-11eb-116a-c9e471998977
q3a1 * [1 1 1]'

# ╔═╡ d36c3426-84e4-11eb-2e8f-a767aa339c61
md"""
b) Is impossible. The column space will have to be rank 3 which, would be full, so the the nullspace would = Z.
"""

# ╔═╡ 5e1417f8-84e5-11eb-1a67-4520d6243d7e
q3b = vcat([1 2 -3], [2 -3 5])

# ╔═╡ bac6ccde-84e5-11eb-02a6-d70ea78ab4ce
md"""
This means that ``\m{1 \\ 1 \\ 1}`` must be in the column space of A and ``\m{1 \\ 0 \\ 0}`` must be in the left nullspace. This is impossible because there must be at least one non-zero value in every row and so multiplying ``A^T`` by ``\m{1 \\ 0 \\ 0}`` will always produce a non-zero result. 
"""

# ╔═╡ dd3becf6-84e6-11eb-3c35-254418652dda
q3c = [
	0 1 0;
	0 1 0;
	0 1 0
]

# ╔═╡ 436eb362-84e7-11eb-3f06-99e71892cd82
q3c' * [1 0 0]'

# ╔═╡ 604574c2-84e8-11eb-06eb-7fa344b4b20a
q3d = [
	1 -1;
	1 -1
]

# This is a rank 1 matrix

# ╔═╡ 75033d90-84e8-11eb-19a7-0f00085bb624
[1 1] * [1, -1]

# ╔═╡ c86c4bac-84e8-11eb-073a-5bd4f2b46c7a
md"""
This suggests that ``\m{1 & 1 & 1}`` is in the nullspace, but ``\m{1 & 1 & 1}`` is in the row space, whihc is impossible.
"""

# ╔═╡ 74010340-84e9-11eb-13bd-61ed00af5a19
md"""
## Q4
The columns of ``B`` are in the nullspace of ``A``. The rows of ``A`` are in the left nullspace of ``B``. ``A`` and ``B`` can't be 3 x 3 matrices of rank two becuase rank 2 would imply a nullspace of 1 but the size of B would suggest that the nullspace of A would have to be at least 2. This is a contradiction.
"""

# ╔═╡ f07153d0-84e9-11eb-300c-d77a7e4949f7
md"""
## Q5
a) ``y^Tb=0``

b) ``\m{1 & 1 & 1}`` is orthogonal to the nullspace of ``A``.
"""

# ╔═╡ 8068af38-84ea-11eb-2858-85eccd3f9b9b
md"""
## Q6
"""

# ╔═╡ 17bd0a66-84f1-11eb-3990-c5f6e4063b67
q6a = [
	1 2 2;
	2 2 3;
	3 4 5
]

# ╔═╡ 2cf757d2-84f1-11eb-171e-d5fdfe25d3d3
rref(q6a')

# ╔═╡ 3bdcf7d2-84f1-11eb-2ff0-f12975b63f2c
[1 1 -1] * q6a 

# ╔═╡ 8cf76936-84f1-11eb-32ba-9d11089e1206
[1 1 -1] * [5 5 9]'

# ╔═╡ a2c6d51c-84f1-11eb-3c8e-dfef52252140
md"""
This vector exists in the left nullspace.
"""

# ╔═╡ 83fbaa40-84f1-11eb-32d5-6556d1b12522
md"""
## Q7
"""

# ╔═╡ 73a33efa-84f2-11eb-3a46-0d67a4b03b13
q7a = [
	1 -1 0;
	0 1 -1;
	1 0 -1
]

# ╔═╡ 6763395c-84f1-11eb-26c1-7bb41853d130
[1 1 -1] * q7a

# ╔═╡ 58593af6-84f1-11eb-3aaf-bf32c51a0e4e
[1 1 -1] * [1 1 1]'

# ╔═╡ d95b133a-84f2-11eb-044f-810c7d26ed88
md"""
## Q8

We know that ``Ax_r = Ax`` because the original equation is ``Ax = Ax_r + Ax_n``, but ``Ax_n`` always maps to the 0 vector. So ``Ax = Ax_r``. This is also why the vector exists in the column space. 

``x_r = \m{0 \\ 1}``
"""

# ╔═╡ e0a9030e-84f2-11eb-1805-d311c4e7dc1c
q8a = [
	1 1;
	1 1
]

# ╔═╡ c026beae-84f3-11eb-1a78-1f3d8c8c45e2
q8a * [1 -1]' # x_n

# ╔═╡ fbeaccda-84f3-11eb-1549-1dbde49f2dc8
[1 0]' - [1 -1]' # x - x_n = x_r

# ╔═╡ 10117a5a-84f4-11eb-0495-5d416a757361
md"""
## Q9

``A^T`` is in the column space of ``A``. These spaces are orthogonal. 
"""

# ╔═╡ 9e6d2806-875b-11eb-1510-8fd6941f4c30
md"""
## Q10

a) If ``A^T = A``, then ``R(A) = C(A)``. Since ``R(A) \perp N(A)``, then ''C(A) \perp N(A)''
"""

# ╔═╡ 1bbfe604-875c-11eb-3046-d54e953e2863
md"""
## Q11

``C(A) = \m{1 \\ 3}``
``R(A) = \m{1 & 2}``
``N(A) = \m{-2 \\ 1}``
``N(A^T) = \m{-3 & 1}``
"""

# ╔═╡ b686f768-875c-11eb-2d72-85a58d238a91
q11a = [
	1 2;
	3 6
]

# ╔═╡ 17a30bb4-875c-11eb-3da4-13f01dc3a0d8
q11a * [-2 1]'

# ╔═╡ 06f7d5dc-875d-11eb-26cd-49d3c59c08b4
q11a' * [-3 1]'

# ╔═╡ 139376bc-875c-11eb-3be1-ffbbde623b53
md"""
``C(B) = \m{1 \\ 3}``

``R(B) = \m{1 & 0}``

``N(B) = \m{0 \\1}``

``N(B^T) = \m{-3 & 1}``
"""

# ╔═╡ 4b45a282-875d-11eb-36f3-a538b022222b
q11b = [
	1 0;
	3 0
]

# ╔═╡ 9e77ff16-875d-11eb-112f-53b0372bcba7
q11b * [0 1]'

# ╔═╡ bbed67d6-875d-11eb-1704-ab85264537a0
q11b' * [-3 1]'

# ╔═╡ ca16a11a-875d-11eb-34f3-5f63a5d60ba0
md"""
## Q12

``C(A) = \m{1 \\ 0 \\ 0}``

``R(A) = \m{1 & -1}``

``N(A) = \m{[0 \\ 1 \\ 0}, \m{0 \\ 0 \\ 1}``

``N(A^T) = \m{1 & 1}``
"""

# ╔═╡ 41acc380-875e-11eb-2fc5-b3977be61b31
q12a = [
	1 -1;
	0 0;
	0 0
]

# ╔═╡ 5f97294e-875e-11eb-3a92-1166500a893c
q12x = [2 0]'

# ╔═╡ 57b11dde-875e-11eb-3afc-192833262947
q12a * q12x

# ╔═╡ 52f64e86-875e-11eb-1b18-3f5850d2543e
md"""
``x = \m{1 \\ -1} + \m{1 \\ 1}``
"""

# ╔═╡ 4de5f04a-875e-11eb-1f9e-b53b86954df5
md"""
## Q13

If the bases are in ``V`` and ``W`` then the matrix multiply can be decomposed into the addition of rank-1 matrix multiplications:

``VW = \sum_{i=1}^n v_i^Tw_i``

Since an orthogonal subspaces means that all vector multiplications equal 0, then:

``\sum_{i=1}^n v_i^Tw_i` = 0 = VW``
"""

# ╔═╡ 9689f3f8-8760-11eb-3581-814fdb8564cb
md"""
## Q14
"""

# ╔═╡ eae571ac-8760-11eb-15ef-4d7bc9c92a8c
q14a = [
	1 2;
	1 3;
	1 2
]

# ╔═╡ 9361f4a8-8760-11eb-2cab-ddd798c414fe
q14b = [
	5 4;
	6 3;
	5 1
]

# ╔═╡ 218e6a58-8761-11eb-331b-9f0ac5d9c155
rref(hcat(q14a, q14b))

# ╔═╡ 4e30fe20-8761-11eb-0f45-4f61c05c7523
md"""
``\m{5 \\ 6 \\ 5} = 3\m{1 \\ 1 \\ 1} + \m{2 \\ 3 \\ 2}``
"""

# ╔═╡ 889e2722-8761-11eb-2ae9-d191f7f16e49
md"""
## Q15

``p  + q \gt n``
"""

# ╔═╡ 092e100a-8762-11eb-354b-3b458fc0cb32
md"""
## Q16

``A^Ty=0``

``x^T(A^Ty) = x^T0 = (Ax)^Ty=0``
"""

# ╔═╡ 89558b04-8763-11eb-3cda-5f96a0e9697f
md"""
## Q17
a) ``S^{\perp} = R^3``

b) ``S^{\perp} = span((-1, 1, 0), (-1,0,1))``

c) ``S^{\perp} = span((-1, 1, 0))``
"""

# ╔═╡ 421ba9e6-882e-11eb-1fb1-934068dfe114
q17c = [
	1 1 1;
	1 1 -1
]

# ╔═╡ 21025426-882e-11eb-04ca-f99c2a370e93
q17c * [-1 1 0]'

# ╔═╡ 53fa857e-882e-11eb-1380-eb3afd0e26c3
md"""
## Q18
"""

# ╔═╡ deffaa82-882e-11eb-1e81-d1474731de4c
q18 = [
	1 5 1;
	2 2 2
]

# ╔═╡ 08a83d28-882e-11eb-0a44-99c8e9f371fe
rref(q18)

# ╔═╡ f157ac0c-882e-11eb-19e0-c52926bc29cb
q18 * [-1 0 1]'

# ╔═╡ 010dfc6e-882f-11eb-0154-99f07855fd14
md"""
## Q19

``dim(L^{\perp}) =2``

``dim((L^{\perp})^{\perp}) =1``

``(L^{\perp})^{\perp} = L``

"""

# ╔═╡ 4801e4fa-882f-11eb-09ae-854c7ef52ecf
md"""
## Q20

``V^{\perp} = 0``

``(V^{\perp})^{\perp} = R^4 = V``
"""

# ╔═╡ 460d5cd8-882f-11eb-2264-51c965ffc37d
md"""
## Q21
"""

# ╔═╡ 2f0cc848-882f-11eb-3c1b-8931fe5d8d6e
q21a = [
	1 2 2 3;
	1 3 3 2
]

# ╔═╡ f2093f5e-882d-11eb-3672-d1be770bd014
rref(q21a)

# ╔═╡ 86aeec9c-8763-11eb-186c-c3b69f6123f8
q21a * [0 -1 1 0]'

# ╔═╡ 7a7d64ee-8763-11eb-2dc3-0d9dcafe3867
q21a * [-5 1 0 1]'

# ╔═╡ dc3507b8-882f-11eb-3a47-a931e75df8d4
md"""
## Q22
"""

# ╔═╡ 40244222-8830-11eb-340f-af561508a2e8
q22pperp = [
	1 -1 0 0;
	0 1 -1 0;
	0 0 1 -1;
	-1 0 0 1
]

# ╔═╡ 5dccefa4-8830-11eb-28c2-5bb518235926
q22pperp * [1 1 1 1]'

# ╔═╡ 6560a0e4-8830-11eb-2b9c-5d4043d5476d
md"""
## Q23

``S \subset V``

``SS^{\perp} \subset VS^{\perp} \rightarrow 0 \subset VS^{\perp}``

``V^{\perp} \subset VV^{\perp}S^{\perp}``

``V^{\perp} \subset S^{\perp}``
"""

# ╔═╡ 4fa85322-8831-11eb-308d-f33fed8ebd82
md"""
Clever explanation: ``V`` contains all of ``S``. ``V^{\perp}`` is orthogonal to all of ``V`` including all of ``S``. Since ``V^{\perp} \rightarrow S^{\perp}`` then ``V^{\perp} \subset S^{\perp}``
"""

# ╔═╡ 2c470670-8832-11eb-038c-5fbe615af70f
md"""
## Q24
"""

# ╔═╡ 4ae4a9c6-8831-11eb-3c5d-4b4691190771
q24a = [
	0 1;
	1 0
]

# ╔═╡ 872bcb70-8832-11eb-3d91-4d907f509ad6
inv(q24a)

# ╔═╡ 9c0a4956-8832-11eb-36c2-6797957cb7f3
md"""
The span of all rows except for the first.
"""

# ╔═╡ 93281712-8832-11eb-071a-df3ac0218bf3
md"""
## Q25
"""

# ╔═╡ fa422f8e-8830-11eb-1213-6b148b69ab23
I(3)' * I(3)

# ╔═╡ 28e77aae-8833-11eb-0e66-a38643b0f5cf
md"""
## Q26
"""

# ╔═╡ 303716bc-8834-11eb-36ac-336b09314c73
[8 2 1] * [-1 2 4]'

# ╔═╡ 74b227ee-8834-11eb-343a-b14de95adabf
q26b = [
	8 2 1;
	-1 2 4
]

# ╔═╡ a8782632-8834-11eb-3ca3-1d1cd8ac0c77
rref(q26b) * 6

# ╔═╡ d533fe06-8834-11eb-09b3-8729f8b2fcfd
q26b * [2 -11 6]'

# ╔═╡ 055e4b1a-8835-11eb-2856-eda76d48d9e1
q26a = [
	8 -1 2;
	2 2 -11;
	1 4 6
]

# ╔═╡ 205d5686-8835-11eb-1c59-fdd8dd566b43
q26a * q26a'

# ╔═╡ cd90b560-88c5-11eb-2e15-19368328b37b


# ╔═╡ 39c06d3e-8835-11eb-183c-01b708102f55
md"""
## Q27

The lines are parallel. They lie on the same line when ``2b_1 = b_2``. The vector (2,-1). The nullspace is ``3x +y=0``. (-1, 3) would be in the nullspace.
"""

# ╔═╡ 2cab8336-8835-11eb-106b-39f43dc6f4d8
md"""
## Q28

a) This only talks about vectors, not subspaces.
b) There is vectors missing to create the subspace.
"""

# ╔═╡ adb5da4a-8834-11eb-2684-0b560a7ae5a2
q28b = [
	2 -2 3 4 -4;
	1 -1 0 0 0
]

# ╔═╡ 6b508b14-8834-11eb-0987-07fe2b52cbc5
rref(q28b)

# ╔═╡ 2d77ab4e-8834-11eb-0680-37555678fc14
q28b * [1 1 0 0 0]'

# ╔═╡ 2bd17dea-8834-11eb-1d22-159134a24ff8
q28b * [0 0 0 1 1]'

# ╔═╡ f2954faa-8833-11eb-26fd-ad8c8a54a3c2
q28b * [0 0 -4 3 0]' # missing basis

# ╔═╡ ee947e14-8833-11eb-3014-c1c63aeb9065
md"""
c) Counterexample: Any non-complete subspace and the nullspace. 
"""

# ╔═╡ e980027c-8833-11eb-2878-1d115af58e63
md"""
## Q29
"""

# ╔═╡ e522ce58-8833-11eb-3f89-b9de6daea575
q29a = [
	1 2 3;
	2 0 0;
	3 0 0
]

# ╔═╡ 42dbd2b0-88ca-11eb-0708-1b8dcd536ad8
q29b = [
	1 1 -1;
	2 2 -2;
	3 3 -3
]

# ╔═╡ bc6f6066-8833-11eb-1d4c-e37e0c3f243b
q29b * [1 2 3]'

# ╔═╡ 6de9dd3a-88ca-11eb-2faf-cb0cfa6d655a
md"""
```v \notin (C(A), N(A^T))``

``v \notin (R(A), N(A))``
"""

# ╔═╡ b90a6b3c-8833-11eb-2bc4-9d2658034596
md"""
## Q30


``C(B) \subset N(A) \rightarrow r_B < (n_A - r_A)``

``n_A = 5``

``r_B + r_A < 5 \rightarrow rank(A) + rank(B) \leq 4``
"""

# ╔═╡ 26b785c6-88cb-11eb-34b9-e76189492816
md"""
## Q31

The rowspace of ``A``.
"""

# ╔═╡ 196eb65c-88cc-11eb-31b4-a51dea3c904b
md"""
## Q32

Rank 1 matrix where ``C(A^T) = C(A)`` and ``N(A) = N(A^T)``.
"""

# ╔═╡ ce387f1a-8998-11eb-1325-4bc9d410f57e


# ╔═╡ afd89db8-8833-11eb-1a6c-d50b334e20f5
q32a = [
	1 2;
	2 4
]

# ╔═╡ aa81941e-8833-11eb-16db-69a16388b005
rref(q32a)

# ╔═╡ a6b22fbc-8833-11eb-118d-cdcb90d33385
q32a * [-2 1]'

# ╔═╡ 0777ff94-8833-11eb-2eaf-d780ae52c217
q32a' * [-2 1]'

# ╔═╡ c4b30d0c-8998-11eb-0b82-0fc68dec0282
md"""
## Q33

``span(r_1, r_2) \perp span(n_1, n_2)``

``span(c_1, c_2) \perp span(l_1, l_2)``
"""

# ╔═╡ f696e670-8832-11eb-116d-fd8c5016673b
# Consider any rank 2 matrix

q33a = [
	1 0 0 0;
	0 1 0 0;
	0 0 0 0;
	0 0 0 0
]

# ╔═╡ Cell order:
# ╠═1ff9ef98-84e2-11eb-2308-7b3e5ff349b9
# ╠═ff144a4a-8832-11eb-1f39-d785facee428
# ╠═deda3a60-84df-11eb-2ac9-6b71debb6a64
# ╠═3bceafac-8423-11eb-004f-2b5764c25b2e
# ╠═4605ce44-84df-11eb-2da9-2f536684d0cc
# ╠═6d24d362-84df-11eb-177b-fdc9a6ca2520
# ╠═a7e24dce-84e0-11eb-107a-35b145d0a99c
# ╠═b5708b60-84e0-11eb-028d-7b602060ff1f
# ╠═b9b8cf8e-84e0-11eb-34b4-f5ca90a5d157
# ╠═c148c0f4-84e0-11eb-1c2a-4d1086f99b6c
# ╠═020515d6-84e1-11eb-3e30-3f79e05d57a7
# ╠═b2fa0b54-84e0-11eb-2f3b-0740414ec94d
# ╠═484a9c6e-84e1-11eb-0e7d-f7f385630f9e
# ╠═26a5681a-84e0-11eb-33e7-4dc76624c6d2
# ╠═174abcbc-84e0-11eb-22f1-c90b021c8a0d
# ╠═73f5261a-84e4-11eb-3056-f56b0ae43b45
# ╠═809b8c6a-84e4-11eb-188e-39331d8c83e3
# ╠═c957d86c-84e4-11eb-116a-c9e471998977
# ╠═d36c3426-84e4-11eb-2e8f-a767aa339c61
# ╠═5e1417f8-84e5-11eb-1a67-4520d6243d7e
# ╠═bac6ccde-84e5-11eb-02a6-d70ea78ab4ce
# ╠═dd3becf6-84e6-11eb-3c35-254418652dda
# ╠═436eb362-84e7-11eb-3f06-99e71892cd82
# ╠═604574c2-84e8-11eb-06eb-7fa344b4b20a
# ╠═75033d90-84e8-11eb-19a7-0f00085bb624
# ╠═c86c4bac-84e8-11eb-073a-5bd4f2b46c7a
# ╠═74010340-84e9-11eb-13bd-61ed00af5a19
# ╠═f07153d0-84e9-11eb-300c-d77a7e4949f7
# ╠═8068af38-84ea-11eb-2858-85eccd3f9b9b
# ╠═17bd0a66-84f1-11eb-3990-c5f6e4063b67
# ╠═2cf757d2-84f1-11eb-171e-d5fdfe25d3d3
# ╠═3bdcf7d2-84f1-11eb-2ff0-f12975b63f2c
# ╠═8cf76936-84f1-11eb-32ba-9d11089e1206
# ╠═a2c6d51c-84f1-11eb-3c8e-dfef52252140
# ╠═83fbaa40-84f1-11eb-32d5-6556d1b12522
# ╠═73a33efa-84f2-11eb-3a46-0d67a4b03b13
# ╠═6763395c-84f1-11eb-26c1-7bb41853d130
# ╠═58593af6-84f1-11eb-3aaf-bf32c51a0e4e
# ╠═d95b133a-84f2-11eb-044f-810c7d26ed88
# ╠═e0a9030e-84f2-11eb-1805-d311c4e7dc1c
# ╠═c026beae-84f3-11eb-1a78-1f3d8c8c45e2
# ╠═fbeaccda-84f3-11eb-1549-1dbde49f2dc8
# ╠═10117a5a-84f4-11eb-0495-5d416a757361
# ╠═9e6d2806-875b-11eb-1510-8fd6941f4c30
# ╠═1bbfe604-875c-11eb-3046-d54e953e2863
# ╠═b686f768-875c-11eb-2d72-85a58d238a91
# ╠═17a30bb4-875c-11eb-3da4-13f01dc3a0d8
# ╠═06f7d5dc-875d-11eb-26cd-49d3c59c08b4
# ╠═139376bc-875c-11eb-3be1-ffbbde623b53
# ╠═4b45a282-875d-11eb-36f3-a538b022222b
# ╠═9e77ff16-875d-11eb-112f-53b0372bcba7
# ╠═bbed67d6-875d-11eb-1704-ab85264537a0
# ╠═ca16a11a-875d-11eb-34f3-5f63a5d60ba0
# ╠═41acc380-875e-11eb-2fc5-b3977be61b31
# ╠═5f97294e-875e-11eb-3a92-1166500a893c
# ╠═57b11dde-875e-11eb-3afc-192833262947
# ╠═52f64e86-875e-11eb-1b18-3f5850d2543e
# ╠═4de5f04a-875e-11eb-1f9e-b53b86954df5
# ╠═9689f3f8-8760-11eb-3581-814fdb8564cb
# ╠═eae571ac-8760-11eb-15ef-4d7bc9c92a8c
# ╠═9361f4a8-8760-11eb-2cab-ddd798c414fe
# ╠═218e6a58-8761-11eb-331b-9f0ac5d9c155
# ╠═4e30fe20-8761-11eb-0f45-4f61c05c7523
# ╠═889e2722-8761-11eb-2ae9-d191f7f16e49
# ╠═092e100a-8762-11eb-354b-3b458fc0cb32
# ╠═89558b04-8763-11eb-3cda-5f96a0e9697f
# ╠═421ba9e6-882e-11eb-1fb1-934068dfe114
# ╠═21025426-882e-11eb-04ca-f99c2a370e93
# ╠═53fa857e-882e-11eb-1380-eb3afd0e26c3
# ╠═deffaa82-882e-11eb-1e81-d1474731de4c
# ╠═08a83d28-882e-11eb-0a44-99c8e9f371fe
# ╠═f157ac0c-882e-11eb-19e0-c52926bc29cb
# ╠═010dfc6e-882f-11eb-0154-99f07855fd14
# ╠═4801e4fa-882f-11eb-09ae-854c7ef52ecf
# ╠═460d5cd8-882f-11eb-2264-51c965ffc37d
# ╠═2f0cc848-882f-11eb-3c1b-8931fe5d8d6e
# ╠═f2093f5e-882d-11eb-3672-d1be770bd014
# ╠═86aeec9c-8763-11eb-186c-c3b69f6123f8
# ╠═7a7d64ee-8763-11eb-2dc3-0d9dcafe3867
# ╠═dc3507b8-882f-11eb-3a47-a931e75df8d4
# ╠═40244222-8830-11eb-340f-af561508a2e8
# ╠═5dccefa4-8830-11eb-28c2-5bb518235926
# ╠═6560a0e4-8830-11eb-2b9c-5d4043d5476d
# ╠═4fa85322-8831-11eb-308d-f33fed8ebd82
# ╠═2c470670-8832-11eb-038c-5fbe615af70f
# ╠═4ae4a9c6-8831-11eb-3c5d-4b4691190771
# ╠═872bcb70-8832-11eb-3d91-4d907f509ad6
# ╠═9c0a4956-8832-11eb-36c2-6797957cb7f3
# ╠═93281712-8832-11eb-071a-df3ac0218bf3
# ╠═fa422f8e-8830-11eb-1213-6b148b69ab23
# ╠═28e77aae-8833-11eb-0e66-a38643b0f5cf
# ╠═303716bc-8834-11eb-36ac-336b09314c73
# ╠═74b227ee-8834-11eb-343a-b14de95adabf
# ╠═a8782632-8834-11eb-3ca3-1d1cd8ac0c77
# ╠═d533fe06-8834-11eb-09b3-8729f8b2fcfd
# ╠═055e4b1a-8835-11eb-2856-eda76d48d9e1
# ╠═205d5686-8835-11eb-1c59-fdd8dd566b43
# ╠═cd90b560-88c5-11eb-2e15-19368328b37b
# ╠═39c06d3e-8835-11eb-183c-01b708102f55
# ╠═2cab8336-8835-11eb-106b-39f43dc6f4d8
# ╠═adb5da4a-8834-11eb-2684-0b560a7ae5a2
# ╠═6b508b14-8834-11eb-0987-07fe2b52cbc5
# ╠═2d77ab4e-8834-11eb-0680-37555678fc14
# ╠═2bd17dea-8834-11eb-1d22-159134a24ff8
# ╠═f2954faa-8833-11eb-26fd-ad8c8a54a3c2
# ╠═ee947e14-8833-11eb-3014-c1c63aeb9065
# ╠═e980027c-8833-11eb-2878-1d115af58e63
# ╠═e522ce58-8833-11eb-3f89-b9de6daea575
# ╠═42dbd2b0-88ca-11eb-0708-1b8dcd536ad8
# ╠═bc6f6066-8833-11eb-1d4c-e37e0c3f243b
# ╠═6de9dd3a-88ca-11eb-2faf-cb0cfa6d655a
# ╠═b90a6b3c-8833-11eb-2bc4-9d2658034596
# ╠═26b785c6-88cb-11eb-34b9-e76189492816
# ╠═196eb65c-88cc-11eb-31b4-a51dea3c904b
# ╠═ce387f1a-8998-11eb-1325-4bc9d410f57e
# ╠═afd89db8-8833-11eb-1a6c-d50b334e20f5
# ╠═aa81941e-8833-11eb-16db-69a16388b005
# ╠═a6b22fbc-8833-11eb-118d-cdcb90d33385
# ╠═0777ff94-8833-11eb-2eaf-d780ae52c217
# ╠═c4b30d0c-8998-11eb-0b82-0fc68dec0282
# ╠═f696e670-8832-11eb-116d-fd8c5016673b
