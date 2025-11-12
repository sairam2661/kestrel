"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "mixed_ops_on_tensors"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<10xi32>, index) -> i32
    %2 = "tensor.extract"(%arg1, %0) : (tensor<10xi32>, index) -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg0, %0) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
    %5 = "arith.constant"() <{value = 2 : index}> : () -> index
    %6 = "tensor.extract"(%arg0, %5) : (tensor<10xi32>, index) -> i32
    %7 = "tensor.extract"(%arg1, %5) : (tensor<10xi32>, index) -> i32
    %8 = "arith.subi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %4, %5) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
    "func.return"(%9) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()