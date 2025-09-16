"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> memref<?xf32>, sym_name = "fold_trivial_memory_space_cast"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "memref.memory_space_cast"(%arg0) : (memref<?xf32>) -> memref<?xf32>
    "func.return"(%0) : (memref<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

