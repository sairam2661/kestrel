"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3],f32>) -> !torch.vtensor<[3],f32>, sym_name = "elementwise_sinh"}> ({
  ^bb0(%arg0: !torch.vtensor<[3],f32>):
    %0 = "torch.aten.sinh"(%arg0) : (!torch.vtensor<[3],f32>) -> !torch.vtensor<[3],f32>
    "func.return"(%0) : (!torch.vtensor<[3],f32>) -> ()
  }) : () -> ()
}) : () -> ()

