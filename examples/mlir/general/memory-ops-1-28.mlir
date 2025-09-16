"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "simple_store"}> ({
  ^bb0(%arg2: f32):
    %2 = "spirv.Variable"() <{storage_class = #spirv.storage_class<Function>}> : () -> !spirv.ptr<f32, Function>
    "spirv.Store"(%2, %arg2) : (!spirv.ptr<f32, Function>, f32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32) -> (), sym_name = "volatile_store"}> ({
  ^bb0(%arg1: f32):
    %1 = "spirv.Variable"() <{storage_class = #spirv.storage_class<Function>}> : () -> !spirv.ptr<f32, Function>
    "spirv.Store"(%1, %arg1) <{memory_access = #spirv.memory_access<Volatile>}> : (!spirv.ptr<f32, Function>, f32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32) -> (), sym_name = "aligned_store"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.Variable"() <{storage_class = #spirv.storage_class<Function>}> : () -> !spirv.ptr<f32, Function>
    "spirv.Store"(%0, %arg0) <{alignment = 4 : i32, memory_access = #spirv.memory_access<Aligned>}> : (!spirv.ptr<f32, Function>, f32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

