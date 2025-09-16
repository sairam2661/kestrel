"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.ptr<f32, CrossWorkgroup>, i64) -> (), sym_name = "ptr_access_chain1"}> ({
  ^bb0(%arg0: !spirv.ptr<f32, CrossWorkgroup>, %arg1: i64):
    %0 = "spirv.PtrAccessChain"(%arg0, %arg1) : (!spirv.ptr<f32, CrossWorkgroup>, i64) -> !spirv.ptr<f32, CrossWorkgroup>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

