"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,4],f32>, !torch.vtensor<[?,4,?],f32>) -> !torch.vtensor<[?,?,?],f32>, sym_name = "torch.aten.bmm$basic$dynamic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,4],f32>, %arg1: !torch.vtensor<[?,4,?],f32>):
    %0 = "torch.aten.bmm"(%arg0, %arg1) : (!torch.vtensor<[?,?,4],f32>, !torch.vtensor<[?,4,?],f32>) -> !torch.vtensor<[?,?,?],f32>
    "func.return"(%0) : (!torch.vtensor<[?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

