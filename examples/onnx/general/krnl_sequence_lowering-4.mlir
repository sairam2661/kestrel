"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xmemref<?x3xf32>>, index) -> index, sym_name = "test_seqdealloc"}> ({
  ^bb0(%arg0: memref<?xmemref<?x3xf32>>, %arg1: index):
    "krnl.seqdealloc"(%arg0) : (memref<?xmemref<?x3xf32>>) -> ()
    "func.return"(%arg1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

