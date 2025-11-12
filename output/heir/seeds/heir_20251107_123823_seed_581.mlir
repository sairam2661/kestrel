"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<16xi32>, index) -> i32
    %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg0, %0) : (i32, tensor<16xi32>, index) -> tensor<16xi32>
    %5 = "scf.for"(%arg1) <{lowerBound = #arith_index0, upperBound = #arith_index16}> ({
    ^bb0(%arg2: tensor<16xi32>, %iv: index):
      %6 = "tensor.extract"(%arg2, %iv) : (tensor<16xi32>, index) -> i32
      %7 = "arith.muli"(%6, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "tensor.insert"(%7, %arg2, %iv) : (i32, tensor<16xi32>, index) -> tensor<16xi32>
      "scf.yield"(%8) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()