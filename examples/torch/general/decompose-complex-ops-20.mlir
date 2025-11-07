"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?],f32>, !torch.vtensor<[10],f32>) -> !torch.vtensor<[6,?],complex<f32>>, sym_name = "torch.aten.stft.center_1D_unk_sig_len"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f32>, %arg1: !torch.vtensor<[10],f32>):
    %0 = "torch.constant.str"() <{value = "reflect"}> : () -> !torch.str
    %1 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch.int
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %5 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %6 = "torch.aten.stft.center"(%arg0, %1, %2, %3, %arg1, %4, %0, %4, %4, %5, %4) : (!torch.vtensor<[?],f32>, !torch.int, !torch.int, !torch.int, !torch.vtensor<[10],f32>, !torch.bool, !torch.str, !torch.bool, !torch.bool, !torch.bool, !torch.bool) -> !torch.vtensor<[6,?],complex<f32>>
    "func.return"(%6) : (!torch.vtensor<[6,?],complex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

