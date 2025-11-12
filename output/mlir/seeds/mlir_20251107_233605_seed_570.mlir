"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_scf_if_nesting"}> ({
    ^bb0(%arg0: i32):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32

      %cmp0 = "arith.cmpi"(%arg0, %c1_i32) <{predicate = "sgt", result_bit_width = 1}> : (i32, i32) -> i1

      "scf.if"(%cmp0) ({
        ^bb1(%arg1: i1):
          %cmp1 = "arith.cmpi"(%arg0, %c2_i32) <{predicate = "sgt", result_bit_width = 1}> : (i32, i32) -> i1
          "scf.if"(%cmp1) ({
            ^bb2(%arg2: i1):
              "func.return"(%c3_i32) : (i32) -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
      }) : () -> ()

      %cmp2 = "arith.cmpi"(%arg0, %c0_i32) <{predicate = "sle", result_bit_width = 1}> : (i32, i32) -> i1

      "scf.if"(%cmp2) ({
        ^bb3(%arg3: i1):
          "func.return"(%c0_i32) : (i32) -> ()
      }) : () -> ()

      "func.return"(%c1_i32) : (i32) -> ()
  }) : () -> ()
}) : () -> ()