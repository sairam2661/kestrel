"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "complex_flow_test"}> ({
  ^bb0(%arg0: index):
    %1 = "arith.constant"() <{value = 42 : index}> : () -> index
    %2 = "arith.addi"(%arg0, %1) : (index, index) -> index
    %3 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %4 = "arith.addi"(%iv, %2) : (index, index) -> index
        %5 = "arith.cmpi"(%4, %1, "eq") : (index, index) -> i1
        ^bb2(%cond: i1):
          "scf.yield"() : () -> ()
        ^bb3(%cond: i1):
          %6 = "arith.addi"(%iv, %1) : (index, index) -> index
          %7 = "arith.cmpi"(%6, %2, "eq") : (index, index) -> i1
          %8 = "arith.select"(%7, %6, %iv) : (i1, index, index) -> index
          "scf.yield"(%8) : (index) -> ()
      ^bb4(%iv: index):
        "scf.yield"(%iv) : (index) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()