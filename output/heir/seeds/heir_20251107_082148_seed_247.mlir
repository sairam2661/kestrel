"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<2x4xi32>, sym_name = "mixed_ops_tensor"}> ({
  ^bb0(%arg0: tensor<2x4xi32>, %arg1: tensor<2x4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = -1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %4 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x4xi32>, index, index) -> i32
    %5 = "tensor.extract"(%arg1, %0, %1) : (tensor<2x4xi32>, index, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.subi"(%6, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.cmpi"(%4, %5, "slt") : (i32, i32) -> i1
    %9 = "arith.select"(%8, %7, %4) : (i1, i32, i32) -> i32
    %10 = "tensor.insert"(%9, %arg0, %0, %1) : (i32, tensor<2x4xi32>, index, index) -> tensor<2x4xi32>
    "func.return"(%10) : (tensor<2x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()