"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "do_not_hoist_scf_while"}> ({
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 7.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
    %4 = "scf.while"(%1) ({
    ^bb0(%arg1: index):
      %6 = "arith.cmpi"(%arg1, %0) <{predicate = 2 : i64}> : (index, index) -> i1
      "scf.condition"(%6, %arg1) : (i1, index) -> ()
    }, {
    ^bb0(%arg0: index):
      %5 = "arith.addf"(%2, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "scf.yield"(%arg0) : (index) -> ()
    }) : (index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

