"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_reduce", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.subi"(%0, %arg2) : (i32, i32) -> i32
      %2 = "tt.make_range"(%1) <{lo = 0 : index, hi = 10 : index}> : (i32) -> index
      %3 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
        ^bb1(%iv: index):
          %4 = "tt.reduce"() ({
            ^bb2(%acc: i32, %elem: i32):
              %5 = "arith.addi"(%acc, %elem) : (i32, i32) -> i32
              "scf.yield"(%5) : (i32) -> i32
          }) : (i32) -> i32
          "scf.yield"() : () -> ()
      }) : () -> ()
      "tt.return"(%1) : (i32) -> i32
  }) : (i32, i32, i32) -> i32
}) : () -> ()