"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.addtensor$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],f32>, !torch.int) -> !torch.vtensor<[?,?],f32>
    "func.return"(%1) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

