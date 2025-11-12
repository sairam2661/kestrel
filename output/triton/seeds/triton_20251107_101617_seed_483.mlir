"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr_t) -> !ttg_ptr_t, sym_name = "fuzz_exploit"}> ({
  ^bb0(%arg0: !ttg_ptr_t):
    %0 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %1 = "tt.addptr"(%arg0, %0) : (!ttg_ptr_t, i32) -> !ttg_ptr_t
    %2 = "tt.addptr"(%1, %0) : (!ttg_ptr_t, i32) -> !ttg_ptr_t
    %3 = "tt.reduce"() <{operation = "add", initial_value = 0 : i32}> ({
    ^bb1(%arg1: !ttg_ptr_t, %arg2: i32):
      %4 = "arith.load"(%arg1) : (!ttg_ptr_t) -> i32
      %5 = "arith.addi"(%arg2, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (!ttg_ptr_t) -> i32
    %6 = "arith.subi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tt.expand_dims"(%6) <{axis = 1 : i32}> : (i32) -> tensor<1xi32>
    %8 = "scf.if"(%3) ({
      %9 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> !ttg_ptr_t
      "scf.yield"() : () -> ()
    }, {
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "tt.return"(%7) : (tensor<1xi32>) -> !ttg_ptr_t
  }) : (!ttg_ptr_t) -> !ttg_ptr_t
}) : () -> ()