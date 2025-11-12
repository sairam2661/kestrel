"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_list_int) -> !torch_vtensor_literal, sym_name = "torch_view_large_dimension"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_list_int):
      %0 = "torch.aten.view"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_list_int) -> !torch_vtensor_literal
      "func.return"(%0) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch_cat_unusual_order"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.aten.cat"(%arg0, %arg1, 0) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_int) -> !torch_vtensor_literal
      "func.return"(%0) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_int) -> !torch_vtensor_literal, sym_name = "torch_slice_dynamic"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_int):
      %0 = "torch.aten.slice.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_int) -> !torch_vtensor_literal
      "func.return"(%0) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_int) -> !torch_vtensor_literal, sym_name = "torch_item_conversion"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_int):
      %0 = "torch.aten.item"(%arg0) : (!torch_vtensor_literal) -> !torch_float
      %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_float) -> !torch_vtensor_literal
      "func.return"(%1) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_bool, sym_name = "torch_eq_tensor"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_bool
      "func.return"(%0) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()