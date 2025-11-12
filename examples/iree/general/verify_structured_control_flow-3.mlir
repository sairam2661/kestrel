"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "valid_scf_execute_region", sym_visibility = "public"}> ({
    "scf.execute_region"() ({
      %0 = "arith.constant"() <{value = true}> : () -> i1
      %1 = "util.optimization_barrier"(%0) : (i1) -> i1
      "scf.if"(%1) ({
        %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %5 = "util.optimization_barrier"(%4) : (i32) -> i32
        "scf.yield"() : () -> ()
      }, {
        %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        %3 = "util.optimization_barrier"(%2) : (i32) -> i32
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

