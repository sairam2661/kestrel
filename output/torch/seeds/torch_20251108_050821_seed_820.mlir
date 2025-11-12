"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %c4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %c5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int

    %slice0 = "torch.aten.slice.Tensor"(%arg0, %c1, %c2, %c0, %c3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %slice1 = "torch.aten.slice.Tensor"(%arg1, %c3, %c4, %c0, %c5) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor

    %log0 = "torch.aten.log"(%slice0) : (!torch_vtensor) -> !torch_vtensor
    %log1 = "torch.aten.log"(%slice1) : (!torch_vtensor) -> !torch_vtensor

    %add0 = "torch.aten.add.Tensor"(%log0, %log1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor

    "func.return"(%add0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()