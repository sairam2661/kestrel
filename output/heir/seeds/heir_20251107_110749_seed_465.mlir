"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64, tensor<5xi32>) -> i64, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: tensor<5xi32>):
    %0 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %2 = "arith.muli"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %3 = "arith.constant"() <{value = dense<1> : tensor<5xi32>}> : () -> tensor<5xi32>
    %4 = "tensor.insert"(%arg2, %3, %0) <{position = [0, 0, 0, 0, 0]}> : (tensor<5xi32>, i32, index) -> tensor<5xi32>
    %5 = "tensor.extract"(%4, %0) : (tensor<5xi32>, index) -> i32
    %6 = "arith.muli"(%5, %2) <{overflowFlags = #arith_overflownone}> : (i32, i64) -> i64
    "func.return"(%6) : (i64) -> ()
  }) : () -> ()
}) : () -> ()