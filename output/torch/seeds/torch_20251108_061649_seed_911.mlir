"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzzy_tensor_op"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %3 = "torch.constant.str"() <{value = "hello" : !torch_str}> : () -> !torch_str
    %4 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %5 = "torch.aten.item"(%2) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()