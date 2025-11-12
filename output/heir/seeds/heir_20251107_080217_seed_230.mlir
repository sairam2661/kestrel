"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_mode_none}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg1, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %9 = "arith.muli"(%8, %8) <{overflowFlags = #arith_overflow_mode_none}> : (i32, i32) -> i32
    %10 = "tensor.insert"(%9, %7, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%10) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()