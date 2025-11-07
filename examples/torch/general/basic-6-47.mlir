"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.dropout$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.float"() <{value = 0.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.aten.dropout"(%arg0, %0, %1) : (!torch.vtensor<[?,?],f32>, !torch.float, !torch.bool) -> !torch.vtensor<[?,?],f32>
    "func.return"(%2) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

