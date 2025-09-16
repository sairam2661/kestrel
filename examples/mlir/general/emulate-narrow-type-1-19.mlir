"builtin.module"() ({
  "func.func"() <{function_type = (memref<32x128xi4, 1>) -> memref<32x128xi4>, sym_name = "memref_memory_space_cast_i4"}> ({
  ^bb0(%arg0: memref<32x128xi4, 1>):
    %0 = "memref.memory_space_cast"(%arg0) : (memref<32x128xi4, 1>) -> memref<32x128xi4>
    "func.return"(%0) : (memref<32x128xi4>) -> ()
  }) : () -> ()
}) : () -> ()

