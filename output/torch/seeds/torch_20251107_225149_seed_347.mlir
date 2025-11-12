"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "complex_control_flow_and_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.int"() <{value = 123 : i32}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_float) -> !torch_list
      %4 = "torch.prim.Loop"(%1, %0, %3) ({
      ^bb0(%arg1: !torch_int, %arg2: !torch_list):
        %5 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
        %6 = "torch.aten.item"(%5) : (!torch_vtensor) -> !torch_int
        %7 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
        %8 = "torch.prim.If"(%7) ({
          "torch.prim.If.yield"(%6) : (!torch_int) -> ()
        }, {
          "torch.prim.If.yield"(%1) : (!torch_int) -> ()
        }) : (!torch_bool) -> !torch_int
        %9 = "torch.prim.ListConstruct"(%arg1, %8) : (!torch_int, !torch_int) -> !torch_list
        "torch.prim.Loop.condition"(%7, %9) : (!torch_bool, !torch_list) -> ()
      }) : (!torch_int, !torch_bool, !torch_list) -> !torch_list
      %10 = "torch.constant.none"() : () -> !torch_none
      %11 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %12 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_int
      %13 = "torch.prim.ListConstruct"(%12) : (!torch_int) -> !torch_list
      %14 = "torch.aten.cat"(%4, %13) : (!torch_list, !torch_list) -> !torch_list
      %15 = "torch.constant.float"() <{value = 5.0 : f32}> : () -> !torch_float
      %16 = "torch.prim.NumToTensor.Scalar"(%15) : (!torch_float) -> !torch_vtensor
      %17 = "torch.aten.add.Tensor"(%arg0, %16) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %18 = "torch.aten.slice.Tensor"(%17, %12, %1, %12) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%18) : (!torch_vtensor) -> ()
    }) : () -> ()
}) : () -> ()