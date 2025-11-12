"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor273, !torch_vtensor256) -> !torch_vtensor273, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor273, %arg1: !torch_vtensor256):
    %c0_i32 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torch_vtensor256
    %c1_i32 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_vtensor256
    %c2_i32 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torch_vtensor256
    %c3_i32 = "torch.constant.int"() <{value = 3 : i32}> : () -> !torch_vtensor256
    %c4_i32 = "torch.constant.int"() <{value = 4 : i32}> : () -> !torch_vtensor256
    %list = "torch.prim.ListConstruct"(%c0_i32, %c1_i32, %c2_i32, %c3_i32, %c4_i32) : (!torch_vtensor256, !torch_vtensor256, !torch_vtensor256, !torch_vtensor256, !torch_vtensor256) -> !torch_vtensor462
    %sliced = "torch.aten.slice.Tensor"(%arg0, %c0_i32, %c0_i32, %c3_i32) : (!torch_vtensor273, !torch_vtensor256, !torch_vtensor256, !torch_vtensor256) -> !torch_vtensor273
    %viewed = "torch.aten.view"(%sliced, %list) : (!torch_vtensor273, !torch_vtensor462) -> !torch_vtensor273
    %item = "torch.aten.item"(%viewed) : (!torch_vtensor273) -> !torch_vtensor256
    "func.return"(%item) : (!torch_vtensor256) -> ()
  }) : () -> ()
}) : () -> ()