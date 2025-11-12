"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "torch_cat_size_mismatch"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_type) -> !torch_vtensor_type
    %1 = "torch.aten.size.int"(%0, %c0) : (!torch_vtensor_type, !torch_int) -> !torch_int
    %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor_type
    %3 = "torch.aten.cat"(%arg0, %arg1, %c0) : (!torch_vtensor_type, !torch_vtensor_type, !torch_int) -> !torch_vtensor_type
    "func.return"(%3) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()