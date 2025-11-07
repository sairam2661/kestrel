"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,38],f32>, !torch.vtensor<[?],f32>) -> !torch.vtensor<[3,4,32],complex<f32>>, sym_name = "torch.aten.stft.center_2D_win_unk_size"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,38],f32>, %arg1: !torch.vtensor<[?],f32>):
    %0 = "torch.constant.str"() <{value = "reflect"}> : () -> !torch.str
    %1 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %5 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %6 = "torch.aten.stft.center"(%arg0, %1, %2, %3, %arg1, %4, %0, %4, %4, %5, %4) : (!torch.vtensor<[3,38],f32>, !torch.int, !torch.int, !torch.int, !torch.vtensor<[?],f32>, !torch.bool, !torch.str, !torch.bool, !torch.bool, !torch.bool, !torch.bool) -> !torch.vtensor<[3,4,32],complex<f32>>
    "func.return"(%6) : (!torch.vtensor<[3,4,32],complex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

