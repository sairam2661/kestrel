"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x3xi32>) -> i32, sym_name = "fold_tensor_extract"}> ({
  ^bb0(%arg0: memref<2x3xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "bufferization.to_tensor"(%arg0) : (memref<2x3xi32>) -> tensor<2x3xi32>
    %3 = "tensor.extract"(%2, %0, %1) : (tensor<2x3xi32>, index, index) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

