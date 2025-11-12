"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xf32>) -> tensor<8x8xf32>, sym_name = "test_complex_operations"}> ({
  ^bb0(%arg0: tensor<8x8xf32>):
    %0 = "arith.constant"() <{value = dense<42.0> : tensor<8x8xf32>}> : () -> tensor<8x8xf32>
    %1 = "arith.addf"(%arg0, %0) : (tensor<8x8xf32>, tensor<8x8xf32>) -> tensor<8x8xf32>
    %2 = "arith.cmpf"(%arg0, %0) <{predicate = "oeq"}> : (tensor<8x8xf32>, tensor<8x8xf32>) -> tensor<8x8xi1>
    %3 = "tosa.const"() <{value = 1 : i32}> : () -> i32
    "scf.for"() ({
      ^bb1(%iv: i32):
        %4 = "arith.cmpi"(%iv, %3) <{predicate = "slt"}> : (i32, i32) -> i1
        "scf.if"(%4) ({
          ^bb2:
            %5 = "arith.addi"(%iv, %3) : (i32, i32) -> i32
            "scf.yield"(%5) : (i32) -> ()
        }) : (i1) -> ()
        "scf.yield"() : () -> ()
    }) : (i32, i32) -> ()
    "func.return"(%1) : (tensor<8x8xf32>) -> ()
  }) : () -> ()
}) {func.noinline} : () -> ()