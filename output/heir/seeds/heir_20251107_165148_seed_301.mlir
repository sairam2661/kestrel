"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg1, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %6 = "arith.subi"(%3, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %4, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %9 = "arith.addi"(%6, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "tensor.insert"(%9, %7, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%10) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()