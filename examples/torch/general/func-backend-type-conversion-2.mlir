"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "bwhile"}> ({
  ^bb0(%arg4: i64, %arg5: i64):
    %0 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %1:2 = "scf.while"(%arg4) ({
    ^bb0(%arg8: i64):
      %3 = "arith.cmpi"(%arg8, %arg5) <{predicate = 2 : i64}> : (i64, i64) -> i1
      "scf.condition"(%3, %arg8, %arg8) : (i1, i64, i64) -> ()
    }, {
    ^bb0(%arg6: i64, %arg7: i64):
      %2 = "arith.muli"(%arg7, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      "scf.yield"(%2) : (i64) -> ()
    }) : (i64) -> (i64, i64)
    "func.return"(%1#1) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.bool) -> !torch.bool, sym_name = "identity$torch.bool"}> ({
  ^bb0(%arg3: !torch.bool):
    "func.return"(%arg3) : (!torch.bool) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.int) -> !torch.int, sym_name = "identity$torch.int"}> ({
  ^bb0(%arg2: !torch.int):
    "func.return"(%arg2) : (!torch.int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.float) -> !torch.float, sym_name = "identity$torch.float"}> ({
  ^bb0(%arg1: !torch.float):
    "func.return"(%arg1) : (!torch.float) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch.Generator) -> !torch.Generator, sym_name = "identity$torch.Generator"}> ({
  ^bb0(%arg0: !torch.Generator):
    "func.return"(%arg0) : (!torch.Generator) -> ()
  }) : () -> ()
}) : () -> ()

