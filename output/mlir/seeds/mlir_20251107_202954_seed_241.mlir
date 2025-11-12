"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_add_cmp"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %0, "eq") : (i32, i32) -> i1
      "scf.if"(%1) ({
        ^bb1(%arg2: i32):
          %2 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
          "scf.yield"(%2) : (i32) -> i32
      }) {
        "scf.yield"=(i32)
       -> (i32)  } : (i32) -> (i32)
  }) : () -> ()
}) : () -> ()