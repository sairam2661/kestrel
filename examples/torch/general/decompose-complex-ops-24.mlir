"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,61],f32>, !torch.vtensor<[8],f32>) -> !torch.vtensor<[2,5,27],complex<f32>>, sym_name = "torch.aten.stft.center_2D_hop_length_2"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,61],f32>, %arg1: !torch.vtensor<[8],f32>):
    %0 = "torch.constant.str"() <{value = "reflect"}> : () -> !torch.str
    %1 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %5 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %6 = "torch.aten.stft.center"(%arg0, %1, %2, %3, %arg1, %4, %0, %4, %4, %5, %4) : (!torch.vtensor<[2,61],f32>, !torch.int, !torch.int, !torch.int, !torch.vtensor<[8],f32>, !torch.bool, !torch.str, !torch.bool, !torch.bool, !torch.bool, !torch.bool) -> !torch.vtensor<[2,5,27],complex<f32>>
    "func.return"(%6) : (!torch.vtensor<[2,5,27],complex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

