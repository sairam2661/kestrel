"builtin.module"() ({
  "func.func"() <{function_type = (!torchv13tensor, !torchv13tensor) -> !torchv13tensor, sym_name = "complex_fuzzing"}> ({
    ^bb0(%arg0: !torchv13tensor, %arg1: !torchv13tensor):
      %c0_i32 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torchv13int
      %c1_i32 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torchv13int
      %c2_i32 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torchv13int
      %c3_i32 = "torch.constant.int"() <{value = 3 : i32}> : () -> !torchv13int
      %c4_i32 = "torch.constant.int"() <{value = 4 : i32}> : () -> !torchv13int
      %c5_i32 = "torch.constant.int"() <{value = 5 : i32}> : () -> !torchv13int

      %list0 = "torch.prim.ListConstruct"(%c0_i32, %c1_i32) : (!torchv13int, !torchv13int) -> !torchv13list
      %list1 = "torch.prim.ListConstruct"(%c2_i32, %c3_i32) : (!torchv13int, !torchv13int) -> !torchv13list
      %list2 = "torch.prim.ListConstruct"(%c4_i32, %c5_i32) : (!torchv13int, !torchv13int) -> !torchv13list

      %tensor0 = "torch.vtensor.literal"() <{value = dense<1.0> : tensor<1x1xf32>}> : () -> !torchv13tensor
      %tensor1 = "torch.vtensor.literal"() <{value = dense<2.0> : tensor<1x1xf32>}> : () -> !torchv13tensor
      %tensor2 = "torch.vtensor.literal"() <{value = dense<3.0> : tensor<1x1xf32>}> : () -> !torchv13tensor

      %new_tensor0 = "torch.aten.add.Tensor"(%tensor0, %arg0) : (!torchv13tensor, !torchv13tensor) -> !torchv13tensor
      %new_tensor1 = "torch.aten.add.Tensor"(%tensor1, %arg1) : (!torchv13tensor, !torchv13tensor) -> !torchv13tensor
      %new_tensor2 = "torch.aten.add.Tensor"(%tensor2, %arg0) : (!torchv13tensor, !torchv13tensor) -> !torchv13tensor

      %list_tensor0 = "torch.prim.ListConstruct"(%new_tensor0, %new_tensor1, %new_tensor2) : (!torchv13tensor, !torchv13tensor, !torchv13tensor) -> !torchv13list

      %result_tensor = "torch.aten.index_select"(%list_tensor0, %c0_i32, %list1) : (!torchv13list, !torchv13int, !torchv13list) -> !torchv13tensor

      "func.return"(%result_tensor) : (!torchv13tensor) -> ()
  }) : () -> ()
}) : () -> ()