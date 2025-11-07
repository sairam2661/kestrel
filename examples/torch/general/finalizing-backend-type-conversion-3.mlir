"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> (), sym_name = "unable_to_convert_lone_tensor_load"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "torch_c.from_builtin_tensor"(%arg0) : (tensor<f32>) -> !torch.vtensor<[],f32>
    "test.sink"(%0) : (!torch.vtensor<[],f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

