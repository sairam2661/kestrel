"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "mixed_arithmetic_and_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "tensor.extract"(%arg0, %0, %0) : (tensor<4x4xi32>, index, index) -> i32
    %6 = "arith.addi"(%5, %4) <{overflowFlags = #arith_overflow_bounded}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg0, %0, %0) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
    %8 = "scf.for"(%0, %1, %2, %3) ({
    ^bb1(%iv: index, %acc: tensor<4x4xi32>):
      %9 = "tensor.extract"(%acc, %iv, %iv) : (tensor<4x4xi32>, index, index) -> i32
      %10 = "arith.subi"(%9, %4) <{overflowFlags = #arith_overflow_bounded}> : (i32, i32) -> i32
      %11 = "tensor.insert"(%10, %acc, %iv, %iv) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
      "scf.yield"(%iv, %11) : (index, tensor<4x4xi32>) -> ()
    }) : (index, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%8) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()