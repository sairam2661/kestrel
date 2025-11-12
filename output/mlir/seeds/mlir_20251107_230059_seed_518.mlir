"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<3xi32>) -> (i32, memref<3xi32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: memref<3xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"("eq", %1, %0) : (i32, i32) -> i1
    "scf.if"(%2) <{sym_name = "if_block"}> ({
      ^bb1(%3: i1):
        "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "scf.for"(%arg0, %arg0, %1, %0) <{sym_name = "for_loop"}> ({
      ^bb2(%4: i32, %5: i32):
        %6 = "arith.addi"(%5, %0) : (i32, i32) -> i32
        "scf.yield"(%6, %arg0) : (i32, i32) -> ()
    }) : (i32, i32) -> ()
    "func.return"(%1, %arg1) : (i32, memref<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()