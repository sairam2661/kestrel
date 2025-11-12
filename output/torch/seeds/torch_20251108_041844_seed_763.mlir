"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_concat_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.cat"(%arg0, %arg1) : (tensor<3x4xf32>, tensor<3x4xf32>) -> tensor<6x4xf32>
    "func.return"(%0) : (tensor<6x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()