"builtin.module"() ({
  "func.func"() <{function_type = (memref<33xi32>) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: memref<33xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.load"(%arg0, %0) : (memref<33xi32>, index) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

