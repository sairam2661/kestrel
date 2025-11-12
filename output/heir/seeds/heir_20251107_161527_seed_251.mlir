"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<10x4xi32>) -> tensor<10x4xi32>, sym_name = "tensor_modify"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<10x4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "tensor.extract"(%arg1, %0, %1) : (tensor<10x4xi32>, index, index) -> i32
    %5 = "arith.addi"(%4, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg1, %0, %1) : (i32, tensor<10x4xi32>, index, index) -> tensor<10x4xi32>
    %7 = "tensor.extract"(%6, %2, %1) : (tensor<10x4xi32>, index, index) -> i32
    %8 = "arith.subi"(%7, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %6, %2, %1) : (i32, tensor<10x4xi32>, index, index) -> tensor<10x4xi32>
    "func.return"(%9) : (tensor<10x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()