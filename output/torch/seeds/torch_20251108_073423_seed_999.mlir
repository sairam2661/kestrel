"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "complex_fuzz_func"}> ({
    ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
      %c0 = "torch.constant.int"() <{value = 0}> : () -> !torch_tensor
      %c1 = "torch.constant.int"() <{value = 1}> : () -> !torch_tensor
      %c2 = "torch.constant.int"() <{value = 2}> : () -> !torch_tensor
      %shape0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_tensor) -> !torch_tensor
      %shape1 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_tensor) -> !torch_tensor
      %eq_shape = "torch.aten.eq.Tensor"(%shape0, %shape1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %cond = "torch.aten.any"(%eq_shape) : (!torch_tensor) -> !torch_tensor
      %branch0:2 = "scf.if"(%cond) ({
        %add = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
        "scf.yield"(%add) : (!torch_tensor)
      }) {
        "scf.yield" = "torch.constant.none" : () -> !torch_tensor
      }
      : (i1) -> (!torch_tensor)
      "func.return"(%branch0#0) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()