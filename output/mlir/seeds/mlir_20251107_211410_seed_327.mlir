"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_add_and_cmp", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_unsigned}> : (i32, i32) -> i32
    %1 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflow_signed}> : (i64, i64) -> i64
    %2 = "arith.cmpi"(%0, %arg0, "slt") : (i32, i32) -> i1
    %3 = "arith.cmpi"(%1, %arg1, "sgt") : (i64, i64) -> i1
    "scf.if"(%2) ({
      "scf.yield"() : () -> ()
    }, {
      "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %4 = "arith.addi"(%iv, %iv) : (index, index) -> index
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%0, %1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()