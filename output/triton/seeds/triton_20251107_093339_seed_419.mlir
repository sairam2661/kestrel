"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %1) : (i32, i32) -> i32
    %5 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %4) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %arg0, %arg1) : (i1, i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : (i32, i32) -> i32
  "tt.func"() <{function_type = () -> (), sym_name = "nested_loops"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "scf.for"(%0, %1) ({
    ^bb0(%i: i32):
      "scf.for"(%i, %1) ({
      ^bb0(%j: i32):
        %2 = "arith.addi"(%i, %j) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) {tt.num_stages = 2 : i32} : (i32, i32) -> ()
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 3 : i32} : (i32, i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()