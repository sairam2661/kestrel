"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}, {secret.secret}], function_type = (i64, i64, i1) -> i64, sym_name = "cmux"}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i1):
    %0 = "scf.if"(%arg2) ({
      "scf.yield"(%arg0) : (i64) -> ()
    }, {
      "scf.yield"(%arg1) : (i64) -> ()
    }) : (i1) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

