"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_add_with_scf"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "scf.for"(%0, %1) ({
    ^bb0(%arg2: index, %arg3: tensor<4xi32>):
      %3 = "tensor.extract"(%arg0, %arg2) : (tensor<4xi32>, index) -> i32
      %4 = "tensor.extract"(%arg1, %arg2) : (tensor<4xi32>, index) -> i32
      %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "tensor.insert"(%arg3, %5, %arg2) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
      "scf.yield"(%arg2, %6) : (index, tensor<4xi32>) -> ()
    }) : (index, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%2#1) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()