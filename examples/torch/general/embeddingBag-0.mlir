"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1000000,64],f32>, !torch.vtensor<[204790],si64>, !torch.vtensor<[2048],si64>) -> (!torch.vtensor<[2048,64],f32>, !torch.vtensor<[0],si64>, !torch.vtensor<[2048],si64>, !torch.vtensor<[2048],si64>), sym_name = "torchAtenEmbeddingBagPaddingIdx"}> ({
  ^bb0(%arg0: !torch.vtensor<[1000000,64],f32>, %arg1: !torch.vtensor<[204790],si64>, %arg2: !torch.vtensor<[2048],si64>):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %3 = "torch.constant.none"() : () -> !torch.none
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %5 = "torch.constant.none"() : () -> !torch.none
    %6:4 = "torch.aten.embedding_bag.padding_idx"(%arg0, %arg1, %arg2, %0, %1, %2, %3, %4, %5) : (!torch.vtensor<[1000000,64],f32>, !torch.vtensor<[204790],si64>, !torch.vtensor<[2048],si64>, !torch.bool, !torch.int, !torch.bool, !torch.none, !torch.bool, !torch.none) -> (!torch.vtensor<[2048,64],f32>, !torch.vtensor<[0],si64>, !torch.vtensor<[2048],si64>, !torch.vtensor<[2048],si64>)
    "func.return"(%6#0, %6#1, %6#2, %6#3) : (!torch.vtensor<[2048,64],f32>, !torch.vtensor<[0],si64>, !torch.vtensor<[2048],si64>, !torch.vtensor<[2048],si64>) -> ()
  }) : () -> ()
}) : () -> ()

