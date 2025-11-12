"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %c0_i1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %c1_i32 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_int
    %c2_f32 = "torch.constant.float"() <{value = 2.000000e+00 : f32}> : () -> !torch_float
    %add = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %mul = "torch.aten.mul.Tensor"(%add, %c2_f32) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %where = "torch.aten.where.ScalarSelf"(%c0_i1, %mul, %arg0) : (!torch_bool, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%where) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()