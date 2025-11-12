"builtin.module"() ({
  "func.func"() <{function_type = (!arith_constant_result, i32) -> i32, sym_name = "complex_arith_flow"}> ({
  ^bb0(%arg0: !arith_constant_result, %arg1: i32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %cmp = "arith.cmpi"(%arg1, %c2_i32) <{predicate = "slt"}> : (i32, i32) -> i1
    %if = "scf.if"(%cmp) ({
      %add = "arith.addi"(%arg1, %c1_i32) <{overflowFlags = #arith_overflow} > : (i32, i32) -> i32
      %sub = "arith.subi"(%add, %c3_i32) <{overflowFlags = #arith_overflow} > : (i32, i32) -> i32
      "scf.yield"(%sub) : (i32) -> ()
    }, {
      %mul = "arith.muli"(%arg1, %c2_i32) <{overflowFlags = #arith_overflow} > : (i32, i32) -> i32
      %add = "arith.addi"(%mul, %c1_i32) <{overflowFlags = #arith_overflow} > : (i32, i32) -> i32
      "scf.yield"(%add) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%if) : (i32) -> ()
  }) : () -> ()
}) : () -> ()