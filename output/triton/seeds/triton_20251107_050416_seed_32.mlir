"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024}> : () -> !ttg_ptr
    %1 = "ttg.global_scratch_alloc"() <{size = 2048}> : () -> !ttg_ptr
    %2 = "ttg.global_scratch_alloc"() <{size = 4096}> : () -> !ttg_ptr
    %3 = "ttg.global_scratch_alloc"() <{size = 8192}> : () -> !ttg_ptr
    %4 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %5 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %6 = "arith.cmpi"(%arg0, %arg1, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%6) ({
      "scf.yield"(%arg0) : (i32) -> ()
    }, {
      "scf.yield"(%arg1) : (i32) -> ()
    }) : (i1) -> i32
    %7 = "arith.extsi"(%arg0) : (i32) -> i64
    %8 = "arith.extsi"(%arg1) : (i32) -> i64
    %9 = "arith.addi"(%7, %8) : (i64, i64) -> i64
    %10 = "arith.trunci"(%9) : (i64) -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()