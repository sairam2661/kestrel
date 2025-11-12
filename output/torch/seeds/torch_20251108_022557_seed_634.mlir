"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_tensor_manipulation"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %1 = "torch.aten.size.int"(%arg0, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %2 = "torch.aten.size.int"(%arg1, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %3 = "torch.aten.size.int"(%arg1, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %4 = "torch.aten.eq.Tensor"(%0, %2) : (!torch_int, !torch_int) -> !torch_bool
      %5 = "torch.aten.eq.Tensor"(%1, %3) : (!torch_int, !torch_int) -> !torch_bool
      %6 = "torch.aten.add.Tensor"(%4, %5) : (!torch_bool, !torch_bool) -> !torch_bool
      %7 = "torch.prim.NumToTensor.Scalar"(%6) : (!torch_bool) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
})

{
  "torch_int" = !torch_int
  into
  !torch_int
  , "value" = 0 : index
} : () -> ()