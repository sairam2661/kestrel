"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor_LITERAL1, !torchvtensor_LITERAL2) -> !torchvtensor_LITERAL3, sym_name = "torch.fuzz_test"}> ({
  ^bb0(%arg0: !torchvtensor_LITERAL1, %arg1: !torchvtensor_LITERAL2):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %1 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torchvtensor_LITERAL1, !torchint, !torchvtensor_LITERAL2) -> !torchvtensor_LITERAL4
    %2 = "torch.aten._shape_as_tensor"(%1) : (!torchvtensor_LITERAL4) -> !torchvtensor_LITERAL5
    %3 = "torch.constant.none"() : () -> !torchnone
    %4 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %5 = "torch.aten.add.Tensor"(%2, %2, %4, %3) : (!torchvtensor_LITERAL5, !torchvtensor_LITERAL5, !torchbool, !torchnone) -> !torchvtensor_LITERAL5
    "func.return"(%5) : (!torchvtensor_LITERAL5) -> ()
  }) : () -> ()
}) : () -> ()

  "torchvtensor_LITERAL1"() 	({}) : () -> !torchvtensor_LITERAL1
  "torchvtensor_LITERAL2"() 	({}) : () -> !torchvtensor_LITERAL2
  "torchvtensor_LITERAL3"() 	({}) : () -> !torchvtensor_LITERAL3
  "torchvtensor_LITERAL4"() 	({}) : () -> !torchvtensor_LITERAL4
  "torchvtensor_LITERAL5"() 	({}) : () -> !torchvtensor_LITERAL5