"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,256],f32>) -> !torch.vtensor<[?,?,256],f32>, sym_name = "torch.aten.matmul$proj"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,256],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<256x256xf32>}> : () -> !torch.vtensor<[256,256],f32>
    %1 = "torch.aten.matmul"(%arg0, %0) : (!torch.vtensor<[?,?,256],f32>, !torch.vtensor<[256,256],f32>) -> !torch.vtensor<[?,?,256],f32>
    "func.return"(%1) : (!torch.vtensor<[?,?,256],f32>) -> ()
  }) : () -> ()
}) : () -> ()

