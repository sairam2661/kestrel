"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4],si32>, !torch.vtensor<[3,1],si32>) -> !torch.vtensor<[3,4],si32>, sym_name = "torch.aten.bitwise_left_shift.Tensor"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4],si32>, %arg1: !torch.vtensor<[3,1],si32>):
    %0 = "torch.aten.bitwise_left_shift.Tensor"(%arg0, %arg1) : (!torch.vtensor<[3,4],si32>, !torch.vtensor<[3,1],si32>) -> !torch.vtensor<[3,4],si32>
    "func.return"(%0) : (!torch.vtensor<[3,4],si32>) -> ()
  }) : () -> ()
}) : () -> ()

