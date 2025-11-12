"builtin.module"() ({
  "spirv.func"() <{function_type = (i32, i32) -> i32, sym_name = "explore_spirv"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.shli"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg1) : (i32, i32) -> i32
    "spirv.ReturnValue"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()