"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_if_nested"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c16_i32 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %0 = "scf.for"(%c0_i32, %c16_i32, %c1_i32, %arg0, %arg1) ({
    ^bb0(%i: i32, %a: tensor<16xi32>, %b: tensor<16xi32>):
      %1 = "scf.if"(%i) ({
        %2 = "arith.addi"(%a, %b) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%2) : (tensor<16xi32>) -> ()
      }, {
        %3 = "arith.subi"(%a, %b) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%3) : (tensor<16xi32>) -> ()
      }) : (i32) -> (tensor<16xi32>)
      "scf.yield"(%i, %1) : (i32, tensor<16xi32>) -> ()
    }) : (i32, i32, i32, tensor<16xi32>, tensor<16xi32>) -> (i32, tensor<16xi32>)
    "tt.return"(%0#1) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_if_nested_with_ternary"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c16_i32 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %0 = "scf.for"(%c0_i32, %c16_i32, %c1_i32, %arg0, %arg1, %arg2) ({
    ^bb0(%i: i32, %a: tensor<16xi32>, %b: tensor<16xi32>, %c: tensor<16xi32>):
      %1 = "scf.if"(%i) ({
        %2 = "arith.addi"(%a, %b) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%2) : (tensor<16xi32>) -> ()
      }, {
        %3 = "scf.if"(%i) ({
          %4 = "arith.subi"(%a, %c) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%4) : (tensor<16xi32>) -> ()
        }, {
          %5 = "arith.muli"(%a, %c) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%5) : (tensor<16xi32>) -> ()
        }) : (i32) -> (tensor<16xi32>)
        "scf.yield"(%3) : (tensor<16xi32>) -> ()
      }) : (i32) -> (tensor<16xi32>)
      "scf.yield"(%i, %1) : (i32, tensor<16xi32>) -> ()
    }) : (i32, i32, i32, tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> (i32, tensor<16xi32>)
    "tt.return"(%0#1) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()