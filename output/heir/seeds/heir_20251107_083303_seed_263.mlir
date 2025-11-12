"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, i32) -> tensor<16xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %2) : (tensor<16xi32>, index) -> i32
    %4 = "arith.subi"(%3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor_ext.rotate"(%arg0, %2, %4) <{axis = 0}> : (tensor<16xi32>, index, i32) -> tensor<16xi32>
    %6 = "secret.generic"(%5) ({
    ^bb1(%arg2: tensor<16xi32>):
      %7 = "tensor.extract"(%arg2, %2) : (tensor<16xi32>, index) -> i32
      %8 = "arith.muli"(%7, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %9 = "tensor.insert"(%arg2, %8, %2) : (tensor<16xi32>, i32, index) -> tensor<16xi32>
      "secret.yield"(%9) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()