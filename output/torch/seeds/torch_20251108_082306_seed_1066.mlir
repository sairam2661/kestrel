"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "unusual_combination"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
      %0 = "torch.prim.NumToTensor.Scalar"() : () -> !torch_vtensor_type
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %2 = "torch.aten._shape_as_tensor"(%1) : (!torch_vtensor_type) -> !torch_vtensor_type
      %3 = "torch.aten.size.int"(%1, %0) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %4 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %5 = "torch.aten.cat"(%2, %3) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      "func.return"(%5) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()