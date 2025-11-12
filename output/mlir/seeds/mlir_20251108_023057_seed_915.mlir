"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x3xi64>) -> (i32, tensor<4x3xi64>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x3xi64>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = dense<2> : tensor<4x3xi64>}> : () -> tensor<4x3xi64>
    %3 = "arith.addi"(%arg1, %2) : (tensor<4x3xi64>, tensor<4x3xi64>) -> tensor<4x3xi64>
    %4 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %5 = "arith.addf"(%4, %4) : (f32, f32) -> f32
    %6 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    "scf.if"(%6) ({
    ^bb1:
      "scf.yield"() : () -> ()
    }, {
    ^bb2:
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%1, %3) : (i32, tensor<4x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()