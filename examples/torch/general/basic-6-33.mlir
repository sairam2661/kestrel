"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[10,4,3],f32>) -> !torch.vtensor<[10,4,3],f32>, sym_name = "torch.aten.native_batch_norm$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[10,4,3],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<[5.000000e-01, 4.000000e-01, 3.000000e-01, 6.000000e-01]> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %1 = "torch.vtensor.literal"() <{value = dense<[3.000000e+00, 2.000000e+00, 4.000000e+00, 5.000000e+00]> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %2 = "torch.constant.float"() <{value = 1.000000e-01 : f64}> : () -> !torch.float
    %3 = "torch.constant.float"() <{value = 1.000000e-05 : f64}> : () -> !torch.float
    %4 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %5 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %6 = "torch.aten.batch_norm"(%arg0, %1, %0, %0, %1, %5, %2, %3, %4) : (!torch.vtensor<[10,4,3],f32>, !torch.vtensor<[4],f32>, !torch.vtensor<[4],f32>, !torch.vtensor<[4],f32>, !torch.vtensor<[4],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool) -> !torch.vtensor<[10,4,3],f32>
    "func.return"(%6) : (!torch.vtensor<[10,4,3],f32>) -> ()
  }) : () -> ()
}) : () -> ()

