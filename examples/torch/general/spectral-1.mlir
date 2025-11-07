"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[36,23],f32>) -> !torch.vtensor<[19,23],complex<f32>>, sym_name = "torch.aten.fft_rfft$2d_first_dim"}> ({
  ^bb0(%arg0: !torch.vtensor<[36,23],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.aten.fft_rfft"(%arg0, %1, %0, %1) : (!torch.vtensor<[36,23],f32>, !torch.none, !torch.int, !torch.none) -> !torch.vtensor<[19,23],complex<f32>>
    "func.return"(%2) : (!torch.vtensor<[19,23],complex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

