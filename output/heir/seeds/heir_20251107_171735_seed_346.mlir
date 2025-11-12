"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_sum_mixed_control_flow"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "tensor.from_elements"(%2, %2, %2, %2, %2, %2, %2, %2) : (i32, i32, i32, i32, i32, i32, i32, i32) -> tensor<8xi32>
    %4 = "scf.for"(%0, %1, %2, %3) ({
    ^bb0(%arg2: index, %arg3: tensor<8xi32>):
      %5 = "tensor.extract"(%arg0, %arg2) : (tensor<8xi32>, index) -> i32
      %6 = "tensor.extract"(%arg1, %arg2) : (tensor<8xi32>, index) -> i32
      %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "tensor.insert"(%7, %arg3, %arg2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"(%8) : (tensor<8xi32>) -> ()
    }) {lower = 0 : i64, upper = 8 : i64} : (index, index, i32, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%4) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()