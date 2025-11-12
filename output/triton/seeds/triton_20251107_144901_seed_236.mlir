"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_operation"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
      %2 = "arith.select"(%arg1, %0, %1) : (i32, i32, i32) -> i32
      %3 = "arith.divsi"(%2, %arg0) : (i32, i32) -> i32
      %4 = "arith.remsi"(%3, %arg1) : (i32, i32) -> i32
      "scf.for"(%0, %arg0, %arg1) ({
        ^bb0(%arg2: i32):
          %5 = "arith.addi"(%arg2, %arg1) : (i32, i32) -> i32
          %6 = "arith.muli"(%5, %5) : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
      "scf.for"(%0, %arg0, %arg1) ({
        ^bb0(%arg2: i32):
          %5 = "arith.addi"(%arg2, %arg1) : (i32, i32) -> i32
          %6 = "arith.muli"(%5, %5) : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
      "tt.return"(%4) : (i32) -> i32
  }) : (i32, i32) -> i32
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "helper_function"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
      "tt.return"(%1) : (i32) -> i32
  }) : (i32) -> i32
}) : () -> ()