"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    "scf.if"(%1) ({
      ^bb0:
        %4 = "arith.addi"(%0, %2) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) {
      "scf.yield"  = "arith.addi"  : (i32, i32) -> i32, 
      "scf.yield"  = "arith.addi"  : (i32, i32) -> i32,
      "scf.yield"  = "arith.addi"  : (i32, i32) -> i32,
      "scf.yield"  = "arith.addi"  : (i32, i32) -> i32,
      "scf.yield"  = "arith.addi"  : (i32, i32) -> i32,
    ")
    }) : () -> ()
    "                                                          
    = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32, i32) -> i32, 
    "func.return" = "arith.addi"  : (i32