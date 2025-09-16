"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.sampled_image<!spirv.image<f32, Dim2D, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>) -> (), sym_name = "image"}> ({
  ^bb0(%arg0: !spirv.sampled_image<!spirv.image<f32, Dim2D, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>):
    %0 = "spirv.Image"(%arg0) : (!spirv.sampled_image<!spirv.image<f32, Dim2D, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>>) -> !spirv.image<f32, Dim2D, NoDepth, NonArrayed, SingleSampled, NeedSampler, Unknown>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

