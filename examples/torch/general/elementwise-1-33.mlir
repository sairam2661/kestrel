"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.int) -> !torch.vtensor<[?,?],i1>, sym_name = "torch.aten.gt.scalar$variable"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.int):
    %0 = "torch.aten.gt.Scalar"(%arg0, %arg1) : (!torch.vtensor<[?,?],f32>, !torch.int) -> !torch.vtensor<[?,?],i1>
    "func.return"(%0) : (!torch.vtensor<[?,?],i1>) -> ()
  }) : () -> ()
}) : () -> ()

