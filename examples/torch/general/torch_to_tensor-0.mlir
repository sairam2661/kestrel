"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4,5],f32>) -> !torch.vtensor<[3],si64>, sym_name = "test_shape"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4,5],f32>):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[3,4,5],f32>) -> !torch.vtensor<[3],si64>
    "func.return"(%0) : (!torch.vtensor<[3],si64>) -> ()
  }) : () -> ()
}) : () -> ()

