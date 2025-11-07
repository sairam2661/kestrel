"builtin.module"() ({
  "func.func"() <{function_type = (index, memref<8xi32>) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: index, %arg1: memref<8xi32>):
    %0 = "memref.load"(%arg1, %arg0) : (memref<8xi32>, index) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

