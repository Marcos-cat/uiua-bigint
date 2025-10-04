Base ← 10
New  ← ⍥(⊥Base)⊸(=₀⧻△)

Fix ↚ (
  Overflow ← ⍢(
    ⨬(+°↻₁|+⊓⌞⊂˜⊂0)⊸(±⊣) ⊃(⌊÷|◿)Base
  | ¬/××⊃(≥₀|<Base))
  Fractional ← ⌊⍢(+⍜⊢+˜⊂0×Base°˜⊂°+|¬/×=₀◿₁↘₁)
  ▽¬⍜⇌\×⊸=₀ Fractional Overflow
)

Eq ← ≍
Ne ← ¬Eq
Le ← ⨬(⍥⋅(<∩⌞⊏⊣⊚◡≠)⊃=<◡∩⧻|1)◡Eq
Ge ← ˜Le
Gt ← ¬Le
Lt ← ˜Gt

Add ← ⌅(Fix ⬚0+ ∩New|Fix ⬚0- ◡(˙⍤Ge))
Sub ← ⌝Add

Mul ← Fix ⨬(New ×|/+⬚0≡⌝↘°⊏⊞×) ×◡∩(=₁⧻△)

Str ← +@0⇌

┌─╴test
  Factorial ← /Mul⇡₁

  ⍤⤙≍ "3628800" Str Factorial 10
  Str Factorial 52
  "80658175170943878571660636856403766975289505440883277824000000000000"
  ⍤⤙≍

  Fib ← ◌⍥⤚Add⊙(1 0)

  Str Fib 256
  "141693817714056513234709965875411919657707794958199867"
  ⍤⤙≍
└─╴
