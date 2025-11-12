"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi8>, i32) -> (tensor<32xi8>, i32), sym_name = "byte_shift"}> ({
  ^bb0(%arg0: tensor<32xi8>, %arg1: i32):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i64}> : () -> !ttg_ptr
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i64}> : () -> !ttg_ptr
    %2 = "ttg.global_scratch_alloc"() <{size = 512 : i64}> : () -> !ttg_ptr
    %3 = "ttg.global_scratch_alloc"() <{size = 128 : i64}> : () -> !ttg_ptr

    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "arith.addi"(%arg1, %4) <{overflowFlags = #arith_overflow_mode_none}> : (i32, i32) -> i32

    %6 = "scf.if"(%5) ({
      ^bb1(%arg2: i32):
        %7 = "arith.shli"(%arg0, %arg2) <{overflowFlags = #arith_overflow_mode_none}> : (tensor<32xi8>, i32) -> tensor<32xi8>
        "scf.yield"(%7) : (tensor<32xi8>) -> ()
    }, {
      ^bb2:
        "scf.yield"(%arg0) : (tensor<32xi8>) -> ()
    }) : (i32) -> tensor<32xi8>

    "tt.return"(%6, %5) : (tensor<32xi8>, i32) -> ()
  }) : () -> ()
}) : () -> ()