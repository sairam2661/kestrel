"builtin.module"() ({
  "func.func"() <{function_type = (!torchv_32, !torchv_64) -> !torchv_128, sym_name = "tensor_concat_float"}> ({
    ^bb0(%arg0: !torchv_32, %arg1: !torchv_64):
      %0 = "torch.concat"(%arg0, %arg1) : (!torchv_32, !torchv_64) -> !torchv_128
      "func.return"(%0) : (!torchv_128) -> ()
  }) : () -> ()
}) : () -> ()