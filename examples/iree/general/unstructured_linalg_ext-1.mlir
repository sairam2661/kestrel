"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,8,16],f32>) -> !torch.vtensor<[3,8,9],complex<f32>>, sym_name = "fft_rfft.last"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,8,16],f32>):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.aten.fft_rfft"(%arg0, %1, %0, %1) : (!torch.vtensor<[3,8,16],f32>, !torch.none, !torch.int, !torch.none) -> !torch.vtensor<[3,8,9],complex<f32>>
    "func.return"(%2) : (!torch.vtensor<[3,8,9],complex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

