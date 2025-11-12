"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xi32>) -> (memref<4xi32>), sym_name = "complex_tensor_ops"}> ({
    ^bb0(%arg0: memref<4xi32>):
      %1 = "tosa.fill"() <{value = 1 : i32, dims = 4}> : () -> memref<4xi32>
      %2 = "tosa.add"(%arg0, %1) : (memref<4xi32>, memref<4xi32>) -> memref<4xi32>
      %3 = "tosa.sub"(%2, %1) : (memref<4xi32>, memref<4xi32>) -> memref<4xi32>
      %4 = "tosa.mul"(%3, %1) : (memref<4xi32>, memref<4xi32>) -> memref<4xi32>
      %5 = "tosa.div"(%4, %1) : (memref<4xi32>, memref<4xi32>) -> memref<4xi32>
      "func.return"(%5) : (memref<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()