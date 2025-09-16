"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xi128, 1>) -> (), sym_name = "load_i128"}> ({
  ^bb0(%arg0: memref<4xi128, 1>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.load"(%arg0, %0) : (memref<4xi128, 1>, index) -> i128
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

