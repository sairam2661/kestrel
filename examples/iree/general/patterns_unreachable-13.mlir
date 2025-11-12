"builtin.module"() ({
  "util.func"() <{function_type = (index, index, index) -> i32, sym_name = "simplifyIfInForWithUnreachable", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "scf.for"(%arg0, %arg1, %arg2, %0) ({
    ^bb0(%arg3: index, %arg4: i32):
      %2 = "test.condition"(%arg3) : (index) -> i1
      %3 = "scf.if"(%2) ({
        "util.scf.unreachable"() <{message = "then unreachable"}> : () -> ()
        %5 = "ub.poison"() <{value = #ub.poison}> : () -> i32
        "scf.yield"(%5) : (i32) -> ()
      }, {
        %4 = "test.produce"(%arg4) : (i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i1) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "util.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

