"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_mixer"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0, %c0_i64) : (!torch_vtensor, !torch_int) -> !torch_int
      %1 = "torch.aten.size.int"(%arg0, %c1_i64) : (!torch_vtensor, !torch_int) -> !torch_int
      %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor
      %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor
      %4 = "torch.aten.cat"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten._shape_as_tensor"(%4) : (!torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %7 = "torch.prim.If"(%6) ({
        %8 = "torch.aten.add.Tensor"(%arg0, %arg1, %c1_f32) : (!torch_vtensor, !torch_vtensor, !torch_float) -> !torch_vtensor
        "torch.prim.If.yield"(%8) : (!torch_vtensor) -> ()
      }, {
        %9 = "torch.aten.sub.Tensor"(%arg0, %arg1, %c1_f32) : (!torch_vtensor, !torch_vtensor, !torch_float) -> !torch_vtensor
        "torch.prim.If.yield"(%9) : (!torch_vtensor) -> ()
      }) : (!torch_bool) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()