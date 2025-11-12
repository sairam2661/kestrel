"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "torch_fusion_example"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %1 = "torch.aten.mul.Tensor"(%0, %arg2) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %2 = "torch.aten.max"(%1) : (!torchvtensor) -> !torchvtensor
      %3 = "torch.aten.min"(%2) : (!torchvtensor) -> !torchvtensor
      "func.return"(%3) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "nested_regions_example"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor, %arg3: !torchvtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %1 = "scf.if"(%0) <{sym_name = "nested_region_if"}> ({
        ^bb1(%arg_if: !torchvtensor):
          %2 = "torch.aten.mul.Tensor"(%arg_if, %arg2) : (!torchvtensor, !torchvtensor) -> !torchvtensor
          "scf.yield"(%2) : (!torchvtensor)
      }) : (!torchvtensor) -> !torchvtensor
      %3 = "torch.aten.add.Tensor"(%1, %arg3) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%3) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "mixed_type_operations"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %1 = "torch.aten.cast"(%0) : (!torchvtensor) -> !torchvtensor
      %2 = "torch.aten.mul.Tensor"(%1, %arg2) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%2) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "type_boundary_test"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor, %arg3: !torchvtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %1 = "torch.aten.mul.Tensor"(%0, %arg2) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %2 = "torch.aten.cast"(%1) : (!torchvtensor) -> !torchvtensor
      %3 = "torch.aten.add.Tensor"(%2, %arg3) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%3) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "list_operations"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor):
      %0 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2) : (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %2 = "torch.aten.mul.Tensor"(%1, %arg2) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%2) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "complex_control_flow"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor):
      %0 = "scf.if"(%arg0) <{sym_name = "complex_if"}> ({
        ^bb1(%arg_if: !torchvtensor):
          %1 = "torch.aten.add.Tensor"(%arg_if, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
          "scf.yield"(%1) : (!torchvtensor)
      }) : (!torchvtensor) -> !torchvtensor
      %2 = "torch.aten.mul.Tensor"(%0, %arg2) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%2) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()