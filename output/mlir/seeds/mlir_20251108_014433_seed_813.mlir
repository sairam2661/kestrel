"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i64 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i64 = "arith.constant"() <{value = 4 : i64}> : () -> i64
    %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %c6_i64 = "arith.constant"() <{value = 6 : i64}> : () -> i64

    %add_i32 = "arith.addi"(%arg0, %c1_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %add_i64 = "arith.addi"(%arg1, %c2_i64) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64

    %cmp_i32 = "arith.cmpi"(%add_i32, %c3_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %cmp_i64 = "arith.cmpi"(%add_i64, %c4_i64) <{predicate = 4 : i64}> : (i64, i64) -> i1

    %scf_if_i32 = "scf.if"(%cmp_i32) ({
      "scf.yield"(%add_i32, %add_i64) : (i32, i64) -> ()
    }, {
      %mul_i32 = "arith.mulsi"(%add_i32, %c5_i32) : (i32, i32) -> i32
      %mul_i64 = "arith.mulsi"(%add_i64, %c6_i64) : (i64, i64) -> i64
      "scf.yield"(%mul_i32, %mul_i64) : (i32, i64) -> ()
    }) : (i1) -> (i32, i64)

    "func.return"(%scf_if_i32#0, %scf_if_i32#1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()