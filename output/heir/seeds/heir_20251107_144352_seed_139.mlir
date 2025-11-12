"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xi32>, i32) -> i32, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4x8xi32>, %arg1: i32):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index

    %0 = "tensor.extract"(%arg0, %c0, %c1) : (tensor<4x8xi32>, index, index) -> i32
    %1 = "tensor.extract"(%arg0, %c2, %c3) : (tensor<4x8xi32>, index, index) -> i32
    %2 = "tensor.extract"(%arg0, %c4, %c5) : (tensor<4x8xi32>, index, index) -> i32

    %3 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addi"(%3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

    %5 = "arith.muli"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()