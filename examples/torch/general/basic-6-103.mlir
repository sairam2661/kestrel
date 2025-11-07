"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,5,6],f32>, !torch.vtensor<[2],si64>) -> !torch.vtensor<[4,5,2],f32>, sym_name = "torch.aten.index_select"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,5,6],f32>, %arg1: !torch.vtensor<[2],si64>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch.vtensor<[4,5,6],f32>, !torch.int, !torch.vtensor<[2],si64>) -> !torch.vtensor<[4,5,2],f32>
    "func.return"(%1) : (!torch.vtensor<[4,5,2],f32>) -> ()
  }) : () -> ()
}) : () -> ()

