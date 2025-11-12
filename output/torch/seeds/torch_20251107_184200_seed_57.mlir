"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "complex_fuzz_test"}> ({
  ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_bool, !torch_int) -> !torch_list
    %3 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
    %4 = "torch.constant.none"() : () -> !torch_none
    %5 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %6 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_bool
    "func.return"(%5) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()