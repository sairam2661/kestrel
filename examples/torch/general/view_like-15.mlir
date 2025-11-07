"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>) -> !torch.vtensor<[?,1,?,?,?],f32>, sym_name = "torch.aten.unsqueeze$dim$1"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.unsqueeze"(%arg0, %0) : (!torch.vtensor<[?,?,?,?],f32>, !torch.int) -> !torch.vtensor<[?,1,?,?,?],f32>
    "func.return"(%1) : (!torch.vtensor<[?,1,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

