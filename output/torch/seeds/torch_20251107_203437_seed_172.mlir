"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_tensor_type, !torch_vtensor_tensor_type) -> !torch_vtensor_tensor_type, sym_name = "torch_aten_cat_add_eq_tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_tensor_type, %arg1: !torch_vtensor_tensor_type):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_tensor_type) -> !torch_vtensor_tensor_type
    %1 = "torch.aten.size.int"(%0, %c0) : (!torch_vtensor_tensor_type, !torch_int) -> !torch_int
    %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor_tensor_type
    %3 = "torch.prim.ListConstruct"(%2) : (!torch_vtensor_tensor_type) -> !torch_list_tensor_type
    %4 = "torch.aten.cat"(%3) : (!torch_list_tensor_type) -> !torch_vtensor_tensor_type
    %5 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_tensor_type, !torch_vtensor_tensor_type) -> !torch_vtensor_tensor_type
    %6 = "torch.aten.eq.Tensor"(%4, %5) : (!torch_vtensor_tensor_type, !torch_vtensor_tensor_type) -> !torch_vtensor_tensor_type
    "func.return"(%6) : (!torch_vtensor_tensor_type) -> ()
  }) : () -> ()
}) : () -> ()