"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,4,3],f32>, !torch.vtensor<[1,4,2],si64>) -> !torch.vtensor<[1,4,2],f32>, sym_name = "torch.aten.gather"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,4,3],f32>, %arg1: !torch.vtensor<[1,4,2],si64>):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.aten.gather"(%arg0, %0, %arg1, %1) : (!torch.vtensor<[1,4,3],f32>, !torch.int, !torch.vtensor<[1,4,2],si64>, !torch.bool) -> !torch.vtensor<[1,4,2],f32>
    "func.return"(%2) : (!torch.vtensor<[1,4,2],f32>) -> ()
  }) : () -> ()
}) : () -> ()

