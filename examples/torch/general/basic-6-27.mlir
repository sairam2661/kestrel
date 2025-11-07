"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.rsub.Scalar$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.float"() <{value = 3.123400e+00 : f64}> : () -> !torch.float
    %1 = "torch.constant.float"() <{value = 6.432100e+00 : f64}> : () -> !torch.float
    %2 = "torch.aten.rsub.Scalar"(%arg0, %0, %1) : (!torch.vtensor<[?,?],f32>, !torch.float, !torch.float) -> !torch.vtensor<[?,?],f32>
    "func.return"(%2) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

