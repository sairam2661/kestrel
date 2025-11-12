"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchbool, !torchnone) -> !torchint, sym_name = "fuzz_op_sequence"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchbool, %arg2: !torchnone):
    %0 = "torch.constant.str"() <{value = "test_str"}> : () -> !torchstr
    %1 = "torch.constant.none"() : () -> !torchnone
    %2 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torchint
    %3 = "torch.aten.eq.Tensor"(%arg0, %2) : (!torchint, !torchint) -> !torchbool
    %4 = "torch.aten._shape_as_tensor"(%arg0) : (!torchint) -> !torchint
    %5 = "torch.prim.NumToTensor.Scalar"(%4) : (!torchint) -> !torchint
    %6 = "torch.aten.size.int"(%arg0) : (!torchint) -> !torchint
    %7 = "torch.aten.slice.Tensor"(%arg0, %2, %2, %6) : (!torchint, !torchint, !torchint, !torchint) -> !torchint
    %8 = "torch.aten.index_select"(%arg0, %2, %7) : (!torchint, !torchint, !torchint) -> !torchint
    %9 = "torch.aten.item"(%8) : (!torchint) -> !torchint
    "func.return"(%9) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()