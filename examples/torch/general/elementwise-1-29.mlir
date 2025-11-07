"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.float) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.addscalar$variable"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.float):
    %0 = "torch.aten.add.Scalar"(%arg0, %arg1, %arg1) : (!torch.vtensor<[?,?],f32>, !torch.float, !torch.float) -> !torch.vtensor<[?,?],f32>
    "func.return"(%0) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

