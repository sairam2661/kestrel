"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],si32>, !torch.vtensor<[?,?],si32>) -> !torch.vtensor<[?,?],si32>, sym_name = "torch.aten.bitwise_left_shift.Tensor$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],si32>, %arg1: !torch.vtensor<[?,?],si32>):
    %0 = "torch.aten.bitwise_left_shift.Tensor"(%arg0, %arg1) : (!torch.vtensor<[?,?],si32>, !torch.vtensor<[?,?],si32>) -> !torch.vtensor<[?,?],si32>
    "func.return"(%0) : (!torch.vtensor<[?,?],si32>) -> ()
  }) : () -> ()
}) : () -> ()

