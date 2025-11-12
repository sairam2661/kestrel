"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_if_else"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.cmpi"(%arg0, "eq", 0) : (i32, i32) -> i1
      %1 = "scf.if"(%0, "else") ({
        ^bb0:
          %2 = "arith.addi"(%arg0, 1) : (i32, i32) -> i32
          "scf.yield"(%2) : (i32) -> i32
      }, {
        ^bb0:
          %3 = "arith.subi"(%arg0, 1) : (i32, i32) -> i32
          "scf.yield"(%3) : (i32) -> i32
      }) : (i1) -> i32
      "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()