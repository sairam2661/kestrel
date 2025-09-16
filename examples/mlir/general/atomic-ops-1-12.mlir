"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.ptr<i32, Workgroup>, i32) -> i32, sym_name = "atomic_exchange"}> ({
  ^bb0(%arg0: !spirv.ptr<i32, Workgroup>, %arg1: i32):
    %0 = "spirv.AtomicExchange"(%arg0, %arg1) <{memory_scope = #spirv.scope<Workgroup>, semantics = #spirv.memory_semantics<Release>}> : (!spirv.ptr<i32, Workgroup>, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

