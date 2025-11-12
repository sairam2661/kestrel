"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>) -> i32, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %2, %3) : (tensor<4x4xi32>, index, index) -> i32
    %5 = "arith.addi"(%4, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg0, %2, %3) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
    %7 = "arith.muli"(%5, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()