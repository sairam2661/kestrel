"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[200,200,26],f64>) -> !torch.vtensor<[200,200,26],f64>, sym_name = "emptyLikeNoneDtype"}> ({
  ^bb0(%arg0: !torch.vtensor<[200,200,26],f64>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %4 = "torch.constant.none"() : () -> !torch.none
    %5 = "torch.aten.empty_like"(%arg0, %0, %1, %2, %3, %4) : (!torch.vtensor<[200,200,26],f64>, !torch.none, !torch.none, !torch.none, !torch.bool, !torch.none) -> !torch.vtensor<[200,200,26],f64>
    "func.return"(%5) : (!torch.vtensor<[200,200,26],f64>) -> ()
  }) : () -> ()
}) : () -> ()

