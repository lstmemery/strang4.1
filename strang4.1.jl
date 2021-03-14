### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# ╔═╡ 1ff9ef98-84e2-11eb-2308-7b3e5ff349b9
using RowEchelon

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

``\x_r = \m{0 \\ 1}``
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

# ╔═╡ Cell order:
# ╠═1ff9ef98-84e2-11eb-2308-7b3e5ff349b9
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
