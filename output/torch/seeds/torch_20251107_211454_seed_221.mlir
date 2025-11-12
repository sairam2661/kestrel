"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantfloat, !torchconstantint, !torchvtensor, !torchconstantbool, !torchlistint, !torchconstantnone) -> !torchvtensor, sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: !torchconstantfloat, %arg1: !torchconstantint, %arg2: !torchvtensor, %arg3: !torchconstantbool, %arg4: !torchlistint, %arg5: !torchconstantnone):
    %0 = "torchconstantint"() <{value = 10 : i64}> : () -> !torchconstantint
    %1 = "torchconstantint"() <{value = 5 : i64}> : () -> !torchconstantint
    %2 = "torchconstantint"() <{value = 2 : i64}> : () -> !torchconstantint
    %3 = "torchconstantint"() <{value = -1 : i64}> : () -> !torchconstantint
    %4 = "torch.constant.float"() <{value = 3.5 : f32}> : () -> !torchconstantfloat
    %5 = "torch.prim.ListConstruct"(%0, %1, %2, %3) : (!torchconstantint, !torchconstantint, !torchconstantint, !torchconstantint) -> !torchlistint
    %6 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchconstantint
    %7 = "torch.constant.none"() : () -> !torchconstantnone
    %8 = "torch.constant.str"() <{value = "test"}> : () -> !torchconstantstr
    %9 = "torch.aten.index_select"(%arg2, %6, %arg4) : (!torchvtensor, !torchconstantint, !torchlistint) -> !torchvtensor
    %10 = "torch.aten.add.Tensor"(%arg2, %arg2, %0) : (!torchvtensor, !torchvtensor, !torchconstantint) -> !torchvtensor
    %11 = "torch.aten.size.int"(%arg2, %6) : (!torchvtensor, !torchconstantint) -> !torchconstantint
    %12 = "torch.aten._shape_as_tensor"(%arg2) : (!torchvtensor) -> !torchvtensor
    %13 = "func.return"(%12) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()