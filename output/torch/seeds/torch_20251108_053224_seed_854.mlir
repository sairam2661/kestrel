"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantint, !torchconstantfloat) -> (!torchconstantbool, !torchconstantint, !torchconstantfloat), sym_name = "complex_fuzzing"}> ({
  ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantint, %arg2: !torchconstantfloat):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torchconstantbool
    %1 = "torch.constant.int"() <{value = 42}> : () -> !torchconstantint
    %2 = "torch.constant.float"() <{value = 3.14}> : () -> !torchconstantfloat
    %3 = "torch.constant.str"() <{value = "hello"}> : () -> !torchconstantstr
    %4 = "torch.constant.none"() : () -> !torchconstantnone
    %5 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4) : (!torchconstantbool, !torchconstantint, !torchconstantfloat, !torchconstantstr, !torchconstantnone) -> !torchlist
    %6 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4) : (!torchconstantbool, !torchconstantint, !torchconstantfloat, !torchconstantstr, !torchconstantnone) -> !torchlist
    %7 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4) : (!torchconstantbool, !torchconstantint, !torchconstantfloat, !torchconstantstr, !torchconstantnone) -> !torchlist
    %8 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4) : (!torchconstantbool, !torchconstantint, !torchconstantfloat, !torchconstantstr, !torchconstantnone) -> !torchlist
    %9 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4) : (!torchconstantbool, !torchconstantint, !torchconstantfloat, !torchconstantstr, !torchconstantnone) -> !torchlist
    "func.return"(%0, %1, %2) : (!torchconstantbool, !torchconstantint, !torchconstantfloat) -> ()
  }) : () -> ()
}) : () -> ()