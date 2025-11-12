"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_nested_if_and_for"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "scf.if"(%arg0) ({
      "scf.for"(%0, %1, %arg1, %2) ({
      ^bb0(%arg2: i32, %arg3: i32):
        %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i32, i32, i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }, {
      "scf.if"(%arg1) ({
        %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }, {
        %6 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }) : (i1) -> i32
      "scf.yield"(%0) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()