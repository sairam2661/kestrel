"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_nested_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4:2 = "scf.for"(%0, %1, %2, %arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: i32, %arg4: i32):
      %5 = "arith.cmpi"(%arg3, %arg4) <{predicate = 4 : i64}> : (i32, i32) -> i1
      "scf.if"(%5) ({
        %6 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%arg3, %6) : (i32, i32) -> ()
      }, {
        %7 = "arith.subi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%arg4, %7) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
    }) : (index, index, index, i32, i32) -> (i32, i32)
    "tt.return"(%4#0, %4#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()