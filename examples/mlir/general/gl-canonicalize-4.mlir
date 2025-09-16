"builtin.module"() ({
  "func.func"() <{function_type = (si32, si32, si32) -> si32, sym_name = "clamp_slessthan"}> ({
  ^bb0(%arg0: si32, %arg1: si32, %arg2: si32):
    %0 = "spirv.SLessThan"(%arg1, %arg0) : (si32, si32) -> i1
    %1 = "spirv.Select"(%0, %arg0, %arg1) : (i1, si32, si32) -> si32
    %2 = "spirv.SLessThan"(%1, %arg2) : (si32, si32) -> i1
    %3 = "spirv.Select"(%2, %1, %arg2) : (i1, si32, si32) -> si32
    "spirv.ReturnValue"(%3) : (si32) -> ()
  }) : () -> ()
}) : () -> ()

