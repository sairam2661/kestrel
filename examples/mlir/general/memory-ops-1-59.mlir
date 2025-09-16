"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "copy_memory_print_maa"}> ({
    %0 = "spirv.Variable"() <{storage_class = #spirv.storage_class<Function>}> : () -> !spirv.ptr<f32, Function>
    %1 = "spirv.Variable"() <{storage_class = #spirv.storage_class<Function>}> : () -> !spirv.ptr<f32, Function>
    "spirv.CopyMemory"(%0, %1) <{memory_access = #spirv.memory_access<Volatile>}> : (!spirv.ptr<f32, Function>, !spirv.ptr<f32, Function>) -> ()
    "spirv.CopyMemory"(%0, %1) <{alignment = 4 : i32, memory_access = #spirv.memory_access<Aligned>}> : (!spirv.ptr<f32, Function>, !spirv.ptr<f32, Function>) -> ()
    "spirv.CopyMemory"(%0, %1) <{alignment = 4 : i32, memory_access = #spirv.memory_access<Aligned>, source_memory_access = #spirv.memory_access<Volatile>}> : (!spirv.ptr<f32, Function>, !spirv.ptr<f32, Function>) -> ()
    "spirv.CopyMemory"(%0, %1) <{alignment = 4 : i32, memory_access = #spirv.memory_access<Aligned>, source_alignment = 8 : i32, source_memory_access = #spirv.memory_access<Aligned>}> : (!spirv.ptr<f32, Function>, !spirv.ptr<f32, Function>) -> ()
    "spirv.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

