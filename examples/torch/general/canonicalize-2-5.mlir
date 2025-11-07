"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4],f32>) -> !torch.vtensor<[3],f32>, sym_name = "torch.aten.slice.tensor$not_fold_slice"}> ({
  ^bb0(%arg4: !torch.vtensor<[4],f32>):
    %20 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %21 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %22 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %23 = "torch.aten.slice.Tensor"(%arg4, %22, %22, %21, %20) : (!torch.vtensor<[4],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[3],f32>
    "func.return"(%23) : (!torch.vtensor<[3],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[?],f32>, !torch.int) -> !torch.vtensor<[?],f32>, sym_name = "torch.aten.slice.tensor$fold_full_slice"}> ({
  ^bb0(%arg2: !torch.vtensor<[?],f32>, %arg3: !torch.int):
    %16 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %17 = "torch.constant.int"() <{value = 9223372036854775807 : i64}> : () -> !torch.int
    %18 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %19 = "torch.aten.slice.Tensor"(%arg2, %arg3, %18, %17, %16) : (!torch.vtensor<[?],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[?],f32>
    "func.return"(%19) : (!torch.vtensor<[?],f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch.vtensor<[3],si64>, sym_name = "torch.aten.slice.tensor$fold_oob_start"}> ({
    %10 = "torch.vtensor.literal"() <{value = dense<[0, 1, 2, 3]> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %11 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %12 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %13 = "torch.constant.int"() <{value = -10 : i64}> : () -> !torch.int
    %14 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %15 = "torch.aten.slice.Tensor"(%10, %14, %13, %12, %11) : (!torch.vtensor<[4],si64>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[3],si64>
    "func.return"(%15) : (!torch.vtensor<[3],si64>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si64>, sym_name = "torch.aten.slice.tensor$nofold_invalid_shape"}> ({
    %4 = "torch.vtensor.literal"() <{value = dense<[0, 1, 2, 3]> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %5 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = -10 : i64}> : () -> !torch.int
    %8 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %9 = "torch.aten.slice.Tensor"(%4, %8, %7, %6, %5) : (!torch.vtensor<[4],si64>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[4],si64>
    "func.return"(%9) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.vtensor<[?],f32>, !torch.int) -> !torch.vtensor<[?],f32>, sym_name = "torch.aten.slice.tensor$no_fold_step"}> ({
  ^bb0(%arg0: !torch.vtensor<[?],f32>, %arg1: !torch.int):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 9223372036854775807 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.aten.slice.Tensor"(%arg0, %arg1, %2, %1, %0) : (!torch.vtensor<[?],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[?],f32>
    "func.return"(%3) : (!torch.vtensor<[?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

