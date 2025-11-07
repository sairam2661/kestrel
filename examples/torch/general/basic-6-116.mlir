"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,4],f32>, !torch.vtensor<[?,1],si64>, !torch.vtensor<[1,4],si64>) -> !torch.vtensor<[?,4],f32>, sym_name = "torch.aten.index.Tensor_hacked_twin.dynamic_size"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,4],f32>, %arg1: !torch.vtensor<[?,1],si64>, %arg2: !torch.vtensor<[1,4],si64>):
    %0 = "torch.prim.ListConstruct"(%arg1, %arg2) : (!torch.vtensor<[?,1],si64>, !torch.vtensor<[1,4],si64>) -> !torch.list<vtensor>
    %1 = "torch.aten.index.Tensor_hacked_twin"(%arg0, %0) : (!torch.vtensor<[?,4],f32>, !torch.list<vtensor>) -> !torch.vtensor<[?,4],f32>
    "func.return"(%1) : (!torch.vtensor<[?,4],f32>) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()

