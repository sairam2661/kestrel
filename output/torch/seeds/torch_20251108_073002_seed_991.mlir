"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_outspecification, !torch_vtensor_outspecification, !torch_vtensor_outspecification, !torch_vtensor_outspecification) -> !torch_vtensor_outspecification, sym_name = "torch.aten.cat.unranked.test"}> ({
  ^bb0(%arg0: !torch_vtensor_outspecification, %arg1: !torch_vtensor_outspecification, %arg2: !torch_vtensor_outspecification, %arg3: !torch_vtensor_outspecification):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torch_int
    %2 = "torch.constant.none"() : () -> !torch_none
    %3 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
    %4 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2, %arg3) : (!torch_vtensor_outspecification, !torch_vtensor_outspecification, !torch_vtensor_outspecification, !torch_vtensor_outspecification) -> !torch_list_vtensor_outspecification
    %5 = "torch.aten.cat"(%4, %1) : (!torch_list_vtensor_outspecification, !torch_int) -> !torch_vtensor_outspecification
    "func.return"(%5) : (!torch_vtensor_outspecification) -> ()
  }) : () -> ()
}) : () -> ()