"builtin.module"() ({
  "func.func"() <{function_type = (!torchtensor, !torchtensor) -> !torchtensor, sym_name = "fuzz_tensor_operations"}> ({
    ^bb0(%arg0: !torchtensor, %arg1: !torchtensor):
      %cst1 = "torch.prim.NumToTensor.Scalar"() <{value = 1 : i64}> : () -> !torchtensor
      %cst2 = "torch.prim.NumToTensor.Scalar"() <{value = 2 : i64}> : () -> !torchtensor
      %size0 = "torch.aten.size.int"(%arg0, %cst1) : (!torchtensor, !torchtensor) -> !torchtensor
      %size1 = "torch.aten.size.int"(%arg1, %cst1) : (!torchtensor, !torchtensor) -> !torchtensor
      %eq0 = "torch.aten.eq.Tensor"(%size0, %size1) : (!torchtensor, !torchtensor) -> !torchtensor
      %cond = "torch.prim.If"(%eq0) ({
        ^bb1(%arg2: !torchtensor):
          %add = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchtensor, !torchtensor) -> !torchtensor
          "torch.prim.If.yield"(%add) : (!torchtensor) -> ()
      }, {
        ^bb2(%arg3: !torchtensor):
          %cat = "torch.aten.cat"(%arg0, %arg1) : (!torchtensor, !torchtensor) -> !torchtensor
          "torch.prim.If.yield"(%cat) : (!torchtensor) -> ()
      }) : () -> !torchtensor
      "func.return"(%cond) : (!torchtensor) -> ()
  }) : () -> ()
}) : () -> ()