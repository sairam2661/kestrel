"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops_and_conditionals", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %5 = "scf.if"(%arg2) ({
      ^bb0:
        %6 = "arith.addi"(%arg3, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }, {
      ^bb1:
        "scf.yield"(%arg3) : (i32) -> ()
      }) : (i32)
      "scf.yield"(%arg2, %4#0) : (index, i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%4#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()