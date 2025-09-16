"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.image<f32, Dim1D, NoDepth, NonArrayed, SingleSampled, NoSampler, Unknown>) -> (), sym_name = "image_query_size"}> ({
  ^bb0(%arg0: !spirv.image<f32, Dim1D, NoDepth, NonArrayed, SingleSampled, NoSampler, Unknown>):
    %0 = "spirv.ImageQuerySize"(%arg0) : (!spirv.image<f32, Dim1D, NoDepth, NonArrayed, SingleSampled, NoSampler, Unknown>) -> i32
    "spirv.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

