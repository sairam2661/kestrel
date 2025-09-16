"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>) -> index, sym_name = "fold_rank_memref"}> ({
  ^bb0(%arg0: memref<?x?xf32>):
    %0 = "memref.rank"(%arg0) : (memref<?x?xf32>) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

