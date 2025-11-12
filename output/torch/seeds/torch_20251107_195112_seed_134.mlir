"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantfloat, !torchconstantint) -> (!torchconstantstring, !torchconstantbool, !torchconstantint), sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantfloat, %arg2: !torchconstantint):
    %cst = "torch.constant.str"() <{value = "test" : !torchconstantstring}> : () -> !torchconstantstring
    %cst2 = "torch.constant.bool"() <{value = false}> : () -> !torchconstantbool
    %cst3 = "torch.constant.int"() <{value = 100}> : () -> !torchconstantint
    %0 = "torch.aten.add.Tensor"(%arg1, %arg2) : (!torchconstantfloat, !torchconstantint) -> !torchconstantfloat
    %1 = "torch.prim.ListConstruct"(%cst, %cst2, %arg0, %arg1, %arg2) : (!torchconstantstring, !torchconstantbool, !torchconstantbool, !torchconstantfloat, !torchconstantint) -> !torchlist
    %2 = "torch.aten._shape_as_tensor"(%1) : (!torchlist) -> !torchtensor
    "func.return"(%cst, %cst2, %cst3) : (!torchconstantstring, !torchconstantbool, !torchconstantint) -> ()
  }) : () -> ()
}) : () -> ()