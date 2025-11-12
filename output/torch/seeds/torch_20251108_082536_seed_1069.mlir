"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstant_int, !torchconstant_int, !torchconstant_int) -> !torchconstant_int, sym_name = "custom_add"}> ({
  ^bb0(%arg0: !torchconstant_int, %arg1: !torchconstant_int, %arg2: !torchconstant_int):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchconstant_int, !torchconstant_int) -> !torchconstant_int
    %1 = "torch.aten.add.Tensor"(%0, %arg2) : (!torchconstant_int, !torchconstant_int) -> !torchconstant_int
    "func.return"(%1) : (!torchconstant_int) -> ()
  }) : () -> ()
}) : () -> ()