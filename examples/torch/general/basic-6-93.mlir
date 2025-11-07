"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4],f32>) -> !torch.vtensor<[3,4],f32>, sym_name = "torch.aten.pow.Scalar"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4],f32>):
    %0 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.aten.pow.Scalar"(%0, %arg0) : (!torch.float, !torch.vtensor<[3,4],f32>) -> !torch.vtensor<[3,4],f32>
    "func.return"(%1) : (!torch.vtensor<[3,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

