"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>, sym_name = "tensor_mixed_operations"}> ({
  ^bb0(%arg0: tensor<4x4xi8>, %arg1: tensor<4x4xi8>):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>
    %1 = "arith.cmpi"(%arg0, %arg1, "gt") : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi1>
    %2 = "arith.select"(%1, %0, %arg1) : (tensor<4x4xi1>, tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>
    %3 = "tensor.extract"(%2, 0) : (tensor<4x4xi8>) -> i8
    %4 = "arith.addi"(%3, 10) <{overflowFlags = #arith_overflowFlags}> : (i8, i8) -> i8
    %5 = "tensor.insert"(%4, %2, 0) : (i8, tensor<4x4xi8>, i64) -> tensor<4x4xi8>
    "func.return"(%5) : (tensor<4x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()