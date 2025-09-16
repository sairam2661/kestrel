"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.ptr<f32, StorageBuffer>, f32) -> f32, sym_name = "atomic_fadd"}> ({
  ^bb0(%arg0: !spirv.ptr<f32, StorageBuffer>, %arg1: f32):
    %0 = "spirv.EXT.AtomicFAdd"(%arg0, %arg1) <{memory_scope = #spirv.scope<Device>, semantics = #spirv.memory_semantics<None>}> : (!spirv.ptr<f32, StorageBuffer>, f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

