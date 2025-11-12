"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_example"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_list
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_list
      %2 = "torch.prim.NumToTensor.Scalar"(%c1_i32) : (i32) -> !torch_int
      %3 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_list, !torch_list) -> !torch_bool
      %4 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %5 = "torch.aten.cat"(%4) : (!torch_list) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()