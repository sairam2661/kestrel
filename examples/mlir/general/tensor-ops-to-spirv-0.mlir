"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> i32, sym_name = "tensor_extract_constant"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = dense<[[[1, 2, 3], [4, 5, 6]], [[7, 8, 9], [10, 11, 12]]]> : tensor<2x2x3xi32>}> : () -> tensor<2x2x3xi32>
    %1 = "tensor.extract"(%0, %arg0, %arg1, %arg2) : (tensor<2x2x3xi32>, index, index, index) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

