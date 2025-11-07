"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4],si32>) -> !torch.vtensor<[3,4],f32>, sym_name = "torch.aten.logit$int"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4],si32>):
    %0 = "torch.constant.float"() <{value = 9.9999999999999995E-8 : f64}> : () -> !torch.float
    %1 = "torch.aten.logit"(%arg0, %0) : (!torch.vtensor<[3,4],si32>, !torch.float) -> !torch.vtensor<[3,4],f32>
    "func.return"(%1) : (!torch.vtensor<[3,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

