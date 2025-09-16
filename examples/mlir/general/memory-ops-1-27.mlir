"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "image_load"}> ({
    %0 = "spirv.Variable"() <{storage_class = #spirv.storage_class<Function>}> : () -> !spirv.ptr<!spirv.image<f32, Dim2D, NoDepth, NonArrayed, SingleSampled, NoSampler, Rgba8>, Function>
    %1 = "spirv.Load"(%0) : (!spirv.ptr<!spirv.image<f32, Dim2D, NoDepth, NonArrayed, SingleSampled, NoSampler, Rgba8>, Function>) -> !spirv.image<f32, Dim2D, NoDepth, NonArrayed, SingleSampled, NoSampler, Rgba8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

