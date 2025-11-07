"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,3],si32>) -> !torch.vtensor<[4,3,1],si32>, sym_name = "torch.aten.unsqueeze$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,3],si32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.aten.unsqueeze"(%arg0, %0) : (!torch.vtensor<[4,3],si32>, !torch.int) -> !torch.vtensor<[4,3,1],si32>
    "func.return"(%1) : (!torch.vtensor<[4,3,1],si32>) -> ()
  }) : () -> ()
}) : () -> ()

