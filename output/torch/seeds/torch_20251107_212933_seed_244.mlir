"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstant) -> !torchconstant, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torchconstant):
    %0 = "torch.constant.int"() <{value = 128 : i64}> : () -> !torchconstant
    %1 = "torch.constant.float"() <{value = 1.280000e+02 : f64}> : () -> !torchconstant
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torchconstant
    %3 = "torch.constant.none"() : () -> !torchconstant
    %4 = "torch.aten.size.int"(%arg0) : (!torchconstant) -> !torchconstant
    %5 = "torch.aten._shape_as_tensor"(%arg0) : (!torchconstant) -> !torchconstant
    %6 = "torch.aten.view"(%arg0, %5) : (!torchconstant, !torchconstant) -> !torchconstant
    %7 = "torch.aten.eq.Tensor"(%arg0, %6) : (!torchconstant, !torchconstant) -> !torchconstant
    "func.return"(%7) : (!torchconstant) -> ()
  }) : () -> ()
}) : () -> ()