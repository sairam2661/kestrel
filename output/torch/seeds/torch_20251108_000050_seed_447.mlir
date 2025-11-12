"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.aten.size.int"(%arg0, %0) : (!torch_tensor, !torch_int) -> i64
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.aten.size.int"(%arg1, %2) : (!torch_tensor, !torch_int) -> i64
    %4 = "arith.addi"(%1, %3) : (i64, i64) -> i64
    %5 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %6 = "torch.aten.slice.Tensor"(%arg0, %5, %5, %4) : (!torch_tensor, !torch_int, !torch_int, i64) -> !torch_tensor
    %7 = "torch.aten.add.Tensor"(%arg1, %6) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    "func.return"(%7) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()