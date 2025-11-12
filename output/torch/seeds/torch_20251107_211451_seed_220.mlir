"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor, %arg3: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 1.5 : f32}> : () -> !torch_float
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %4 = "torch.prim.ListConstruct"(%0, %1, %0, %1, %0) : (!torch_int, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list
      %5 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %6 = "torch.aten.add.Tensor"(%arg1, %arg2, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      %7 = "torch.aten.cat"(%6, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %8 = "torch.aten.index_select"(%arg3, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %9 = "torch.aten.size.int"(%8, %0) : (!torch_vtensor, !torch_int) -> !torch_int
      %10 = "torch.aten._shape_as_tensor"(%9) : (!torch_int) -> !torch_vtensor
      %11 = "torch.aten.add.Tensor"(%10, %2, %0) : (!torch_vtensor, !torch_float, !torch_int) -> !torch_vtensor
      "func.return"(%11) : (!torch_vtensor) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()