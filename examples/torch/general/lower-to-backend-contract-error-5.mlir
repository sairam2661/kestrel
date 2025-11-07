"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?],f32>) -> !torch.vtensor<[?,?,?],f32>, sym_name = "f"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?],f32>):
    %0 = "torch.aten.t"(%arg0) : (!torch.vtensor<[?,?,?],f32>) -> !torch.vtensor<[?,?,?],f32>
    "func.return"(%0) : (!torch.vtensor<[?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

