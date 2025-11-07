"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,4,2],si64>, !torch.vtensor<[],si64>) -> !torch.vtensor<[4,2],si64>, sym_name = "torch.aten.index.Tensor_hacked_twin"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,4,2],si64>, %arg1: !torch.vtensor<[],si64>):
    %0 = "torch.prim.ListConstruct"(%arg1) : (!torch.vtensor<[],si64>) -> !torch.list<vtensor>
    %1 = "torch.aten.index.Tensor_hacked_twin"(%arg0, %0) : (!torch.vtensor<[2,4,2],si64>, !torch.list<vtensor>) -> !torch.vtensor<[4,2],si64>
    "func.return"(%1) : (!torch.vtensor<[4,2],si64>) -> ()
  }) : () -> ()
}) : () -> ()

