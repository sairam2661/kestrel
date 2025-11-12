"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_add_sub"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %8 = "arith.subi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %5, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()