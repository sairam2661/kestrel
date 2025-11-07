"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,3,5],f32>, !torch.int) -> !torch.vtensor<[2,3,5],f32>, sym_name = "torch.aten.tril"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,3,5],f32>, %arg1: !torch.int):
    %0 = "torch.aten.tril"(%arg0, %arg1) : (!torch.vtensor<[2,3,5],f32>, !torch.int) -> !torch.vtensor<[2,3,5],f32>
    "func.return"(%0) : (!torch.vtensor<[2,3,5],f32>) -> ()
  }) : () -> ()
}) : () -> ()

