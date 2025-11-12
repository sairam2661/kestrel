"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_aten_slice_tensor, !torch_aten_index_select, !torch_aten_item) -> !torch_constant_int, sym_name = "fuzz_uncommon_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_aten_slice_tensor, %arg2: !torch_aten_index_select, %arg3: !torch_aten_item):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %2 = "torch.constant.none"() : () -> !torch_none
    %3 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
    %4 = "torch.vtensor.literal"() <{value = dense<1  > : tensor<3xi32>}> : () -> !torch_vtensor
    %5 = "torch.aten.slice.Tensor"(%4, %1, %1, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.aten.index_select"(%4, %1, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %7 = "torch.aten.item"(%6) : (!torch_vtensor) -> !torch_int
    "func.return"(%7) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()