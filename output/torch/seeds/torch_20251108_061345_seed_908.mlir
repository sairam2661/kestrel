"builtin.module"() ({
  "func.func"() <{function_type = (!torch_packedtensor, !torch_packedtensor) -> !torch_packedtensor, sym_name = "torch.aten.add$packed"}> ({
  ^bb0(%arg0: !torch_packedtensor, %arg1: !torch_packedtensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_packedtensor, !torch_packedtensor) -> !torch_packedtensor
    "func.return"(%0) : (!torch_packedtensor) -> ()
  }) : () -> ()
}) : () -> ()