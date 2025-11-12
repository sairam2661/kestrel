"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantancelt, !torchconstantancelt, !torchconstantancelt, !torchconstantancelt) -> !torchconstantancelt, sym_name = "unusual_tensor_operations"}> ({
  ^bb0(%arg0: !torchconstantancelt, %arg1: !torchconstantancelt, %arg2: !torchconstantancelt, %arg3: !torchconstantancelt):
    %0 = "torchconstantancelt"(%arg0, %arg1) : (!torchconstantancelt, !torchconstantancelt) -> !torchconstantancelt
    %1 = "torchconstantancelt"(%arg2, %arg3) : (!torchconstantancelt, !torchconstantancelt) -> !torchconstantancelt
    %2 = "torchconstantancelt"(%0, %1) : (!torchconstantancelt, !torchconstantancelt) -> !torchconstantancelt
    %3 = "torchconstantancelt"(%2, %2) : (!torchconstantancelt, !torchconstantancelt) -> !torchconstantancelt
    %4 = "torchconstantancelt"(%3, %3) : (!torchconstantancelt, !torchconstantancelt) -> !torchconstantancelt
    "func.return"(%4) : (!torchconstantancelt) -> ()
  }) : () -> ()
}) : () -> ()