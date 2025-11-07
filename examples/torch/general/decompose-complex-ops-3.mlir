"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[20],si32>) -> !torch.vtensor<[],si64>, sym_name = "argmax_rank_1"}> ({
  ^bb0(%arg0: !torch.vtensor<[20],si32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.aten.argmax"(%arg0, %0, %1) : (!torch.vtensor<[20],si32>, !torch.none, !torch.bool) -> !torch.vtensor<[],si64>
    "func.return"(%2) : (!torch.vtensor<[],si64>) -> ()
  }) : () -> ()
}) : () -> ()

