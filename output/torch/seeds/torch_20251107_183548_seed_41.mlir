"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_like_list, !torch_vtensor_like_list) -> !torch_vtensor_like_list, sym_name = "fuzzing_example"}> ({
  ^bb0(%arg0: !torch_vtensor_like_list, %arg1: !torch_vtensor_like_list):
    %0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor_like_list, !torch_vtensor_like_list) -> !torch_vtensor_like_list
    %1 = "torch.prim.ListConstruct"(%arg0, %arg0) : (!torch_vtensor_like_list, !torch_vtensor_like_list) -> !torch_vtensor_like_list
    %2 = "torch.prim.ListConstruct"(%1, %0) : (!torch_vtensor_like_list, !torch_vtensor_like_list) -> !torch_vtensor_like_list
    %3 = "torch.prim.ListConstruct"(%2, %2) : (!torch_vtensor_like_list, !torch_vtensor_like_list) -> !torch_vtensor_like_list
    "func.return"(%3) : (!torch_vtensor_like_list) -> ()
  }) : () -> ()
}) : () -> ()