"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_op"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0, "value"   ){
        "value" = "0" : i64
      } : (!torch_vtensor, i64) -> i64
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.prim.ListConstruct"(%0, %1) : (i64, !torch_int) -> !torch_list
      %3 = "torch.aten.full"(%2, "torch.constant.int"  ){
        "value" = "0" : i64
      } : (!torch_list, i64) -> !torch_vtensor
      %4 = "torch.aten.eq.Tensor"(%arg0, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %5 = "torch.prim.If"(%4) <{inputs = []}> ({
        ^bb1:
          %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      }) : (i1) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "quantized_tensor_op"}> ({
    ^bb0(%arg0: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0, "value"  ){
        "value" = "0" : i64
      } : (!torch_vtensor, i64) -> i64
      %1 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %5 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %6 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1, %2, %3, %4, %5, %6) : (!torch_vtensor, i64, i64, i64, i64, i64, i64, i64) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "nested_control_flow"}> ({
    ^bb0(%arg0: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0, "value"  ){
        "value" = "0" : i64
      } : (!torch_vtensor, i64) -> i64
      %1 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (i64, !torch_int, !torch_int) -> !torch_list
      %4 = "torch.aten.cat"(%3, "torch.constant.int"  ){
        "value" = "0" : i64
      } : (!torch_list, i64) -> !torch_vtensor
      %5 = "torch.prim.If"(%4) <{inputs = []}> ({
        ^bb1:
          %6 = "torch.aten.add.Tensor"(%arg0, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
          %7 = "torch.prim.If"(%6) <{inputs = []}> ({
            ^bb2:
              %8 = "torch.aten.add.Tensor"(%arg0, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
          }) : (i1) -> !torch_vtensor
          "func.return"(%7) : (!torch_vtensor) -> ()
      }) : (i1) -> !torch_vtensor
  }) : () -> ()
}) : () -> ()