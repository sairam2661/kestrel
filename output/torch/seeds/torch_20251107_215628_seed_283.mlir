"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_self, !torch_vtensor_self) -> !torch_vtensor_self, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor_self, %arg1: !torch_vtensor_self):
    %0 = "torch.constant.none"() : () -> !torch_none
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %2 = "torch.constant.float"() <{value = 3.14159 : f64}> : () -> !torch_float
    %3 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %4 = "torch.aten.item"(%arg0) : (!torch_vtensor_self) -> !torch_int
    %5 = "torch.aten.index_select"(%arg0, %3, %arg1) : (!torch_vtensor_self, !torch_int, !torch_vtensor_self) -> !torch_vtensor_self
    %6 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor_self, !torch_int) -> !torch_vtensor_self
    %7 = "torch.aten.add.Tensor"(%6, %5) : (!torch_vtensor_self, !torch_vtensor_self) -> !torch_vtensor_self
    "func.return"(%7) : (!torch_vtensor_self) -> ()
  }) : () -> ()
}) : () -> ()