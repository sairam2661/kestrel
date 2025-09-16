"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.ptr<i32, StorageBuffer>, i32) -> i32, sym_name = "atomic_and"}> ({
  ^bb0(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32):
    %0 = "spirv.AtomicAnd"(%arg0, %arg1) <{memory_scope = #spirv.scope<Device>, semantics = #spirv.memory_semantics<None>}> : (!spirv.ptr<i32, StorageBuffer>, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

