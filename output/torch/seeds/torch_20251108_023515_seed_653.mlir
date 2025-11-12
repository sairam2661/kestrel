"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensors) -> !torch_tensors, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_tensors, %arg1: !torch_tensors):
    %0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_tensors, !torch_int) -> !torch_int
    %1 = "torch.aten.size.int"(%arg0, %c1) : (!torch_tensors, !torch_int) -> !torch_int
    %2 = "torch.aten.size.int"(%arg1, %c0) : (!torch_tensors, !torch_int) -> !torch_int
    %3 = "torch.aten.size.int"(%arg1, %c1) : (!torch_tensors, !torch_int) -> !torch_int
    %4 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_tensors) -> !torch_int
    %5 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_tensors) -> !torch_int
    %6 = "torch.aten.eq.Tensor"(%4, %5) : (!torch_int, !torch_int) -> !torch_i1
    %7 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_tensors
    %8 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_tensors
    %9 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_int) -> !torch_tensors
    %10 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_int) -> !torch_tensors
    %11 = "torch.prim.ListConstruct"(%7, %8, %9, %10) : (!torch_tensors, !torch_tensors, !torch_tensors, !torch_tensors) -> !torch_list
    %12 = "torch.aten.cat"(%11, %c0) : (!torch_list, !torch_int) -> !torch_tensors
    "func.return"(%12) : (!torch_tensors) -> ()
  }) : () -> ()
}) : () -> ()