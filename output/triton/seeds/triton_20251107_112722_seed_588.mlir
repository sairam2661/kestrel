"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr, !tttensor) -> !tttensor, sym_name = "mystery_op"}> ({
  ^bb0(%arg0: !ttptr, %arg1: !tttensor):
    %0 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
    %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<256xi32>) -> tensor<256x1xi32>
    %2 = "tt.addptr"(%arg0, %1) <{alignment = 16 : i32}> : (!ttptr, tensor<256x1xi32>) -> !tttensor
    %3 = "tt.reduce"(%2) <{reduction = "add", type = "tensor<1xi32>"}> ({
      ^bb1(%arg2: !tttensor):
        "tt.return"(%arg2) : (!tttensor) -> ()
    }) : (!tttensor) -> !tttensor
    "tt.return"(%3) : (!tttensor) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()