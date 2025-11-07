"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,3,?,?],f32>) -> !torch.vtensor<[?,3,?,?],f32>, sym_name = "torch.aten.batch_norm$inference"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,3,?,?],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<0.000000e+00> : tensor<3xf32>}> : () -> !torch.vtensor<[3],f32>
    %1 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<3xf32>}> : () -> !torch.vtensor<[3],f32>
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %4 = "torch.constant.float"() <{value = 1.000000e-01 : f64}> : () -> !torch.float
    %5 = "torch.constant.float"() <{value = 1.000000e-05 : f64}> : () -> !torch.float
    %6 = "torch.aten.batch_norm"(%arg0, %1, %0, %0, %1, %3, %4, %5, %2) : (!torch.vtensor<[?,3,?,?],f32>, !torch.vtensor<[3],f32>, !torch.vtensor<[3],f32>, !torch.vtensor<[3],f32>, !torch.vtensor<[3],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool) -> !torch.vtensor<[?,3,?,?],f32>
    "func.return"(%6) : (!torch.vtensor<[?,3,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

