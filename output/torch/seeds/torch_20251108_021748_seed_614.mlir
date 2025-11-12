"builtin.module"() ({
  "func.func"() <{function_type = (!torch$list$int, !torch$list$int, !torch$list$int, !torch$list$int, !torch$list$int, !torch$list$int, !torch$list$int, !torch$list$int) -> !torch$list$int, sym_name = "UNIQUE_FUZZ_NAME"}> ({
  ^bb0(%arg0: !torch$list$int, %arg1: !torch$list$int, %arg2: !torch$list$int, %arg3: !torch$list$int, %arg4: !torch$list$int, %arg5: !torch$list$int, %arg6: !torch$list$int, %arg7: !torch$list$int):
    %0 = "torch.aten.size.int"(%arg0) : (!torch$list$int) -> !torch$list$int
    %1 = "torch.aten.size.int"(%arg1) : (!torch$list$int) -> !torch$list$int
    %2 = "torch.aten.size.int"(%arg2) : (!torch$list$int) -> !torch$list$int
    %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch$list$int) -> !torch$vtensor
    %4 = "torch.aten._shape_as_tensor"(%2) : (!torch$list$int) -> !torch$vtensor
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%3, %4, %arg3, %arg4, %arg5, %arg6, %arg7) : (!torch$vtensor, !torch$vtensor, !torch$list$int, !torch$list$int, !torch$list$int, !torch$list$int, !torch$list$int) -> !torch$vtensor
    %6 = "torch.aten.add.Tensor"(%3, %4) : (!torch$vtensor, !torch$vtensor) -> !torch$vtensor
    %7 = "torch.aten.eq.Tensor"(%6, %5) : (!torch$vtensor, !torch$vtensor) -> !torch$vtensor
    %8 = "func.return"(%7) : (!torch$vtensor) -> ()
  }) : () -> ()
}) : () -> ()