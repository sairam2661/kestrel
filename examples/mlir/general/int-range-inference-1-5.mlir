"builtin.module"() ({
  "func.func"() <{function_type = (memref<*xi32>) -> index, sym_name = "dim_unranked"}> ({
  ^bb0(%arg0: memref<*xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.dim"(%arg0, %0) : (memref<*xi32>, index) -> index
    %2 = "test.reflect_bounds"(%1) : (index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

