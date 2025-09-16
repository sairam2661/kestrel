"builtin.module"() ({
  "func.func"() <{function_type = (i128, memref<4xi128, 1>) -> (), sym_name = "store_i128"}> ({
  ^bb0(%arg0: i128, %arg1: memref<4xi128, 1>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    "memref.store"(%arg0, %arg1, %0) : (i128, memref<4xi128, 1>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

