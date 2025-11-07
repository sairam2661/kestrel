"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,5,6],f32>) -> !torch.vtensor<[3],si32>, sym_name = "aten_shape_to_tensor"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,5,6],f32>):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch.vtensor<[4,5,6],f32>) -> !torch.vtensor<[3],si32>
    "func.return"(%0) : (!torch.vtensor<[3],si32>) -> ()
  }) : () -> ()
}) : () -> ()

