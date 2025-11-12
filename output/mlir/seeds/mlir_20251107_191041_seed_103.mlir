"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "complex_add"}> ({
    ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.addi"(%0, %1) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
      "scf.for"() <{lower_bound = 0 : index, upper_bound = 3 : index, step = 1 : index}> ({
        ^bb1(%iv: index):
          %3 = "tosa.const"() <{value = 42 : i32}> : () -> i32
          %4 = "arith.addi"(%2, %3) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
          "scf.yield"() : () -> ()
      }) : () -> ()
      "func.return"(%2) : (tensor<2x3xi32>) -> ()
  }) : () -> tensor<2x3xi32>
}) : () -> ()