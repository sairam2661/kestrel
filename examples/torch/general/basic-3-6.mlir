"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],f32>) -> !torch.vtensor, sym_name = "torch.aten.mm$no_convert$result_missing_dtype"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.vtensor<[?,?],f32>):
    %0 = "torch.aten.mm"(%arg0, %arg1) : (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],f32>) -> !torch.vtensor
    "func.return"(%0) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

