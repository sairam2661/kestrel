"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i32, sym_name = "example"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 5 : index}> : () -> index
    %3 = "arith.addi"(%0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %4 = "arith.cmpi"(%3, %1) <{predicate = 0 : i64}> : (index, index) -> i1
    %5 = "scf.if"(%4) ({
      %10 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "scf.yield"(%10) : (i32) -> ()
    }, {
      %6 = "arith.cmpi"(%3, %2) <{predicate = 0 : i64}> : (index, index) -> i1
      %7 = "scf.if"(%6) ({
        %9 = "arith.constant"() <{value = 20 : i32}> : () -> i32
        "scf.yield"(%9) : (i32) -> ()
      }, {
        %8 = "arith.constant"() <{value = 30 : i32}> : () -> i32
        "scf.yield"(%8) : (i32) -> ()
      }) : (i1) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

