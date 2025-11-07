"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],si32>, !torch.vtensor<[?,?],si64>) -> !torch.vtensor<[?,?],si64>, sym_name = "torch.aten.subtensor$promote"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],si32>, %arg1: !torch.vtensor<[?,?],si64>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.sub.Tensor"(%arg0, %arg1, %0) : (!torch.vtensor<[?,?],si32>, !torch.vtensor<[?,?],si64>, !torch.int) -> !torch.vtensor<[?,?],si64>
    "func.return"(%1) : (!torch.vtensor<[?,?],si64>) -> ()
  }) : () -> ()
}) : () -> ()

