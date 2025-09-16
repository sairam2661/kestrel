"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f32) -> f32, sym_name = "clamp_fordlessthanequal"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
    %0 = "spirv.FOrdLessThanEqual"(%arg1, %arg0) : (f32, f32) -> i1
    %1 = "spirv.Select"(%0, %arg0, %arg1) : (i1, f32, f32) -> f32
    %2 = "spirv.FOrdLessThanEqual"(%1, %arg2) : (f32, f32) -> i1
    %3 = "spirv.Select"(%2, %1, %arg2) : (i1, f32, f32) -> f32
    "spirv.ReturnValue"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

