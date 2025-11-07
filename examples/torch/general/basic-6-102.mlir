"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4,5,6],si32>) -> !torch.vtensor<[5,6,2],si32>, sym_name = "torch.aten.diagonal$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4,5,6],si32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = -2 : i64}> : () -> !torch.int
    %3 = "torch.aten.diagonal"(%arg0, %2, %0, %1) : (!torch.vtensor<[3,4,5,6],si32>, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[5,6,2],si32>
    "func.return"(%3) : (!torch.vtensor<[5,6,2],si32>) -> ()
  }) : () -> ()
}) : () -> ()

