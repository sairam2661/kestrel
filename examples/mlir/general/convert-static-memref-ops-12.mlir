"builtin.module"() ({
  "func.func"() <{function_type = (memref<42x32x15x13x27xf32>) -> index, sym_name = "static_out_of_bound_memref_dim"}> ({
  ^bb0(%arg0: memref<42x32x15x13x27xf32>):
    %0 = "arith.constant"() <{value = -7 : index}> : () -> index
    %1 = "memref.dim"(%arg0, %0) : (memref<42x32x15x13x27xf32>, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

