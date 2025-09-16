"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> memref<?xf32, 2>, sym_name = "fold_multiple_memory_space_cast"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "memref.memory_space_cast"(%arg0) : (memref<?xf32>) -> memref<?xf32, 1>
    %1 = "memref.memory_space_cast"(%0) : (memref<?xf32, 1>) -> memref<?xf32, 2>
    "func.return"(%1) : (memref<?xf32, 2>) -> ()
  }) : () -> ()
}) : () -> ()

