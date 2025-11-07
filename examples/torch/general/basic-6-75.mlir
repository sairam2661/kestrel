"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,4],si32>) -> !torch.vtensor<[2,4],si32>, sym_name = "torch.aten.tril$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,4],si32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.tril"(%arg0, %0) : (!torch.vtensor<[2,4],si32>, !torch.int) -> !torch.vtensor<[2,4],si32>
    "func.return"(%1) : (!torch.vtensor<[2,4],si32>) -> ()
  }) : () -> ()
}) : () -> ()

