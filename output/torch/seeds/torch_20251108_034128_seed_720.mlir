"builtin.module"() ({
  "func.func"() <{function_type = (!torchvfloat, !torchi32, !torchi32) -> !torchvfloat, sym_name = "torch.aten.broadcast_to_and_slice"}> ({
  ^bb0(%arg0: !torchvfloat, %arg1: !torchi32, %arg2: !torchi32):
    %c0_i32 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torchi32
    %c1_i32 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torchi32
    %c2_i32 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torchi32
    %0 = "torch.prim.ListConstruct"(%arg1, %arg2) : (!torchi32, !torchi32) -> !torchlisti32
    %1 = "torch.aten.broadcast_to"(%arg0, %0) : (!torchvfloat, !torchlisti32) -> !torchvfloat
    %2 = "torch.aten.slice.Tensor"(%1, %c0_i32, %c1_i32, %c2_i32) : (!torchvfloat, !torchi32, !torchi32, !torchi32) -> !torchvfloat
    "func.return"(%2) : (!torchvfloat) -> ()
  }) : () -> ()
}) : () -> ()