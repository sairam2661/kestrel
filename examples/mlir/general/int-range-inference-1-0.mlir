"builtin.module"() ({
  "func.func"() <{function_type = (memref<3x5xi32>) -> index, sym_name = "dim_const"}> ({
  ^bb0(%arg0: memref<3x5xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.dim"(%arg0, %0) : (memref<3x5xi32>, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

