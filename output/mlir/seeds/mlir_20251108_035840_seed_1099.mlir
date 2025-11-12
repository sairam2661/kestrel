"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_add_sub"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"("slt", %0, %arg0) : (i32, i32) -> i1
      scf.if %1 : i1
      ^bb1:
        %2 = "arith.cmpi"("sgt", %0, %arg1) : (i32, i32) -> i1
        scf.if %2 : i1
        ^bb2:
          %3 = "arith.subi"(%0, %arg1) : (i32, i32) -> i32
          scf.yield %3 : i32
        ^bb3:
          scf.yield : i32
      ^bb4:
        scf.yield : i32
      %4 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()