"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (i32, i32) -> (i32), sym_name = "complex_op_seq"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
    %2 = "arith.remsi"(%1, %arg1) : (i32, i32) -> i32
    %3 = "arith.divsi"(%1, %2) : (i32, i32) -> i32
    %4 = "tt.make_range"() <{start = 0 : index, end = 1024 : index, step = 1 : index}> : () -> index
    %5 = "tt.expand_dims"(%3, 0) : (i32) -> tensor<1xi32>
    %6 = "scf.for"(%4) <{lower_bound = 0 : index, upper_bound = 1024 : index, step = 1 : index}> ({
    ^bb1(%arg2: index):
      %7 = "arith.cmpi"(%arg2, %0, "slt") : (index, i32, i32) -> i1
      scf.yield
    %8 : i1
    }) : (index) -> i1
    %9 = "tt.reduce"(%5) <{axis = 0 : i32}> ({
    ^bb2(%arg3: i32, %arg4: i32):
      %10 = "arith.addi"(%arg3, %arg4) : (i32, i32) -> i32
      "tt.reduce.return"(%10) : (i32) -> ()
    }) : (tensor<1xi32>) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : (i32, i32) -> (i32)
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32} : () -> ()