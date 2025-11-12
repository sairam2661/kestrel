"builtin.module"() ({
  "func.func"() <{function_type = (!torch_CONSTANTbool, !torch_CONSTANTint, !torch_CONSTANTfloat, !torch_vtensorliteral, !torch_CONSTANTfloat) -> !torch_vtensorliteral, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: !torch_CONSTANTbool, %arg1: !torch_CONSTANTint, %arg2: !torch_CONSTANTfloat, %arg3: !torch_vtensorliteral, %arg4: !torch_CONSTANTfloat):
    %0 = "torch.aten.add.Tensor"(%arg2, %arg4) : (!torch_CONSTANTfloat, !torch_CONSTANTfloat) -> !torch_CONSTANTfloat
    %1 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_CONSTANTint) -> !torch_vtensorliteral
    %2 = "torch.aten.view"(%arg3, %1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %3 = "torch.aten.slice.Tensor"(%2, %arg1, %arg1, %arg1) : (!torch_vtensorliteral, !torch_CONSTANTint, !torch_CONSTANTint, !torch_CONSTANTint) -> !torch_vtensorliteral
    %4 = "torch.aten.index_select"(%arg3, %arg1, %3) : (!torch_vtensorliteral, !torch_CONSTANTint, !torch_vtensorliteral) -> !torch_vtensorliteral
    %5 = "torch.aten.item"(%4) : (!torch_vtensorliteral) -> !torch_CONSTANTfloat
    %6 = "torch.prim.NumToTensor.Scalar"(%5) : (!torch_CONSTANTfloat) -> !torch_vtensorliteral
    %7 = "torch.aten.add.Tensor"(%arg3, %6) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    "func.return"(%7) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()