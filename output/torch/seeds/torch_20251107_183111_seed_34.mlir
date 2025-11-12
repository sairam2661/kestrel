"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %c0 = "torch.prim.NumToTensor.Scalar"() <{value = 0 : i32}> : () -> !torchvtensor
    %c1 = "torch.prim.NumToTensor.Scalar"() <{value = 1 : i32}> : () -> !torchvtensor
    %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %size1 = "torch.aten.size.int"(%arg1, %c1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %eq0 = "torch.aten.eq.Tensor"(%size0, %size1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %if1 = "scf.if"(%eq0) ({
      ^bb1:
        %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
        "scf.yield"(%0) : (!torchvtensor)
    }) {
      else_branches = 1 : i32
    }  : (!torchvtensor) -> (!torchvtensor)
    %return0 = "func.return"(%if1) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()