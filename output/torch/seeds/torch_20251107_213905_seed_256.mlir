"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
    %2 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_vtensor_literal) -> !torch_vtensor_literal
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %5 = "torch.prim.ListConstruct"(%arg0, %arg1, %2, %3, %4) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %6 = "torch.aten.index_select"(%4, %3, %2) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %7 = "torch.aten.cat"(%5, %6) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    "func.return"(%7) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()