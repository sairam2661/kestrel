"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],f32>, !torch.vtensor<[?],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.mm$no_convert$wrong_rank"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f32>, %arg1: !torch.vtensor<[?],f32>):
    %0 = "torch.aten.mm"(%arg0, %arg1) : (!torch.vtensor<[?],f32>, !torch.vtensor<[?],f32>) -> !torch.vtensor<[?,?],f32>
    "func.return"(%0) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

