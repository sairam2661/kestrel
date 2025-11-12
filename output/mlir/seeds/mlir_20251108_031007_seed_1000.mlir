"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "nested_spirv_scf"}> ({
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> (i32, i64)
    "scf.if"(%0#1) ({
      %1:2 = "scf.for"(%0#0) <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
        %2 = "arith.addi"(%1#0, %1#1) : (i32, i64) -> (i32, i64)
        "scf.yield"(%2#0, %2#1) : (i32, i64) -> ()
      }) : (i32, i64)
      "scf.yield"(%1#0, %1#1) : (i32, i64) -> ()
    }, {
      %3:2 = "scf.for"(%0#0) <{lower_bound = 10 : i32, upper_bound = 20 : i32, step = 1 : i32}> ({
        %4 = "arith.subi"(%3#0, %3#1) : (i32, i64) -> (i32, i64)
        "scf.yield"(%4#0, %4#1) : (i32, i64) -> ()
      }) : (i32, i64)
      "scf.yield"(%3#0, %3#1) : (i32, i64) -> ()
    }) : (i32, i64)
    "func.return"(%0#0, %0#1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()