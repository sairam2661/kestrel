"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> (), sym_name = "merge_yielding_nested_if_nv1"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "test.op"() : () -> i32
    %1 = "test.op1"() : () -> f32
    "scf.if"(%arg0) ({
      %2:2 = "scf.if"(%arg1) ({
        %3 = "test.inop"() : () -> i32
        %4 = "test.inop1"() : () -> f32
        "scf.yield"(%3, %4) : (i32, f32) -> ()
      }, {
        "scf.yield"(%0, %1) : (i32, f32) -> ()
      }) : (i1) -> (i32, f32)
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

