Carry ↚ ⍥(+⨬↻₁⊓(⊂⊙0|⊂0)±⊸⊢⌊⊃÷◿10)∞
Align ↚ ⍜(⍥⊙⊙⌅(:|:)⌅◡<|⊂↯⊙0⌵-)◡∩⧻

Mul ← Carry /+⬚0≡⌝↘°⊏⊞×
# ? Scalar BigInt
MulN ← Carry ×

AddImpl ↚ Carry + Align
SubImpl ↚ Carry - Align
# ? BigInt BigInt
Add ← ⌅(AddImpl|SubImpl)
# ? BigInt BigInt
Sub ← ⌝Add

AddNImpl ↚ Carry ⍜⊙⊣+
SubNImpl ↚ Carry ⍜⊙⊣-
# ? Scalar BigInt
AddN ← ⌅(AddNImpl|SubNImpl)
# ? Scalar BigInt
SubN ← ⌝AddN

Eq  ← ≍
Neq ← ¬Eq
Gt  ← ⨬>⋅⋅(>∩(⊗1)⊃><)◡=◡∩⧻
Ge  ← ↥⊃Gt Eq
Lt  ← ¬Ge
Le  ← ¬Gt

# Make a BigInt from a scalar or a string of digits
New ← ⌅(⨬(Carry¤|-@0)⊸type|/(+×10))
# Convert a BigInt into a string of digits
Str ← ⌅(+@0|New)

┌─╴test
  ⍤⤙≍ [1 6 8] Add [1 2 3] [4 5]
  ⍤⤙≍ 4782 ◌◌⍢⊓⤚Add+₁(<1e3⧻)∩¤1 0 1

  Fact ← ∧MulN+₁⇡⊙[1]

  Fact 42
  ⍤⤙≍ New $ 1405006117752879898543142606244511569936384000000000

  Mul. Fact 20
  ⍤⤙≍ New $ 5919012181389927685417441689600000000

  AddN 42 New $ 12345678901234567890
  ⍤⤙≍ New $ 12345678901234567932
└─╴
