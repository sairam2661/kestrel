"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_int, %arg3: !torch_int):
    %0 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
    %1 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %arg2) : (!torch_vtensor, !torch_float, !torch_int) -> !torch_qtensor
    %2 = "torch.aten.dequantize.tensor"(%1) : (!torch_qtensor) -> !torch_vtensor
    %3 = "torch.aten.add"(%2, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.size.int"(%arg0, %arg2) : (!torch_vtensor, !torch_int) -> !torch_int
    %5 = "torch.constant.none"() : () -> !torch_none
    %6 = "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()