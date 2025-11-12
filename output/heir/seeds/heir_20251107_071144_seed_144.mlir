"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, i32) -> tensor<2x2xi32>, sym_name = "stress_test"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %2, %3) : (tensor<2x2xi32>, index, index) -> i32
    %5 = "arith.muli"(%4, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg0, %2, %3) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%6) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()