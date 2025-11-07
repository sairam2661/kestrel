"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.int) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.divscalar$variable"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.int):
    %0 = "torch.aten.div.Scalar"(%arg0, %arg1) : (!torch.vtensor<[?,?],f32>, !torch.int) -> !torch.vtensor<[?,?],f32>
    "func.return"(%0) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

