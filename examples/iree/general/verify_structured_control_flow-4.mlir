"builtin.module"() ({
  "util.func"() <{function_type = (i1) -> (), sym_name = "nested_scf_execute_region", sym_visibility = "public"}> ({
  ^bb0(%arg0: i1):
    "scf.if"(%arg0) ({
      "scf.execute_region"() ({
        "scf.execute_region"() ({
          %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
          %1 = "util.optimization_barrier"(%0) : (i32) -> i32
          "scf.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

