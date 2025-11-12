"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"("sge", %0, %arg0) : (i32, i32) -> i1
    "scf.if"(%1) ({
      %2 = "arith.addi"(%0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %3 = "arith.cmpi"("sgt", %0, %arg0) : (i32, i32) -> i1
      "scf.if"(%3) ({
        %4 = "arith.addi"(%0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }, {
        "scf.yield"(%0) : (i32) -> ()
      }) : (i1) -> (i32)
    }) : (i1) -> (i32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()