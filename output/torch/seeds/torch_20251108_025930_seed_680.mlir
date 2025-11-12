"builtin.module"() ({
  "func.func"() <{function_type = (!torch_memref_view_64x64xf32, !torch_memref_view_64x64xf32) -> !torch_memref_view_64x64xf32, sym_name = "elementwise_add"}> ({
    ^bb0(%arg0: !torch_memref_view_64x64xf32, %arg1: !torch_memref_view_64x64xf32):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_memref_view_64x64xf32, !torch_memref_view_64x64xf32) -> !torch_memref_view_64x64xf32
      "func.return"(%0) : (!torch_memref_view_64x64xf32) -> ()
  }) : () -> ()
}) : () -> ()