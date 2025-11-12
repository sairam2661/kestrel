"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor0d) -> !torch_vtensor0d, sym_name = "torch.aten.add.Tensor$unique"}> ({
  ^bb0(%arg0: !torch_vtensor0d):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor0d) -> !torch_vtensor0d
    %1 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %0, %0, %0) : (!torch_vtensor0d, !torch_vtensor0d, !torch_vtensor0d, !torch_vtensor0d, !torch_vtensor0d) -> !torch_vtensor0d
    %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_vtensor0d) -> !torch_vtensor0d
    %3 = "torch.aten.eq.Tensor"(%arg0, %1) : (!torch_vtensor0d, !torch_vtensor0d) -> !torch_vtensor0d
    %4 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor0d) -> !torch_vtensor0d
    %5 = "torch.aten.add.Tensor"(%arg0, %1) : (!torch_vtensor0d, !torch_vtensor0d) -> !torch_vtensor0d
    %6 = "torch.aten.cat"(%4, %4) : (!torch_vtensor0d, !torch_vtensor0d) -> !torch_vtensor0d
    "func.return"(%6) : (!torch_vtensor0d) -> ()
  }) : () -> ()
}) : () -> ()