"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_conditions"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.select"(%arg0, %arg1, %arg0) : (i32, i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %arg1, "slt") : (i32, i32) -> i1
      %2 = "scf.if"(%1) ({
        %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
      }, {
        %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i1) -> i32
      "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()