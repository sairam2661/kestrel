"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !i32, !i32) -> !torch_tensor, sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: !torch_tensor, %arg1: !i32, %arg2: !i32):
    %size = "torch.aten.size.int"(%arg0, %arg1) : (!torch_tensor, !i32) -> !i64
    %size_tensor = "torch.prim.NumToTensor"(%size) : (!i64) -> !torch_tensor
    %concat = "torch.aten.cat"(%arg0, %size_tensor) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %eq = "torch.aten.eq.Tensor"(%concat, %arg2) : (!torch_tensor, !i32) -> !torch_tensor
    "func.return"(%eq) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()