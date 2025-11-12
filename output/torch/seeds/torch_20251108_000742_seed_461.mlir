"builtin.module"() ({
  "func.func"() <{function_type = (!torchv32, !torchv64) -> !torchv64, sym_name = "mixed_type_arithmetic"}> ({
  ^bb0(%arg0: !torchv32, %arg1: !torchv64):
    %c1_i32 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torchv32
    %c2_i32 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torchv32
    %c3_i64 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv64
    %c4_i64 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchv64
    %eq_bool = "torch.aten.eq.Tensor"(%arg0, %c1_i32) : (!torchv32, !torchv32) -> !torchvbool
    %add_i32 = "torch.aten.add.Tensor"(%arg0, %c2_i32) : (!torchv32, !torchv32) -> !torchv32
    %add_i64 = "torch.aten.add.Tensor"(%arg1, %c3_i64) : (!torchv64, !torchv64) -> !torchv64
    %conv_i32_to_i64 = "torch.vtensor.literal"() <{value = dense<0> : tensor<1xi64>}> : () -> !torchv64
    %cast_i32_to_i64 = "arith.extsi"(%add_i32) : (!torchv32) -> !torchv64
    %sum_i64 = "torch.aten.add.Tensor"(%cast_i32_to_i64, %add_i64) : (!torchv64, !torchv64) -> !torchv64
    "func.return"(%sum_i64) : (!torchv64) -> ()
  }) : () -> ()
}) : () -> ()