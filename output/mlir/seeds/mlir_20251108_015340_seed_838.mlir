"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %cst0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %cst1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %cmp = "arith.cmpi"(%arg0, %cst0, "sgt") : (i32, i32) -> i1
      %if = "scf.if"(%cmp) ({
        %add = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%add) : (i32) -> ()
      }, {
        %sub = "arith.addi"(%arg0, %cst1) : (i32, i32) -> i32
        "scf.yield"(%sub) : (i32) -> ()
      }) : (i1) -> i32
      "func.return"(%if) : (i32) -> ()
  }) : () -> ()
}) : () -> ()