"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "torch_complex_function$stress"}> ({
  ^bb0(%arg0: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.constant.str"() <{value = "stress_test" : !torch_string}> : () -> !torch_string
    %4 = "torch.prim.ListConstruct"(%1, %0, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %5 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%5, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten._shape_as_tensor"(%6) : (!torch_vtensor) -> !torch_vtensor
    %8 = "torch.aten._make_per_tensor_quantized_tensor"(%7, %5, %0, %1, %2) : (!torch_vtensor, !torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()