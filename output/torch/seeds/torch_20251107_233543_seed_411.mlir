"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1, !torch_vtensor_2) -> !torch_vtensor_3, sym_name = "complex_fuzz_case"}> ({
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor_1
    %c2 = "torch.constant.float"() <{value = 2.5 : f64}> : () -> !torch_vtensor_2
    %c3 = "torch.prim.NumToTensor.Scalar"(%c1) : (!torch_vtensor_1) -> !torch_vtensor_3
    %c4 = "torch.prim.NumToTensor.Scalar"(%c2) : (!torch_vtensor_2) -> !torch_vtensor_3
    %c5 = "torch.aten.add.Tensor"(%c3, %c4) : (!torch_vtensor_3, !torch_vtensor_3) -> !torch_vtensor_3
    %c6 = "torch.aten._shape_as_tensor"(%c5) : (!torch_vtensor_3) -> !torch_vtensor_1
    %c7 = "torch.aten.size.int"(%c5, %c1) : (!torch_vtensor_3, !torch_vtensor_1) -> !torch_vtensor_1
    %c8 = "torch.prim.ListConstruct"(%c6, %c7) : (!torch_vtensor_1, !torch_vtensor_1) -> !torch_vtensor_4
    "func.return"(%c8) : (!torch_vtensor_4) -> ()
  }) : () -> ()
}) : () -> ()