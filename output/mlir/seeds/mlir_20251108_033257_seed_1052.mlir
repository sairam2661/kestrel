"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "scf.if"(%0) ({
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"() : () -> ()
    }, {
      %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"() : () -> ()
    }) : (tensor<2x3xi32>) -> (i32)
    "func.return"(%0) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()