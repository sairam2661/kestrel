"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i16_3x3, !torch_vtensor_i16_3x3) -> !torch_vtensor_i16_3x3, sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensor_i16_3x3, %arg1: !torch_vtensor_i16_3x3):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_i16_3x3) -> !torch_int
      %3 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_i16_3x3) -> !torch_int
      %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_int, !torch_int) -> !torch_bool
      %5 = "torch.prim.If"(%4) ({
        ^bb1:
          %6 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor_i16_3x3, !torch_vtensor_i16_3x3, !torch_int) -> !torch_vtensor_i16_3x3
          "func.return"(%6) : (!torch_vtensor_i16_3x3) -> ()
      }, {
        ^bb2:
          %7 = "torch.aten.add.Tensor"(%arg0, %arg1, %1) : (!torch_vtensor_i16_3x3, !torch_vtensor_i16_3x3, !torch_int) -> !torch_vtensor_i16_3x3
          "func.return"(%7) : (!torch_vtensor_i16_3x3) -> ()
      })
  : () -> ()
}) : () -> ()
}) : () -> ()