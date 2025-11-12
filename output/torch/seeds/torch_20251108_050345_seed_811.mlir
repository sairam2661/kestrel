"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector_element_type, !torchvvector_element_type) -> !torchvvector_element_type, sym_name = "torch.aten.cat$stress"}> ({
  ^bb0(%arg0: !torchvvector_element_type, %arg1: !torchvvector_element_type):
    %2 = "torch.aten.size.int"(%arg0) : (!torchvvector_element_type) -> !torchint
    %3 = "torch.aten.size.int"(%arg1) : (!torchvvector_element_type) -> !torchint
    %4 = "torch.prim.NumToTensor.Scalar"(%2) : (!torchint) -> !torchvvector_element_type
    %5 = "torch.prim.NumToTensor.Scalar"(%3) : (!torchint) -> !torchvvector_element_type
    %6 = "torch.prim.ListConstruct"(%4, %5) : (!torchvvector_element_type, !torchvvector_element_type) -> !torchlist
    %7 = "torch.aten.cat"(%arg0, %arg1, %6) : (!torchvvector_element_type, !torchvvector_element_type, !torchlist) -> !torchvvector_element_type
    "func.return"(%7) : (!torchvvector_element_type) -> ()
  }) : () -> ()
}) : () -> ()