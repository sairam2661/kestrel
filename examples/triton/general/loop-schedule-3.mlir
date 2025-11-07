"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i1) -> (), sym_name = "epilogue_forward_slice"}> ({
  ^bb0(%arg0: i32, %arg1: i1):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "scf.for"(%0, %arg0, %1) ({
    ^bb0(%arg2: i32):
      %2 = "latency.op"() {tt.latency = 2 : i32} : () -> i32
      %3 = "scf.if"(%arg1) ({
        "scf.yield"(%2) : (i32) -> ()
      }, {
        "scf.yield"(%0) : (i32) -> ()
      }) : (i1) -> i32
      "use"(%3) : (i32) -> ()
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 3 : i32} : (i32, i32, i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

