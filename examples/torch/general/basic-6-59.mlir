"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,2],si32>, !torch.vtensor<[2,2],si32>) -> !torch.vtensor<[2,2],si64>, sym_name = "torch.aten.add$int"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,2],si32>, %arg1: !torch.vtensor<[2,2],si32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch.vtensor<[2,2],si32>, !torch.vtensor<[2,2],si32>, !torch.int) -> !torch.vtensor<[2,2],si64>
    "func.return"(%1) : (!torch.vtensor<[2,2],si64>) -> ()
  }) : () -> ()
}) : () -> ()

