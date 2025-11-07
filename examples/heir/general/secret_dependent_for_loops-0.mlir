"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>, sym_name = "for_loop_with_data_dependent_upper_bound"}> ({
  ^bb0(%arg30: !secret.secret<tensor<32xi16>>, %arg31: !secret.secret<index>):
    %32 = "arith.constant"() <{value = 0 : index}> : () -> index
    %33 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %34 = "arith.constant"() <{value = 1 : index}> : () -> index
    %35 = "secret.generic"(%arg30, %arg31) ({
    ^bb0(%arg32: tensor<32xi16>, %arg33: index):
      %36 = "scf.for"(%32, %arg33, %34, %33) ({
      ^bb0(%arg34: index, %arg35: i16):
        %37 = "tensor.extract"(%arg32, %arg34) : (tensor<32xi16>, index) -> i16
        %38 = "arith.addi"(%37, %arg35) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%38) : (i16) -> ()
      }) {lower = 0 : i64, upper = 42 : i64} : (index, index, index, i16) -> i16
      "secret.yield"(%36) : (i16) -> ()
    }) : (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>
    "func.return"(%35) : (!secret.secret<i16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>, sym_name = "for_loop_with_data_dependent_lower_bound"}> ({
  ^bb0(%arg24: !secret.secret<tensor<32xi16>>, %arg25: !secret.secret<index>):
    %25 = "arith.constant"() <{value = 32 : index}> : () -> index
    %26 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %27 = "arith.constant"() <{value = 1 : index}> : () -> index
    %28 = "secret.generic"(%arg24, %arg25) ({
    ^bb0(%arg26: tensor<32xi16>, %arg27: index):
      %29 = "scf.for"(%arg27, %25, %27, %26) ({
      ^bb0(%arg28: index, %arg29: i16):
        %30 = "tensor.extract"(%arg26, %arg28) : (tensor<32xi16>, index) -> i16
        %31 = "arith.addi"(%30, %arg29) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%31) : (i16) -> ()
      }) {lower = 0 : i64, upper = 42 : i64} : (index, index, index, i16) -> i16
      "secret.yield"(%29) : (i16) -> ()
    }) : (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>
    "func.return"(%28) : (!secret.secret<i16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<tensor<32xi16>>, !secret.secret<index>, !secret.secret<index>) -> !secret.secret<i16>, sym_name = "for_loop_with_data_dependent_upper_and_lower_bounds"}> ({
  ^bb0(%arg16: !secret.secret<tensor<32xi16>>, %arg17: !secret.secret<index>, %arg18: !secret.secret<index>):
    %19 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %20 = "arith.constant"() <{value = 1 : index}> : () -> index
    %21 = "secret.generic"(%arg16, %arg17, %arg18) ({
    ^bb0(%arg19: tensor<32xi16>, %arg20: index, %arg21: index):
      %22 = "scf.for"(%arg20, %arg21, %20, %19) ({
      ^bb0(%arg22: index, %arg23: i16):
        %23 = "tensor.extract"(%arg19, %arg22) : (tensor<32xi16>, index) -> i16
        %24 = "arith.addi"(%23, %arg23) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%24) : (i16) -> ()
      }) {lower = 0 : i64, upper = 42 : i64} : (index, index, index, i16) -> i16
      "secret.yield"(%22) : (i16) -> ()
    }) : (!secret.secret<tensor<32xi16>>, !secret.secret<index>, !secret.secret<index>) -> !secret.secret<i16>
    "func.return"(%21) : (!secret.secret<i16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>, sym_name = "for_loop_with_data_dependent_upper_bound_multiple_iter_args"}> ({
  ^bb0(%arg9: !secret.secret<tensor<32xi16>>, %arg10: !secret.secret<index>):
    %10 = "arith.constant"() <{value = 0 : index}> : () -> index
    %11 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %12 = "arith.constant"() <{value = 1 : index}> : () -> index
    %13 = "secret.generic"(%arg9, %arg10) ({
    ^bb0(%arg11: tensor<32xi16>, %arg12: index):
      %14:2 = "scf.for"(%10, %arg12, %12, %11, %11) ({
      ^bb0(%arg13: index, %arg14: i16, %arg15: i16):
        %16 = "tensor.extract"(%arg11, %arg13) : (tensor<32xi16>, index) -> i16
        %17 = "arith.addi"(%16, %arg14) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        %18 = "arith.muli"(%16, %arg15) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
        "scf.yield"(%17, %18) : (i16, i16) -> ()
      }) {lower = 0 : i64, upper = 42 : i64} : (index, index, index, i16, i16) -> (i16, i16)
      %15 = "arith.addi"(%14#0, %14#1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%15) : (i16) -> ()
    }) : (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>
    "func.return"(%13) : (!secret.secret<i16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<tensor<16xi16>>, !secret.secret<index>, !secret.secret<i16>) -> (!secret.secret<i16>, !secret.secret<i16>), sym_name = "partial_sum_with_secret_threshold"}> ({
  ^bb0(%arg0: !secret.secret<tensor<16xi16>>, %arg1: !secret.secret<index>, %arg2: !secret.secret<i16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %3:2 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: tensor<16xi16>, %arg4: index, %arg5: i16):
      %4:2 = "scf.for"(%0, %arg4, %1, %2, %2) ({
      ^bb0(%arg6: index, %arg7: i16, %arg8: i16):
        %5 = "arith.cmpi"(%arg7, %arg5) <{predicate = 2 : i64}> : (i16, i16) -> i1
        %6 = "tensor.extract"(%arg3, %arg6) : (tensor<16xi16>, index) -> i16
        %7:2 = "scf.if"(%5) ({
          %9 = "arith.addi"(%arg7, %6) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
          "scf.yield"(%9, %arg8) : (i16, i16) -> ()
        }, {
          %8 = "arith.addi"(%arg8, %6) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
          "scf.yield"(%arg7, %8) : (i16, i16) -> ()
        }) : (i1) -> (i16, i16)
        "scf.yield"(%7#0, %7#1) : (i16, i16) -> ()
      }) {lower = 0 : i64, upper = 16 : i64} : (index, index, index, i16, i16) -> (i16, i16)
      "secret.yield"(%4#0, %4#1) : (i16, i16) -> ()
    }) : (!secret.secret<tensor<16xi16>>, !secret.secret<index>, !secret.secret<i16>) -> (!secret.secret<i16>, !secret.secret<i16>)
    "func.return"(%3#0, %3#1) : (!secret.secret<i16>, !secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

