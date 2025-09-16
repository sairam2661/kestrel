"builtin.module"() ({
  "func.func"() <{function_type = (memref<7x8xf32>) -> index, sym_name = "dim_out_of_bounds"}> ({
  ^bb0(%arg0: memref<7x8xf32>):
    %0 = "arith.constant"() <{value = 7 : index}> : () -> index
    %1 = "memref.dim"(%arg0, %0) : (memref<7x8xf32>, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

