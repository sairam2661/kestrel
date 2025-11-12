"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_transform"}> ({
  ^bb0(%arg0: !ttg_ptr, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "tt.reduce"(%arg1) <{operation = "add", identity = 0 : i32}> : (tensor<4xi32>) -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.muli"(%1, %2) : (i32, i32) -> i32
    %4 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 16 : i32}> : () -> !ttg_ptr
    %5 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 16 : i32}> : () -> !ttg_ptr
    %6 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 16 : i32}> : () -> !ttg_ptr
    %7 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 16 : i32}> : () -> !ttg_ptr
    %8 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %9 = "arith.addi"(%3, %8) : (i32, i32) -> i32
    %10 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %11 = "arith.addi"(%9, %10) : (i32, i32) -> i32
    %12 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %13 = "arith.addi"(%11, %12) : (i32, i32) -> i32
    "tt.return"(%13) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()