"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4],si32>) -> !torch.vtensor<[3,4],f32>, sym_name = "torch.aten.expm1$int"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4],si32>):
    %0 = "torch.aten.expm1"(%arg0) : (!torch.vtensor<[3,4],si32>) -> !torch.vtensor<[3,4],f32>
    "func.return"(%0) : (!torch.vtensor<[3,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

