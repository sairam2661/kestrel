"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal, !torch_int, !torch_int) -> !torch_vtensor_literal, sym_name = "advanced_indexing_sample"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal, %arg2: !torch_vtensor_literal, %arg3: !torch_int, %arg4: !torch_int):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
      %3 = "torch.c.node.literal"() <{value = "<torch::Node>", type = "!torch_c.node"}> : () -> !torch_c_node
      %4 = "torch.prim.ListConstruct"(%arg3, %arg4) : (!torch_int, !torch_int) -> !torch_list_int
      %5 = "torch.aten.index_select"(%arg0, %1, %arg3) : (!torch_vtensor_literal, !torch_int, !torch_int) -> !torch_vtensor_literal
      %6 = "torch.aten.view"(%arg1, %4) : (!torch_vtensor_literal, !torch_list_int) -> !torch_vtensor_literal
      %7 = "torch.aten.add.Tensor"(%arg2, %5) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %8 = "torch.aten._make_per_tensor_quantized_tensor"(%7, %2, %1, %0) : (!torch_vtensor_literal, !torch_float, !torch_int, !torch_bool) -> !torch_vtensor_literal
      "func.return"(%8) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()