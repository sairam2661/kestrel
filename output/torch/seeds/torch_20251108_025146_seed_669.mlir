"builtin.module"() ({
  "func.func"() <{function_type = (!torchConstant_float, !torchConstant_float, !torchConstant_float) -> !torchConstant_float, sym_name = "complex_fuzzing"}> ({
  ^bb0(%arg0: !torchConstant_float, %arg1: !torchConstant_float, %arg2: !torchConstant_float):
    %0 = "torch.aten.slice.Tensor"(%arg0, 0, 0, 1) : (!torchConstant_float, i64, i64, i64) -> !torchConstant_float
    %1 = "torch.aten.slice.Tensor"(%arg1, 0, 0, 1) : (!torchConstant_float, i64, i64, i64) -> !torchConstant_float
    %2 = "torch.aten.slice.Tensor"(%arg2, 0, 0, 1) : (!torchConstant_float, i64, i64, i64) -> !torchConstant_float
    %3 = "torch.aten.eq.Tensor"(%0, %1) : (!torchConstant_float, !torchConstant_float) -> !torchConstant_i1
    %4 = "torch.aten.eq.Tensor"(%1, %2) : (!torchConstant_float, !torchConstant_float) -> !torchConstant_i1
    %5 = "torch.prim.ListConstruct"(%3, %4) : (!torchConstant_i1, !torchConstant_i1) -> !torchListType
    %6 = "func.return"(%5) : (!torchListType) -> ()
  }) : () -> ()
}) : () -> ()