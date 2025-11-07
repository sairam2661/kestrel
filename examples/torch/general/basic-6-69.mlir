"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,5,5],i1>, !torch.vtensor<[1,12,5,5],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[1,12,5,5],f32>, sym_name = "torch.aten.where.self"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,5,5],i1>, %arg1: !torch.vtensor<[1,12,5,5],f32>, %arg2: !torch.vtensor<[],f32>):
    %0 = "torch.aten.where.self"(%arg0, %arg1, %arg2) : (!torch.vtensor<[1,1,5,5],i1>, !torch.vtensor<[1,12,5,5],f32>, !torch.vtensor<[],f32>) -> !torch.vtensor<[1,12,5,5],f32>
    "func.return"(%0) : (!torch.vtensor<[1,12,5,5],f32>) -> ()
  }) : () -> ()
}) : () -> ()

