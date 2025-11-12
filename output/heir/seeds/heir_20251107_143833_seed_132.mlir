"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : ui32}> : () -> ui32
    %1 = "tensor.insert"(%0, %arg0, %0, %0) <{overflowFlags = #arith_overflow_attrs}> : (ui32, tensor<4xi32>, index, index) -> tensor<4xi32>
    %2 = "arith.constant"() <{value = 2 : ui32}> : () -> ui32
    %3 = "tensor.insert"(%2, %arg1, %0, %0) <{overflowFlags = #arith_overflow_attrs}> : (ui32, tensor<4xi32>, index, index) -> tensor<4xi32>
    %4 = "arith.cmpi"(%1, %3, "eq" ) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %5 = "arith.constant"() <{value = 0 : ui32}> : () -> ui32
    %6 = "arith.select"(%4, %1, %5) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %7 = "arith.addi"(%1, %6) <{overflowFlags = #arith_overflow_attrs}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()