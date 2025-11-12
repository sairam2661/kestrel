"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, index, index) -> tensor<4x4xi32>, sym_name = "tensor_index_select"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "arith.select"(%arg1, %0, %2) : (index, index, index) -> index
    %6 = "arith.select"(%arg2, %1, %3) : (index, index, index) -> index
    %7 = "tensor.extract"(%arg0, %5, %6) : (tensor<4x4xi32>, index, index) -> i32
    %8 = "arith.addi"(%7, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %arg0, %5, %6) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
    "func.return"(%9) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()