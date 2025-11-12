"builtin.module"() ({
  "spirv.func"() <{function_type = (f32) -> f32, sym_name = "spirv_add"}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.mlir.constant"() <{value = 2.5 : f32}> : () -> f32
    %1 = "arith.addf"(%arg0, %0) <{fastmath = #arith_fastmath_flags_none}> : (f32, f32) -> f32
    %2 = "spirv.ReturnValue"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()