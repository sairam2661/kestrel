"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "complex_torch_ops"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
    %2 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor_literal
    %5 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %6 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %4) : (!torch_vtensor_literal, !torch_int, !torch_int, !torch_vtensor_literal) -> !torch_vtensor_literal
    %7 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_literal, !torch_int) -> !torch_int
    %8 = "torch.aten.view"(%arg1, %4) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %9 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_bool
    %10 = "torch.aten.item"(%arg0) : (!torch_vtensor_literal) -> !torch_float
    %11 = "torch.aten.cat"(%5, %6, %0) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_int) -> !torch_vtensor_literal
    %12 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    "func.return"(%12) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()