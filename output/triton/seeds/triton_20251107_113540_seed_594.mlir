"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "stress_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi32>
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %3) : (i32, i32) -> i32
    %5 = "arith.cmpi"(%4, %1) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %6 = "scf.if"(%5) ({
      %7 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()