"builtin.module"() ({
  "tt.func"() <{function_type = (!ttTensorType2x3xi16, !ttTensorType2x3xi16) -> (!ttTensorType2x3xi16), sym_name = "xor_reduce"}> ({
  ^bb0(%arg0: !ttTensorType2x3xi16, %arg1: !ttTensorType2x3xi16):
    %0 = "tt.reduce"(%arg0, %arg1) <{operation = "xor"}> : (!ttTensorType2x3xi16, !ttTensorType2x3xi16) -> !ttTensorType2x3xi16
    "tt.return"(%0) : (!ttTensorType2x3xi16) -> ()
  }) : () -> ()
}) : () -> ()