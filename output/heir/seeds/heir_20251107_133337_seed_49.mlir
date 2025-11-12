"builtin.module"() ({
  "func.func"() <{function_type = (!secret
  , i1) -> i1, sym_name = "secret_add_with_if"}> ({
  ^bb0(%arg0: !secret, %arg1: i1):
    %0 = "arith.constant"() <{value = 42 : i1}> : () -> i1
    %1 = "arith.cmpi"(%arg1, %0, "ne") : (i1, i1) -> i1
    scf.if %1
    : () -> ()  do   
    .DenseElementsAttr
    %2 : i1
    ^bb1:
      %3 = "arith.addi"(%arg0, %0) : (i1, i1) -> i1
      "scf.yield"(%3) : (i1) -> ()
    ^bb2:
      %4 = "arith.cmpi"(%arg0, %0, "eq") : (i1, i1) -> i1
      scf.if %4
      : () -> ()  do   
      .DenseElementsAttr
      %5 : i1
      ^bb3:
        %6 = "arith.select"(%4, %arg0, %0) : (i1, i1, i1) -> i1
        "scf.yield"(%6) : (i1) -> ()
      ^bb4:
        %7 = "arith.select"(%4, %0, %arg0) : (i1, i1, i1) -> i1
        "scf.yield"(%7) : (i1) -> ()
    ^bb5:
      %8 = "arith.select"(%1, %3, %7) : (i1, i1, i1) -> i1
      "func.return"(%8) : (i1) -> ()
  }) : () -> ()
}) : () -> ()