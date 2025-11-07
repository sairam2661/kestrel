"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.sigmoid$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.aten.sigmoid"(%arg0) : (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>
    "func.return"(%0) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

