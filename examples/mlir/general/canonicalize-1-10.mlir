"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xi8>, index) -> index, sym_name = "out_of_bound_memref.dim"}> ({
  ^bb0(%arg0: memref<?xi8>, %arg1: index):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "memref.dim"(%arg0, %0) : (memref<?xi8>, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

