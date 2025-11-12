"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor
      %c2 = "torch.constant.float"() <{value = 2.0}> : () -> !torch_vtensor
      %c3 = "torch.constant.str"() <{value = "hello"}> : () -> !torch_vtensor
      %slc = "torch.aten.slice.Tensor"(%arg0) <{starts = [0], lengths = [5], steps = [1]}> : (!torch_vtensor) -> !torch_vtensor
      %view = "torch.aten.view"(%slc) <{size = [3, 5, 1]}>: (!torch_vtensor) -> !torch_vtensor
      %add = "torch.aten.add.Tensor"(%arg1, %c2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %cat = "torch.aten.cat"(%view, %c1, %add) <{dim = 0}> : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%cat) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()