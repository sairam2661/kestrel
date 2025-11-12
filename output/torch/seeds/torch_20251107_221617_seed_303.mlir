"builtin.module"() ({
  "func.func"() <{function_type = (!torchtensor, !torchtensor, !torchtensor) -> !torchtensor, sym_name = "torch_aten_addmm"}> ({
  ^bb0(%arg0: !torchtensor, %arg1: !torchtensor, %arg2: !torchtensor):
    %0 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torchfloat
    %1 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torchfloat
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torchfloat, !torchfloat) -> !torchlist
    %3 = "torch.aten._addmm"(%arg2, %arg0, %arg1, %2, %2) : (!torchtensor, !torchtensor, !torchtensor, !torchlist, !torchlist) -> !torchtensor
    "func.return"(%3) : (!torchtensor) -> ()
  }) : () -> ()
}) : () -> ()