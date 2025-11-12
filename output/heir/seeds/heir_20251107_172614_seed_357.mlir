"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_insert_extract"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0) : (tensor<4x4xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %0) : (tensor<4x4xi32>, index) -> i32
    %5 = "arith.muli"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg0, %1) : (i32, tensor<4x4xi32>, index) -> tensor<4x4xi32>
    %7 = "tensor.extract"(%arg1, %1) : (tensor<4x4xi32>, index) -> i32
    %8 = "arith.addi"(%5, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %6, %2) : (i32, tensor<4x4xi32>, index) -> tensor<4x4xi32>
    %10 = "arith.subi"(%8, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.select"(%10, %5, %8) : (i32, i32, i32) -> i32
    "func.return"(%9) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()