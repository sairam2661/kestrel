"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}, {tt.divisibility = 8 : i32}, {}], function_type = (i32, i32, i32) -> (), sym_name = "for_dynamic"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%arg0, %arg2, %arg1) ({
    ^bb0(%arg3: i32):
      %1 = "arith.addi"(%arg3, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

