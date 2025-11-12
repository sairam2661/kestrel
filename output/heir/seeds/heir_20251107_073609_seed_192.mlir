"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_insert_extract"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "tensor.extract"(%arg0, %0, %0) : (tensor<2x2xi32>, index, index) -> i32
    %4 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x2xi32>, index, index) -> i32
    %5 = "tensor.extract"(%arg0, %1, %0) : (tensor<2x2xi32>, index, index) -> i32
    %6 = "tensor.extract"(%arg0, %1, %1) : (tensor<2x2xi32>, index, index) -> i32
    %7 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.muli"(%9, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %arg1, %0, %0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%11) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()