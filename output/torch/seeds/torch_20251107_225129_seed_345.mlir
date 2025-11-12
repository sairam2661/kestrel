"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_float, !torch_constant_none) -> !torch_vtensor_literal, sym_name = "torch_aten_add_tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_float, %arg2: !torch_constant_none):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1, %arg2) : (!torch_vtensor_literal, !torch_constant_float, !torch_constant_none) -> !torch_vtensor_literal
    "func.return"(%0) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_constant_bool, !torch_constant_int, !torch_list_construct) -> !torch_constant_int, sym_name = "torch_prim_if"}> ({
  ^bb0(%arg3: !torch_constant_bool, %arg4: !torch_constant_int, %arg5: !torch_list_construct):
    %6 = "torch.prim.If"(%arg3) ({
      "torch.prim.If.yield"(%arg4) : (!torch_constant_int) -> ()
    }, {
      "torch.prim.If.yield"(%arg5) : (!torch_list_construct) -> ()
    }) : (!torch_constant_bool) -> (!torch_constant_int, !torch_list_construct)
    %7 = "func.return"(%6#0) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()