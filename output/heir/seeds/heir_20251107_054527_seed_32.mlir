"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> i32, sym_name = "tensor_and_loop"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %8 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.addi"(%8, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%9, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.muli"(%10, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%11) : (i32) -> ()
  }) : () -> ()
}) : () -> ()