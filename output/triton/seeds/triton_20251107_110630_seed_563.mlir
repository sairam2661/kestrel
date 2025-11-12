"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.subi"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %5 = "arith.muli"(%3, %4) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %7 = "arith.divsi"(%5, %6) : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "arith.select"(%7, %8, %arg0) : (i32, i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> i32
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "reduce_example"}> ({
  ^bb0(%arg1: i32):
    %0 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<10xi32>}> : () -> tensor<10xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %3 = "tt.reduce"() ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (tensor<10xi32>) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> i32
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "nested_control_flow"}> ({
  ^bb0(%arg2: i32):
    "scf.for"(%arg2, %arg2, %arg2) ({
    ^bb0(%arg3: i32):
      "scf.if"(%arg3) ({
        "scf.yield"(%arg3) : (i32) -> ()
      }, {
        "scf.yield"(%arg2) : (i32) -> ()
      }) : (i32) -> i32
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 3 : i32} : (i32, i32, i32) -> ()
    "tt.return"(%arg2) : (i32) -> ()
  }) : () -> i32
}) : () -> ()