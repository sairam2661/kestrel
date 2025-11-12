"builtin.module"() ({
  "func.func"() <{function_type = (!torch_memref_tensor2d, !torch_memref_tensor2d, !torch_memref_tensor2d) -> !torch_memref_tensor2d, sym_name = "torch.custom_multi_matmul"}> ({
    ^bb0(%arg0: !torch_memref_tensor2d, %arg1: !torch_memref_tensor2d, %arg2: !torch_memref_tensor2d):
      %0 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_memref_tensor2d, !torch_memref_tensor2d) -> !torch_memref_tensor2d
      %1 = "torch.aten.addmm"(%arg2, %0, %arg1, %alpha, %beta) <{alpha = 1.0 : f64, beta = 0.5 : f64}> : (!torch_memref_tensor2d, !torch_memref_tensor2d, !torch_memref_tensor2d, f64, f64) -> !torch_memref_tensor2d
      "func.return"(%1) : (!torch_memref_tensor2d) -> ()
  }) : () -> ()
}) : () -> ()