"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> !torch_vtensor, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
    %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %c3_i64 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %list = "torch.prim.ListConstruct"(%c2_i64, %c3_i64, %c2_i64, %c2_i64) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list
    %reflection_pad = "torch.aten.reflection_pad2d"(%arg0, %list) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %size = "torch.aten.size.int"(%reflection_pad) : (!torch_vtensor) -> !torch_int
    %eq = "torch.aten.eq.Tensor"(%size, %arg1) : (!torch_int, !torch_int) -> !torch_int
    %cat = "torch.aten.cat"(%reflection_pad, %arg0, %c3_i64) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%cat) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()