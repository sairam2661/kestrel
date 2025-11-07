"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.leaky_relu$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.float"() <{value = 1.000000e-01 : f64}> : () -> !torch.float
    %1 = "torch.aten.leaky_relu"(%arg0, %0) : (!torch.vtensor<[?,?],f32>, !torch.float) -> !torch.vtensor<[?,?],f32>
    "func.return"(%1) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

