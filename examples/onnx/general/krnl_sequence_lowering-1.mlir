"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x3xf32>, memref<?xmemref<?x?xf32>>, index) -> memref<?x3xf32>, sym_name = "test_seqstore"}> ({
  ^bb0(%arg0: memref<?x3xf32>, %arg1: memref<?xmemref<?x?xf32>>, %arg2: index):
    %0 = "onnx.Constant"() {value_int = 0 : si64} : () -> tensor<i64>
    "krnl.seqstore"(%arg0, %arg1, %arg2) : (memref<?x3xf32>, memref<?xmemref<?x?xf32>>, index) -> ()
    "func.return"(%arg0) : (memref<?x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

