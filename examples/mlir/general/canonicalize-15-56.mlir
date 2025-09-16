"builtin.module"() ({
  "func.func"() <{function_type = (i1, i64) -> (i32, i32), sym_name = "combineIfsUsed"}> ({
  ^bb0(%arg0: i1, %arg1: i64):
    %0 = "scf.if"(%arg0) ({
      %5 = "test.firstCodeTrue"() : () -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %4 = "test.firstCodeFalse"() : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i1) -> i32
    %1 = "scf.if"(%arg0) ({
      %3 = "test.secondCodeTrue"(%0) : (i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
      %2 = "test.secondCodeFalse"(%0) : (i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%0, %1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

