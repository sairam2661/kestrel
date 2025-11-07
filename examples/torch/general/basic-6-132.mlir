"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,8,3,3],si64>) -> !torch.vtensor<[1,2,2,2,3,3],si64>, sym_name = "torch.prims.split_dim$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,8,3,3],si64>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.prims.split_dim"(%arg0, %0, %1) : (!torch.vtensor<[1,8,3,3],si64>, !torch.int, !torch.int) -> !torch.vtensor<[1,2,4,3,3],si64>
    %3 = "torch.prims.split_dim"(%2, %1, %1) : (!torch.vtensor<[1,2,4,3,3],si64>, !torch.int, !torch.int) -> !torch.vtensor<[1,2,2,2,3,3],si64>
    "func.return"(%3) : (!torch.vtensor<[1,2,2,2,3,3],si64>) -> ()
  }) : () -> ()
}) : () -> ()

