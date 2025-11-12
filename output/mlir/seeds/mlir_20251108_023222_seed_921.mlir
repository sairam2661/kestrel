"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<2x2xi8>) -> (i32, memref<2x2xi8>), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: i32, %arg1: memref<2x2xi8>):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "scf.if"(%1) ({
    ^bb0:
      %3 = "arith.cmpi"("slt", %1, %0) : (i32, i32) -> i1
      "scf.yield"(%3) : (i1) -> ()
    }) : (i1) -> (i1) doIf
    .ThenBlock:
      () -> (i1) doBlock
      .DoBlock:
        () -> ()
      ^bb0(%4: i1):
        "scf.yield"(%4) : (i1) -> ()
    ^bb1(%5: i1):
      %6 = "scf.if"(%5) ({
      ^bb0:
        "scf.yield"() : () -> ()
      }) : () -> () doIf
      .ThenBlock:
        () -> () doBlock
        .DoBlock:
          () -> ()
      ^bb0:
        "scf.yield"() : () -> ()
      ^bb1:
        %7 = "arith.cmpf"("oEQ", 3.14, 2.71) : (f64, f64) -> i1
        %8 = "scf.yield"(%7) : (i1) -> ()
      ^bb2(%9: i1):
        "scf.yield"(%9) : (i1) -> ()
    ^bb2(%10: i1):
      "scf.yield"(%10) : (i1) -> ()
    "func.return"(%1, %arg1) : (i32, memref<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()