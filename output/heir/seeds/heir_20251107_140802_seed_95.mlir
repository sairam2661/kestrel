"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi16>, index) -> i16, sym_name = "tensor_aggregate_with_conditional"}> ({
  ^bb0(%arg0: tensor<16xi16>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : i16}> : () -> i16
    %3 = "arith.constant"() <{value = 3 : i16}> : () -> i16
    %4 = "arith.constant"() <{value = 5 : i16}> : () -> i16
    %5 = "arith.constant"() <{value = 7 : i16}> : () -> i16
    %6 = "arith.constant"() <{value = 9 : i16}> : () -> i16
    %7 = "arith.constant"() <{value = 11 : i16}> : () -> i16
    %8 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %9 = "scf.for"(%arg1, %0, %1, %2) ({
    ^bb0(%arg10: index, %arg11: i16):
      %12 = "tensor.extract"(%arg0, %arg10) : (tensor<16xi16>, index) -> i16
      %13 = "arith.cmpi"(%12, %3) <{predicate = 3 : i64}> : (i16, i16) -> i1
      %14:2 = "scf.if"(%13) ({
        %15 = "arith.addi"(%arg11, %12) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
        "scf.yield"(%15) : (i16) -> ()
      }, {
        %16 = "scf.for"(%0, %4, %1, %5) ({
        ^bb0(%arg12: index, %arg13: i16):
          %17 = "arith.cmpi"(%13, %6) <{predicate = 3 : i64}> : (i16, i16) -> i1
          %18:2 = "scf.if"(%17) ({
            %19 = "arith.addi"(%arg13, %12) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
            "scf.yield"(%19) : (i16) -> ()
          }, {
            %20 = "scf.for"(%0, %7, %1, %6) ({
            ^bb0(%arg14: index, %arg15: i16):
              %21 = "arith.cmpi"(%15, %8) <{predicate = 3 : i64}> : (i16, i16) -> i1
              %22:2 = "scf.if"(%21) ({
                %23 = "arith.addi"(%arg15, %12) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
                "scf.yield"(%23) : (i16) -> ()
              }, {
                "scf.yield"(%arg15) : (i16) -> ()
              }) : (i1) -> (i16)
              "scf.yield"(%22#0) : (i16) -> ()
            }) {lower = 0 : i64, upper = 1 : i64} : (index, index, index, i16) -> i16
            "scf.yield"(%20) : (i16) -> ()
          }) : (i1) -> (i16)
          "scf.yield"(%18#0) : (i16) -> ()
        }) {lower = 0 : i64, upper = 1 : i64} : (index, index, index, i16) -> i16
        "scf.yield"(%16) : (i16) -> ()
      }) : (i1) -> (i16)
      "scf.yield"(%14#0) : (i16) -> ()
    }) {lower = 0 : i64, upper = 16 : i64} : (index, index, index, i16) -> i16
    "func.return"(%9) : (i16) -> ()
  }) : () -> ()
}) : () -> ()