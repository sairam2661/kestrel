"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2x3xf32>) -> tensor<3x2x1xf32>, sym_name = "torch.aten.min.dim$basic"}> ({
  ^bb0(%arg0: tensor<3x2x3xf32>):
    %0 = "torch_c.from_builtin_tensor"(%arg0) : (tensor<3x2x3xf32>) -> !torch.vtensor<[3,2,3],f32>
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3:2 = "torch.aten.min.dim"(%0, %2, %1) : (!torch.vtensor<[3,2,3],f32>, !torch.int, !torch.bool) -> (!torch.vtensor<[3,2,1],f32>, !torch.vtensor<[3,2,1],si64>)
    %4 = "torch_c.to_builtin_tensor"(%3#0) : (!torch.vtensor<[3,2,1],f32>) -> tensor<3x2x1xf32>
    "func.return"(%4) : (tensor<3x2x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

