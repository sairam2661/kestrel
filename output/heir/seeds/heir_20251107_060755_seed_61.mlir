"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>) -> i32, sym_name = "tensor_sum"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %7 = "arith.addi"(%0, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.addi"(%7, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.addi"(%8, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()