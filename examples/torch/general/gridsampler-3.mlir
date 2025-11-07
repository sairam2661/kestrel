"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[?,?,?,?],f32>, sym_name = "grid_sampler4"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>, %arg1: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.aten.grid_sampler"(%arg0, %arg1, %1, %2, %0) : (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,?,?],f32>, !torch.int, !torch.int, !torch.bool) -> !torch.vtensor<[?,?,?,?],f32>
    "func.return"(%3) : (!torch.vtensor<[?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

