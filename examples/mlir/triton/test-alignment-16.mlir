"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}, {tt.divisibility = 8 : i32}, {}], function_type = (index, index, index) -> (), sym_name = "for_dynamic"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    "scf.for"(%arg0, %arg2, %arg1) ({
    ^bb0(%arg3: index):
      %0 = "arith.index_cast"(%arg3) : (index) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

