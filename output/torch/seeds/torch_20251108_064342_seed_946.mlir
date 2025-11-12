"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor1x1xf32, !torch_vtensor1x3xf32) -> !torch_vtensor1x3xf32, sym_name = "torch.aten.cat$basic"}> ({
  ^bb0(%arg0: !torch_vtensor1x1xf32, %arg1: !torch_vtensor1x3xf32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor1x1xf32, !torch_vtensor1x3xf32) -> !torch_list_vtensor
    %2 = "torch.aten.cat"(%1, %0) : (!torch_list_vtensor, !torch_int) -> !torch_vtensor1x3xf32
    "func.return"(%2) : (!torch_vtensor1x3xf32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor1x3xf32, !torch_vtensor1x3xf32) -> !torch_vtensor1x6xf32, sym_name = "torch.aten.cat$advanced"}> ({
  ^bb0(%arg0: !torch_vtensor1x3xf32, %arg1: !torch_vtensor1x3xf32):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor1x3xf32, !torch_vtensor1x3xf32) -> !torch_list_vtensor
    %2 = "torch.aten.cat"(%1, %0) : (!torch_list_vtensor, !torch_int) -> !torch_vtensor1x6xf32
    "func.return"(%2) : (!torch_vtensor1x6xf32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor1x3xf32, !torch_vtensor1x3xf32) -> !torch_vtensor1x6xf32, sym_name = "torch.aten.cat$complex"}> ({
  ^bb0(%arg0: !torch_vtensor1x3xf32, %arg1: !torch_vtensor1x3xf32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor1x3xf32, !torch_vtensor1x3xf32) -> !torch_list_vtensor
    %2 = "torch.aten.cat"(%1, %0) : (!torch_list_vtensor, !torch_int) -> !torch_vtensor1x6xf32
    "func.return"(%2) : (!torch_vtensor1x6xf32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch_vtensor3x3xf32, sym_name = "torch.vtensor.literal$basic"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]]> : tensor<3x3xf32>}> : () -> !torch_vtensor3x3xf32
    "func.return"(%0) : (!torch_vtensor3x3xf32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor3x3xf32, !torch_vtensor3x3xf32) -> !torch_vtensor3x3xf32, sym_name = "torch.aten.add$basic"}> ({
  ^bb0(%arg0: !torch_vtensor3x3xf32, %arg1: !torch_vtensor3x3xf32):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor3x3xf32, !torch_vtensor3x3xf32) -> !torch_vtensor3x3xf32
    "func.return"(%0) : (!torch_vtensor3x3xf32) -> ()
  }) : () -> ()
}) : () -> ()