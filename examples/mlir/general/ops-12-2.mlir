"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x4x?xf32>) -> (), sym_name = "rank"}> ({
  ^bb0(%arg0: memref<4x4x?xf32>):
    %0 = "memref.rank"(%arg0) : (memref<4x4x?xf32>) -> index
    %1 = "memref.rank"(%arg0) : (memref<4x4x?xf32>) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

