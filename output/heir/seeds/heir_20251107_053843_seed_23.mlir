"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_add_with_control_flow"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: tensor<4xi32>):
      %4 = "tensor.extract"(%arg0, %arg2) : (tensor<4xi32>, index) -> i32
      %5 = "tensor.extract"(%arg1, %arg2) : (tensor<4xi32>, index) -> i32
      %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
      %7 = "tensor.insert"(%6, %arg3, %arg2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"(%7) : (tensor<4xi32>) -> ()
    }) : (index, index, index, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()