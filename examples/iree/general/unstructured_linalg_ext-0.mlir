"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,8,16],f32>) -> !torch.vtensor<[3,5,16],complex<f32>>, sym_name = "fft_rfft.with_transpose"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,8,16],f32>):
    %0 = "torch.constant.int"() <{value = -2 : i64}> : () -> !torch.int
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.aten.fft_rfft"(%arg0, %1, %0, %1) : (!torch.vtensor<[3,8,16],f32>, !torch.none, !torch.int, !torch.none) -> !torch.vtensor<[3,5,16],complex<f32>>
    "func.return"(%2) : (!torch.vtensor<[3,5,16],complex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

