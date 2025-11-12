"builtin.module"() ({
  "spirv.func"() <{function_type = (f32, f32) -> f32, sym_name = "max_value"}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "slt"}> : (f32, f32) -> i1
      ^bb1(%cond: i1):
        %1 = "arith.select"(%cond, %arg1, %arg0) : (i1, f32, f32) -> f32
        "spirv.ReturnValue"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()