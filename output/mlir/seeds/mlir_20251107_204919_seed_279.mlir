"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, tensor<2x3xi8>) -> (i32, i64), sym_name = "complex_type_mixed", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: tensor<2x3xi8>):
    %0 = "tosa.const"() <{value = 42 : i32}> : () -> i32
    %1 = "tosa.const"() <{value = 123 : i64}> : () -> i64
    %2 = "tosa.const"() <{value = dense<0> : tensor<2x3xi8>}> : () -> tensor<2x3xi8>
    %3 = "scf.if"(%arg0) ({
    ^bb0(%arg3: i32):
      %4 = "arith.addi"(%arg3, %0) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
    ^bb0:
      "scf.yield"(%arg0) : (i32) -> ()
    }) : (i32) -> (i32)
    %5 = "arith.addi"(%arg1, %1) : (i64, i64) -> i64
    %6 = "scf.if"(%arg1) ({
    ^bb0(%arg7: i64):
      %8 = "arith.addi"(%arg7, %1) : (i64, i64) -> i64
      "scf.yield"(%8) : (i64) -> ()
    }, {
    ^bb0:
      "scf.yield"(%arg1) : (i64) -> ()
    }) : (i64) -> (i64)
    %9 = "scf.for"(%0, %0, %3) ({
    ^bb1(%arg4: i32, %arg5: i32):
      %10 = "arith.addi"(%arg4, %arg5) : (i32, i32) -> i32
      "scf.yield"(%10) : (i32) -> ()
    }, {
    ^bb2(%arg6: i32, %arg7: i32):
      "scf.yield"(%arg6, %arg7) : (i32, i32) -> ()
    }) : (i32, i32) -> (i32, i32)
    "func.return"(%3, %5) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()