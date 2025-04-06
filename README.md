# A Uiua BigInt Implementation

All BigInts are stored as vectors of decimal digits for ease of use. They are
stored most significant digit first, like written numbers.

Negative BigInts are not yet supported.

BigInts are stored with no leading zeros, and grow when an operation on them
necessitates it.

## Functions

Functions suffixed with `N` take a scalar as the first argument.

|  Name  | Primitive Equivalent |         Notes          |
| :----: | :------------------: | :--------------------: |
| `New`  |         `⋕`          |      Make BigInt       |
| `Str`  |         `°⋕`         |      Make String       |
| `Add`  |         `+`          |          Add           |
| `Sub`  |         `-`          |        Subtract        |
| `Mul`  |         `×`          |        Multiply        |
| `AddN` |         `+`          |          Add           |
| `SubN` |         `-`          |        Subtract        |
| `MulN` |         `×`          |        Multiply        |
|  `Eq`  |         `=`          |         Equals         |
| `Neq`  |         `≠`          |       Not Equals       |
|  `Gt`  |         `>`          |      Greater Than      |
|  `Lt`  |         `<`          |       Less Than        |
|  `Ge`  |         `≥`          | Greater Than or Equals |
|  `Le`  |         `≤`          |  Less Than or Equals   |
