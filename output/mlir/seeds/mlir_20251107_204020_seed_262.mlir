"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x4xi32>) -> memref<4x4xi32>, sym_name = "tensor_transform"}> ({
  ^bb0(%arg0: memref<4x4xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tosa.const"() <{value = dense<0.5 : f32> : tensor<4x4xf32>}> : () -> tensor<4x4xf32>
    %2 = "tosa.cast"(%1) <{srcType = tensor<4x4xf32>, dstType = tensor<4x4xi32>}> : (tensor<4x4xf32>) -> tensor<4x4xi32>
    %3 = "memref.cast"(%2) <{src = tensor<4x4xi32>, dst = memref<4x4xi32>}> : (tensor<4x4xi32>) -> memref<4x4xi32>
    %4 = "tosa.add"(%3, %arg0) : (memref<4x4xi32>, memref<4x4xi32>) -> memref<4x4xi32>
    "func.return"(%4) : (memref<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()