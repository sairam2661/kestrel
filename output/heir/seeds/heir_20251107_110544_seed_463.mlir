"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_add"}> ({
    ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
      %0 = "tensor.apply_parallel"(%arg0, %arg1) ({
        ^bb0(%in0: tensor<2x2xi32>, %in1: tensor<2x2xi32>, %i: index, %j: index):
          %1 = "tensor.extract"(%in0, %i, %j) : (tensor<2x2xi32>, index, index) -> i32
          %2 = "tensor.extract"(%in1, %i, %j) : (tensor<2x2xi32>, index, index) -> i32
          %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow_modespec} > : (i32, i32) -> i32
          "tensor.yield"(%3) : (i32) -> ()
        }) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "func.return"(%0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()