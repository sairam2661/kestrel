"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[15,15],si64>) -> !torch.vtensor<[15,15],si64>, sym_name = "torch.aten.abs"}> ({
  ^bb0(%arg0: !torch.vtensor<[15,15],si64>):
    %0 = "torch.aten.abs"(%arg0) : (!torch.vtensor<[15,15],si64>) -> !torch.vtensor<[15,15],si64>
    "func.return"(%0) : (!torch.vtensor<[15,15],si64>) -> ()
  }) : () -> ()
}) : () -> ()

