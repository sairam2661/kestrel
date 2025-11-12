"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1, "ne") : (i32, i32) -> i1
    %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.divsi"(%3, %0) : (i32, i32) -> i32
    %5 = "scf.if"(%2) <{results = i32}> ({
    ^bb1(%arg2: i1):
      %6 = "scf.yield"(%arg0) : (i32) -> i32
    }) : (i32) -> i32
    %7 = "scf.for"(%arg0) <{upperBound = 10 : i32, lowerBound = 0 : i32, step = 1 : i32}> ({
    ^bb2(%indvar: i32):
      %8 = "arith.addi"(%indvar, %arg1) : (i32, i32) -> i32
      %9 = "scf.yield"() : () -> ()
    }) : () -> ()
    %10 = "tt.reduce"() <{reductionOp = "arith.addi"}> ({
    ^bb3(%acc: i32, %arg2: i32):
      %11 = "arith.addi"(%acc, %arg2) : (i32, i32) -> i32
      %12 = "scf.yield"(%11) : (i32) -> i32
    }) : () -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()