"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgTensorType1, !ttgTensorType2) -> (!ttgTensorType3), sym_name = "tensor_combiner"}> ({
    ^bb0(%arg0: !ttgTensorType1, %arg1: !ttgTensorType2):
      %0 = "arith.addf"(%arg0, %arg1) : (!ttgTensorType1, !ttgTensorType2) -> !ttgTensorType3
      %1 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 512 : i32}> : () -> !ttgTensorType4
      %2 = "ttg.global_scratch_alloc"() <{alignment = 256 : i32, nbytes = 512 : i32}> : () -> !ttgTensorType4
      %3 = "arith.mulf"(%0, %1) : (!ttgTensorType3, !ttgTensorType4) -> !ttgTensorType5
      %4 = "arith.subf"(%3, %2) : (!ttgTensorType5, !ttgTensorType4) -> !ttgTensorType5
      "tt.return"(%4) : (!ttgTensorType5) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()