"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32}> : () -> tensor<1024xi32>
    %2 = "tt.reduce"(%1) ({
      ^bb1(%arg2: i32, %arg3: i32):
        %3 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
    }) {tt.identity = 0 : i32} : (tensor<1024xi32>) -> i32
    %4 = "arith.muli"(%2, %arg0) : (i32, i32) -> i32
    %5 = "arith.addi"(%4, %arg1) : (i32, i32) -> i32
    %6 = "arith.remsi"(%5, %0) : (i32, i32) -> i32
    %7 = "arith.cmpi"(%6, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %8 = "scf.if"(%7) ({
      %9 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%9) : (i32) -> ()
    }, {
      %10 = "arith.constant"() <{value = 24 : i32}> : () -> i32
      "scf.yield"(%10) : (i32) -> ()
    }) : (i1) -> i32
    %11 = "arith.xori"(%8, %0) : (i32, i32) -> i32
    "tt.return"(%11) : (i32) -> ()
  }) : () -> ()
}) : () -> ()