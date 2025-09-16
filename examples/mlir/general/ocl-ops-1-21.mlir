"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.ptr<i8, UniformConstant>, i32, i32) -> i32, sym_name = "printf"}> ({
  ^bb0(%arg0: !spirv.ptr<i8, UniformConstant>, %arg1: i32, %arg2: i32):
    %0 = "spirv.CL.printf"(%arg0, %arg1, %arg2) : (!spirv.ptr<i8, UniformConstant>, i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

