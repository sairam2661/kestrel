"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "test_complex_flow"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %2 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %4 = "arith.addi"(%1, %3) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
      "scf.yield"(%4) : (tensor<4x4xi32>) -> ()
    }) : (tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%2) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()