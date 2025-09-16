"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.ptr<f32, CrossWorkgroup>) -> (), sym_name = "ptrcasttogeneric1"}> ({
  ^bb0(%arg0: !spirv.ptr<f32, CrossWorkgroup>):
    %0 = "spirv.PtrCastToGeneric"(%arg0) : (!spirv.ptr<f32, CrossWorkgroup>) -> !spirv.ptr<f32, Generic>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

