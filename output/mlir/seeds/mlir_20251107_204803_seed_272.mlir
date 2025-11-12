"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x3xi64>) -> (i32, tensor<2x3xi64>), sym_name = "mixed_dialects_example"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x3xi64>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "tosa.const"() <{value = dense<42> : tensor<2x3xi64>}> : () -> tensor<2x3xi64>
    %2 = "scf.if"(%0) ({
      %3 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      "scf.yield"(%3, %1) : (i32, tensor<2x3xi64>) -> ()
    }, {
      %4 = "arith.subi"(%arg0, %0) : (i32, i32) -> i32
      "scf.yield"(%4, %1) : (i32, tensor<2x3xi64>) -> ()
    }) : (i32) -> (i32, tensor<2x3xi64>)
    %5 = "scf.for"(%arg0, %arg0, %0) ({
      ^bb1(%iv: i32):
        %6 = "arith.addi"(%iv, %arg0) : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%2#0, %2#1) : (i32, tensor<2x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()