"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4],si64>, !torch.vtensor<[3,4],si64>) -> !torch.vtensor<[3,4],si64>, sym_name = "torch.aten.bitwise_right_shift.Tensor"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4],si64>, %arg1: !torch.vtensor<[3,4],si64>):
    %0 = "torch.aten.bitwise_right_shift.Tensor"(%arg0, %arg1) : (!torch.vtensor<[3,4],si64>, !torch.vtensor<[3,4],si64>) -> !torch.vtensor<[3,4],si64>
    "func.return"(%0) : (!torch.vtensor<[3,4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

