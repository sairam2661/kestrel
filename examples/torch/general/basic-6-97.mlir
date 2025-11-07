"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],i1>, sym_name = "torch.aten.le.Tensor$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.vtensor<[?,?],f32>):
    %0 = "torch.aten.le.Tensor"(%arg0, %arg1) : (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],i1>
    "func.return"(%0) : (!torch.vtensor<[?,?],i1>) -> ()
  }) : () -> ()
}) : () -> ()

