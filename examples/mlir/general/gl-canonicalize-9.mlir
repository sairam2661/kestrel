"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "clamp_ulessthan"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "spirv.ULessThan"(%arg0, %arg1) : (i32, i32) -> i1
    %1 = "spirv.Select"(%0, %arg1, %arg0) : (i1, i32, i32) -> i32
    %2 = "spirv.ULessThan"(%arg2, %arg0) : (i32, i32) -> i1
    %3 = "spirv.Select"(%2, %arg2, %1) : (i1, i32, i32) -> i32
    "spirv.ReturnValue"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

