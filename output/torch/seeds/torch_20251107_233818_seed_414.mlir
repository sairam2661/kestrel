"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzzy_math_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %2 = "torch.constant.str"() <{value = "fuzz"}> : () -> !torch_str
      %3 = "torch.constant.none"() : () -> !torch_none

      %4 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %0, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%arg1, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor

      %6 = "torch.aten.size.int"(%5, %0) : (!torch_vtensor, !torch_int) -> !torch_int
      %7 = "torch.aten.add.Tensor"(%6, %0) : (!torch_int, !torch_int) -> !torch_int

      %8 = "torch.prim.ListConstruct"(%7, %7, %7, %7) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list
      %9 = "torch.aten.view"(%5, %8) : (!torch_vtensor, !torch_list) -> !torch_vtensor

      "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()