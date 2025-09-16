"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.ptr<i32, Workgroup>, i32, i32) -> i32, sym_name = "atomic_compare_exchange"}> ({
  ^bb0(%arg0: !spirv.ptr<i32, Workgroup>, %arg1: i32, %arg2: i32):
    %0 = "spirv.AtomicCompareExchange"(%arg0, %arg1, %arg2) <{equal_semantics = #spirv.memory_semantics<Release>, memory_scope = #spirv.scope<Workgroup>, unequal_semantics = #spirv.memory_semantics<Acquire>}> : (!spirv.ptr<i32, Workgroup>, i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

