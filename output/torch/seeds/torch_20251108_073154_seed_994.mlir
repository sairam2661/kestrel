"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_unary_operations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 3.5 : f64}> : () -> !torch_float
    %2 = "torch.vtensor.literal"() <{value = dense<5  :  i32> : tensor<i32>}> : () -> !torch_int
    %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.mul.Tensor"(%3, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.pow.Tensor_Scalar"(%4, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %6 = "torch.aten.exp"(%5) : (!torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.log"(%6) : (!torch_vtensor) -> !torch_vtensor
    %8 = "torch.aten.sqrt"(%7) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()