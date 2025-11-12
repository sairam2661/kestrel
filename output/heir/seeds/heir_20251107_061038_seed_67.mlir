"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (i32, i1) -> i32, sym_name = "complex_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i1):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %3 = "arith.cmpi"(%arg0, %2) <{predicate = 4 : i64}> : (i32, i32) -> i1

    "scf.if"(%3) ({
      ^bb0(%arg2: i1):
        %4 = "arith.muli"(%arg0, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %5 = "arith.addi"(%4, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %6 = "arith.muli"(%5, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) : (i1) -> ()

    %7 = "arith.cmpi"(%arg0, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1

    "scf.if"(%7) ({
      ^bb0(%arg3: i1):
        "secret.generic"(%arg0) ({
          ^bb0(%arg4: i32):
            %8 = "arith.cmpi"(%arg4, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
            "secret.yield"(%8) : (i1) -> ()
        }) : (i32) -> !secret_secreti1
        "scf.yield"() : () -> ()
    }) : (i1) -> ()

    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()