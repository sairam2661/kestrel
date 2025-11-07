"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xmemref<?x3xf32>>, index) -> memref<?x3xf32>, sym_name = "test_seqextract"}> ({
  ^bb0(%arg0: memref<?xmemref<?x3xf32>>, %arg1: index):
    %0 = "krnl.seqextract"(%arg0, %arg1) {copy = 1 : ui1} : (memref<?xmemref<?x3xf32>>, index) -> memref<?x3xf32>
    "func.return"(%0) : (memref<?x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

