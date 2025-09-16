"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xi32>) -> (), sym_name = "rank_of_ranked"}> ({
  ^bb0(%arg0: memref<?xi32>):
    %0 = "memref.rank"(%arg0) : (memref<?xi32>) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

