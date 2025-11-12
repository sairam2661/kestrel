"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    %4 = "torch.aten.view"(%3, %0, %1) : (!torch_vtensor_type, !torch_int, !torch_int) -> !torch_vtensor_type
    %5 = "torch.constant.str"() <{value = "example_str"}> : () -> !torch_str
    %6 = "torch.aten.slice.Tensor"(%4, %0, %0, %1) : (!torch_vtensor_type, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type
    %7 = "torch.aten.item"(%6) : (!torch_vtensor_type) -> !torch_int
    %8 = "torch.prim.ListConstruct"(%7, %0, %1) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %9 = "torch.aten.cat"(%8) : (!torch_list_int) -> !torch_vtensor_type
    "func.return"(%9) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()