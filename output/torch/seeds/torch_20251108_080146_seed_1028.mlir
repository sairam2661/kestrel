"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor1x32xi8, !torchvtensor1x32xi8) -> !torchvtensor1x32xi8, sym_name = "xor_test"}> ({
  ^bb0(%arg0: !torchvtensor1x32xi8, %arg1: !torchvtensor1x32xi8):
    %0 = "torch.aten.xor"(%arg0, %arg1) : (!torchvtensor1x32xi8, !torchvtensor1x32xi8) -> !torchvtensor1x32xi8
    "func.return"(%0) : (!torchvtensor1x32xi8) -> ()
  }) : () -> ()
}) : () -> ()