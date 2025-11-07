"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,128,128],f32>) -> !torch.vtensor<[1,1,128,128],f32>, sym_name = "torch.aten.clamp.float"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,128,128],f32>):
    %0 = "torch.constant.float"() <{value = 3.123400e+00 : f64}> : () -> !torch.float
    %1 = "torch.constant.float"() <{value = 6.432100e+00 : f64}> : () -> !torch.float
    %2 = "torch.aten.clamp"(%arg0, %0, %1) : (!torch.vtensor<[1,1,128,128],f32>, !torch.float, !torch.float) -> !torch.vtensor<[1,1,128,128],f32>
    "func.return"(%2) : (!torch.vtensor<[1,1,128,128],f32>) -> ()
  }) : () -> ()
}) : () -> ()

