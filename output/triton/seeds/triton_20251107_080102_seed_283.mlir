"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 7 : i32}> : () -> i32
      %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.cmpi"(%1, %0, "slt") : (i32, i32) -> i1
      %3 = "scf.if"(%2) ({
        ^bb1:
          %4 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
          "tt.return"(%4) : (i32) -> ()
      }) {
        "tt.return" = {
          "value" = 0 : i32
        } } : (i1) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()