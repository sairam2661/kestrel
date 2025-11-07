"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,5],si32>) -> !torch.vtensor<[3,5],f32>, sym_name = "torch.aten.sigmoid$int"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,5],si32>):
    %0 = "torch.aten.sigmoid"(%arg0) : (!torch.vtensor<[3,5],si32>) -> !torch.vtensor<[3,5],f32>
    "func.return"(%0) : (!torch.vtensor<[3,5],f32>) -> ()
  }) : () -> ()
}) : () -> ()

