"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[10,8,6],f32>, !torch.vtensor<[2,4,3],si64>, !torch.vtensor<[2,4,3],f32>) -> !torch.vtensor<[10,8,6],f32>, sym_name = "torch.aten.scatter.src$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[10,8,6],f32>, %arg1: !torch.vtensor<[2,4,3],si64>, %arg2: !torch.vtensor<[2,4,3],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.scatter.src"(%arg0, %0, %arg1, %arg2) : (!torch.vtensor<[10,8,6],f32>, !torch.int, !torch.vtensor<[2,4,3],si64>, !torch.vtensor<[2,4,3],f32>) -> !torch.vtensor<[10,8,6],f32>
    "func.return"(%1) : (!torch.vtensor<[10,8,6],f32>) -> ()
  }) : () -> ()
}) : () -> ()

