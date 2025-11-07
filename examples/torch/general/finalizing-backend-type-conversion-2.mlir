"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<f32>, sym_name = "unable_to_convert_lone_buffer_cast"}> ({
    %0 = "test.source"() : () -> !torch.vtensor<[],f32>
    %1 = "torch_c.to_builtin_tensor"(%0) : (!torch.vtensor<[],f32>) -> tensor<f32>
    "func.return"(%1) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

