"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_addition"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1:2 = "arith.cmpi"("eq", %0, %arg0) : (i32, i32) -> (i1)
      %2 = "tosa.const"() <{value = 1 : i1}> : () -> i1
      %3 = "arith.cmpi"("eq", %1#0, %2) : (i1, i1) -> (i1)
      %4 = "arith.cmpi"("eq", %1#1, %2) : (i1, i1) -> (i1)
      %5:2 = "arith.cmpi"("ne", %3, %4) : (i1, i1) -> (i1)
      "scf.if"(%5#0) ({
        ^bb1(%cond: i1):
          "scf.yield"() : ()
      }) {
        "scf.yield" 	= "scf.yield" : () -> ()
      } 
      : (i1) -> ()
      "func.return"(%0) : (i32) -> ()
    }) : () -> ()
}) : () -> ()