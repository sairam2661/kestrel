"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,32],f32>) -> !torch.vtensor<[2,5,25],complex<f32>>, sym_name = "torch.aten.stft.center_2D_no_window"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,32],f32>):
    %0 = "torch.constant.str"() <{value = "reflect"}> : () -> !torch.str
    %1 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %4 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %5 = "torch.constant.none"() : () -> !torch.none
    %6 = "torch.aten.stft.center"(%arg0, %1, %2, %5, %5, %3, %0, %3, %3, %4, %3) : (!torch.vtensor<[2,32],f32>, !torch.int, !torch.int, !torch.none, !torch.none, !torch.bool, !torch.str, !torch.bool, !torch.bool, !torch.bool, !torch.bool) -> !torch.vtensor<[2,5,25],complex<f32>>
    "func.return"(%6) : (!torch.vtensor<[2,5,25],complex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

