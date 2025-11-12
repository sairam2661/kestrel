"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgPtr, !ttgPtr) -> (), sym_name = "scratch_alloc_test"}> ({
    ^bb0(%arg0: !ttgPtr, %arg1: !ttgPtr):
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttgPtr
      %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttgPtr
      %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttgPtr
      %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32}> : () -> !ttgPtr
      %4 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %5 = "arith.constant"() <{value = 24 : i32}> : () -> i32
      "scf.if"(%4) ({
        %6 = "arith.addi"(%5, %4) : (i32, i32) -> i32
        "use"(%6) : (i32) -> ()
        "scf.yield"() : () -> ()
      }, {
        %7 = "arith.subi"(%4, %5) : (i32, i32) -> i32
        "use"(%7) : (i32) -> ()
        "scf.yield"() : () -> ()
      }) : (i32) -> ()
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()