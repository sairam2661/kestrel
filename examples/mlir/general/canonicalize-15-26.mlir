"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> (i32, f32, i32, i8), sym_name = "merge_fail_yielding_nested_if"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "test.op"() : () -> i32
    %1 = "test.op1"() : () -> f32
    %2 = "test.op2"() : () -> i32
    %3 = "test.op3"() : () -> i8
    %4:4 = "scf.if"(%arg0) ({
      %5:2 = "scf.if"(%arg1) ({
        %6 = "test.inop"() : () -> i32
        %7 = "test.inop1"() : () -> f32
        "scf.yield"(%6, %7) : (i32, f32) -> ()
      }, {
        "scf.yield"(%0, %1) : (i32, f32) -> ()
      }) : (i1) -> (i32, f32)
      "scf.yield"(%0, %5#1, %5#0, %3) : (i32, f32, i32, i8) -> ()
    }, {
      "scf.yield"(%0, %1, %2, %3) : (i32, f32, i32, i8) -> ()
    }) : (i1) -> (i32, f32, i32, i8)
    "func.return"(%4#0, %4#1, %4#2, %4#3) : (i32, f32, i32, i8) -> ()
  }) : () -> ()
}) : () -> ()

