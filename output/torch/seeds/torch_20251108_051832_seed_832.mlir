"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_index_select$tensor1, !torch_vtensor_index_select$tensor2) -> !torch_vtensor_index_select$tensor1, sym_name = "torch.aten.index_select$custom"}> ({
  ^bb0(%arg0: !torch_vtensor_index_select$tensor1, %arg1: !torch_vtensor_index_select$tensor2):
    %0 = "torch.vtensor.literal"() <{value = dense<[[1,2,3],[4,5,6]]> : tensor<2x3xf32>}> : () -> !torch_vtensor_index_select$tensor1
    %1 = "torch.vtensor.literal"() <{value = dense<[0,2]> : tensor<2xi32>}> : () -> !torch_vtensor_index_select$tensor2
    %2 = "torch.aten.index_select"(%0, %1) : (!torch_vtensor_index_select$tensor1, !torch_vtensor_index_select$tensor2) -> !torch_vtensor_index_select$tensor1
    "func.return"(%2) : (!torch_vtensor_index_select$tensor1) -> ()
  }) : () -> ()
}) : () -> ()