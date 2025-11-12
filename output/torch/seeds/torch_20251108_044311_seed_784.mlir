"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 2.0 : f32}> : () -> !torch_float
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    
    %4 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
    %5 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten._make_per_tensor_quantized_tensor"(%5, %2, %0, %3) : (!torch_vtensor, !torch_float, !torch_int, !torch_bool) -> !torch_vtensor
    
    %7 = "torch.aten.eq.Tensor"(%arg0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %8 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    
    %9 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
    %10 = "torch.prim.NumToTensor.Scalar"(%9) : (!torch_int) -> !torch_vtensor
    
    %11 = "torch.aten.cat"(%7, %8) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %12 = "torch.aten.cat"(%11, %10) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    
    "func.return"(%12) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()