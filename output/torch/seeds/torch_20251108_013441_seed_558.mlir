"builtin.module"() ({
  "func.func"() <{function_type = (!torch_device, !torch_dtype, !torch_layout, !torch_mem_format, !torch_vtensor, !torch_symint, !torch_symint) -> !torch_vtensor, sym_name = "torch.aten.empty.memory_format"}> ({
  ^bb0(%arg0: !torch_device, %arg1: !torch_dtype, %arg2: !torch_layout, %arg3: !torch_mem_format, %arg4: !torch_vtensor, %arg5: !torch_symint, %arg6: !torch_symint):
    %0 = "torch.constant.none"() : () -> !torch_none
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %3 = "torch.prim.ListConstruct"(%arg5, %arg6) : (!torch_symint, !torch_symint) -> !torch_list
    %4 = "torch.aten.empty.memory_format"(%3, %arg5, %arg6, %arg0, %arg2, %arg3, %arg1, %2, %0) : (!torch_list, !torch_symint, !torch_symint, !torch_device, !torch_layout, !torch_mem_format, !torch_dtype, !torch_bool, !torch_none) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()