"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[?],f32>, sym_name = "elementwise$static_1"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f32>, %arg1: !torch.vtensor<[1],f32>):
    %0 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torch.vtensor<[?],f32>, !torch.vtensor<[1],f32>) -> !torch.vtensor<[?],f32>
    "func.return"(%0) : (!torch.vtensor<[?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

