"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal_0, !torch_vtensor_literal_1) -> !torch_vtensor_literal_2, sym_name = "nested_loops_with_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_literal_0, %arg1: !torch_vtensor_literal_1):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor_literal_3
      %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor_literal_4
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor_literal_4
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor_literal_4
      %4 = "torch.constant.none"() : () -> !torch_vtensor_literal_5
      %5 = "torch.prim.ListConstruct"(%1, %2) : (!torch_vtensor_literal_4, !torch_vtensor_literal_4) -> !torch_vtensor_literal_6
      %6 = "torch.aten.add.Tensor"(%arg0, %arg1, %2) : (!torch_vtensor_literal_0, !torch_vtensor_literal_1, !torch_vtensor_literal_4) -> !torch_vtensor_literal_2
      %7 = "torch.prim.Loop"(%3, %0, %arg0) ({
        ^bb1(%arg2: !torch_vtensor_literal_4, %arg3: !torch_vtensor_literal_0):
          %8 = "torch.aten.mul.Tensor"(%arg3, %arg1, %2) : (!torch_vtensor_literal_0, !torch_vtensor_literal_1, !torch_vtensor_literal_4) -> !torch_vtensor_literal_2
          "torch.prim.Loop.condition"(%0, %8) : (!torch_vtensor_literal_3, !torch_vtensor_literal_2) -> ()
        }) : (!torch_vtensor_literal_4, !torch_vtensor_literal_3, !torch_vtensor_literal_0) -> !torch_vtensor_literal_0
      "func.return"(%6) : (!torch_vtensor_literal_2) -> ()
    }) : () -> ()
}) : () -> ()