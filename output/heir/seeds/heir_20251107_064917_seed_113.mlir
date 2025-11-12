"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_ops"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %7 = "arith.subi"(%5, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "tensor.insert"(%7, %arg0, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %9 = "tensor_ext.rotate"(%8, %0, %2) : (tensor<4xi32>, index, index) -> tensor<4xi32>
    "func.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()