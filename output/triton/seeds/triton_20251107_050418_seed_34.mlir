"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "complex_nested_ops"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 128 : i32}> : () -> i32
      %1 = "ttg.global_scratch_alloc"(%0) : (i32) -> i32
      %2 = "arith.constant"() <{value = 64 : i32}> : () -> i32
      %3 = "ttg.global_scratch_alloc"(%2) : (i32) -> i32
      %4 = "arith.constant"() <{value = 32 : i32}> : () -> i32
      %5 = "ttg.global_scratch_alloc"(%4) : (i32) -> i32
      %6 = "arith.constant"() <{value = 16 : i32}> : () -> i32
      %7 = "ttg.global_scratch_alloc"(%6) : (i32) -> i32

      %8 = "arith.addi"(%1, %3) : (i32, i32) -> i32
      %9 = "arith.addi"(%5, %7) : (i32, i32) -> i32
      %10 = "arith.addi"(%8, %9) : (i32, i32) -> i32

      "tt.return"(%10) : (i32) -> ()
  }) : () -> i32
}) : () -> ()