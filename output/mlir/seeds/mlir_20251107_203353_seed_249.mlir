"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i1, sym_name = "cmpi_with_nested_loops"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "scf.if"(%0) ({
      ^bb1(%cond1: i1):
        %1 = "arith.addi"(%arg0, %arg1) : (i64, i64) -> i64
        %2 = "arith.cmpi"(%1, %arg1) <{predicate = 4 : i64}> : (i64, i64) -> i1
        "scf.if"(%2) ({
          ^bb2(%cond2: i1):
            "scf.for"() <{lower_bound = 0 : i64, upper_bound = 10 : i64, step = 1 : i64}> ({
              ^bb3(%i: i64):
                %3 = "arith.addi"(%i, %arg1) : (i64, i64) -> i64
                "scf.yield"() : ()
            }) : () -> ()
        }) : () -> ()
    }) : () -> ()
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()