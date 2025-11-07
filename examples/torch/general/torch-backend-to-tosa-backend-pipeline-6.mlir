"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],si16>, !torch.vtensor<[?,?],si32>) -> !torch.vtensor<[?,?],si32>, sym_name = "torch.aten.bitwise_and.Tensor$mixed_type"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],si16>, %arg1: !torch.vtensor<[?,?],si32>):
    %0 = "torch.aten.bitwise_and.Tensor"(%arg0, %arg1) : (!torch.vtensor<[?,?],si16>, !torch.vtensor<[?,?],si32>) -> !torch.vtensor<[?,?],si32>
    "func.return"(%0) : (!torch.vtensor<[?,?],si32>) -> ()
  }) : () -> ()
}) : () -> ()

