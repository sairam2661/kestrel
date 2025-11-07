"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>) -> !torch.vtensor<[2,3],f32>, sym_name = "no_seed_needed"}> ({
  ^bb0(%arg0: tensor<2x3xf32>):
    %0 = "torch_c.from_builtin_tensor"(%arg0) : (tensor<2x3xf32>) -> !torch.vtensor<[2,3],f32>
    "func.return"(%0) : (!torch.vtensor<[2,3],f32>) -> ()
  }) : () -> ()
}) : () -> ()

