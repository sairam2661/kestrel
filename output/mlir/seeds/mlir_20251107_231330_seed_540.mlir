"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_arith"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32

      %add1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %if1 = "scf.if"(%add1) <{true_branch = "", false_branch = ""}> ({
        %add2 = "arith.addi"(%add1, %c1_i32) : (i32, i32) -> i32
        "scf.yield"(%add2) : (i32) -> ()
      }, {
        %add3 = "arith.addi"(%add1, %c2_i32) : (i32, i32) -> i32
        "scf.yield"(%add3) : (i32) -> ()
      }) : (i32)

      %if2 = "scf.if"(%if1) <{true_branch = "", false_branch = ""}> ({
        %add4 = "arith.addi"(%if1, %c3_i32) : (i32, i32) -> i32
        "scf.yield"(%add4) : (i32) -> ()
      }, {
        %add5 = "arith.addi"(%if1, %c4_i32) : (i32, i32) -> i32
        "scf.yield"(%add5) : (i32) -> ()
      }) : (i32)

      "func.return"(%if2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()