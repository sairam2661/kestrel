"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf64>, memref<?x?xf64>) -> memref<?x?xf64>, sym_name = "dealloc_existing_clones"}> ({
  ^bb0(%arg0: memref<?x?xf64>, %arg1: memref<?x?xf64>):
    %0 = "bufferization.clone"(%arg0) : (memref<?x?xf64>) -> memref<?x?xf64>
    %1 = "bufferization.clone"(%arg1) : (memref<?x?xf64>) -> memref<?x?xf64>
    "func.return"(%0) : (memref<?x?xf64>) -> ()
  }) : () -> ()
}) : () -> ()

