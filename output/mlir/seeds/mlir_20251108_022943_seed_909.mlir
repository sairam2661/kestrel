"builtin.module"() ({
  "func.func"() <{function_type = (memref<1024x128xi32>, memref<1024x128xi32>) -> memref<1024x128xi32>, sym_name = "test_transform_ops"}> ({
  ^bb0(%arg0: memref<1024x128xi32>, %arg1: memref<1024x128xi32>):
    %0 = "transform.named_sequence"(%arg0, %arg1) <{sequence_name = "example"}> : (memref<1024x128xi32>, memref<1024x128xi32>) -> memref<1024x128xi32>
    %1 = "transform.structured.match"(%0) <{pattern = "some_pattern"}> : (memref<1024x128xi32>) -> memref<1024x128xi32>
    %2 = "transform.yield"(%1) : (memref<1024x128xi32>) -> memref<1024x128xi32>
    "func.return"(%2) : (memref<1024x128xi32>) -> ()
  }) : () -> ()
}) : () -> ()