"builtin.module"() ({
  "vm.module"() <{sym_name = "comparison_ops_f64"}> ({
    "vm.export"() <{export_name = "test_cmp_lt_0_f64", function_ref = @test_cmp_lt_0_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %49 = "vm.const.f64"() <{value = 4.000000e+00 : f64}> : () -> f64
      %50 = "util.optimization_barrier"(%49) : (f64) -> f64
      %51 = "vm.const.f64"() <{value = -4.000000e+00 : f64}> : () -> f64
      %52 = "util.optimization_barrier"(%51) : (f64) -> f64
      %53 = "vm.cmp.lt.f64.o"(%50, %52) : (f64, f64) -> i32
      %54 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%53, %54) <{message = "4.0 < -4.0"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_0_f64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_1_f64", function_ref = @test_cmp_lt_1_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %43 = "vm.const.f64"() <{value = -4.000000e+00 : f64}> : () -> f64
      %44 = "util.optimization_barrier"(%43) : (f64) -> f64
      %45 = "vm.const.f64"() <{value = 4.000000e+00 : f64}> : () -> f64
      %46 = "util.optimization_barrier"(%45) : (f64) -> f64
      %47 = "vm.cmp.lt.f64.o"(%44, %46) : (f64, f64) -> i32
      %48 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%47, %48) <{message = "-4.0 < 4.0"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_1_f64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_eq_f64_near", function_ref = @test_cmp_eq_f64_near}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %27 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %28 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %29 = "vm.const.f64"() <{value = -2.000000e+00 : f64}> : () -> f64
      %30 = "util.optimization_barrier"(%29) : (f64) -> f64
      %31 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      %32 = "util.optimization_barrier"(%31) : (f64) -> f64
      %33 = "vm.cmp.eq.f64.near"(%30, %32) : (f64, f64) -> i32
      "vm.check.eq"(%33, %28) <{message = "-2 !~ 2"}> : (i32, i32) -> ()
      %34 = "vm.cmp.eq.f64.near"(%32, %30) : (f64, f64) -> i32
      "vm.check.eq"(%34, %28) <{message = "2 !~ -2"}> : (i32, i32) -> ()
      %35 = "vm.cmp.eq.f64.near"(%32, %32) : (f64, f64) -> i32
      "vm.check.eq"(%35, %27) <{message = "2 ~ 2"}> : (i32, i32) -> ()
      %36 = "vm.cmp.eq.f64.near"(%30, %30) : (f64, f64) -> i32
      "vm.check.eq"(%36, %27) <{message = "-2 ~ -2"}> : (i32, i32) -> ()
      %37 = "vm.const.f64"() <{value = 1.000020e+00 : f64}> : () -> f64
      %38 = "util.optimization_barrier"(%37) : (f64) -> f64
      %39 = "vm.const.f64"() <{value = 1.000030e+00 : f64}> : () -> f64
      %40 = "util.optimization_barrier"(%39) : (f64) -> f64
      %41 = "vm.cmp.eq.f64.near"(%38, %40) : (f64, f64) -> i32
      "vm.check.eq"(%41, %27) <{message = "1.00002 ~ 1.00003"}> : (i32, i32) -> ()
      %42 = "vm.cmp.eq.f64.near"(%38, %32) : (f64, f64) -> i32
      "vm.check.eq"(%42, %28) <{message = "1.00002 !~ 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_eq_f64_near"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lte_f64", function_ref = @test_cmp_lte_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %18 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %19 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %20 = "vm.const.f64"() <{value = -2.000000e+00 : f64}> : () -> f64
      %21 = "util.optimization_barrier"(%20) : (f64) -> f64
      %22 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      %23 = "util.optimization_barrier"(%22) : (f64) -> f64
      %24 = "vm.cmp.lte.f64.o"(%21, %23) : (f64, f64) -> i32
      "vm.check.eq"(%24, %18) <{message = "-2 <= 2"}> : (i32, i32) -> ()
      %25 = "vm.cmp.lte.f64.o"(%23, %21) : (f64, f64) -> i32
      "vm.check.eq"(%25, %19) <{message = "2 <= -2"}> : (i32, i32) -> ()
      %26 = "vm.cmp.lte.f64.o"(%23, %23) : (f64, f64) -> i32
      "vm.check.eq"(%26, %18) <{message = "2 <= 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lte_f64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_gt_f64", function_ref = @test_cmp_gt_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %9 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %10 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %11 = "vm.const.f64"() <{value = -2.000000e+00 : f64}> : () -> f64
      %12 = "util.optimization_barrier"(%11) : (f64) -> f64
      %13 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      %14 = "util.optimization_barrier"(%13) : (f64) -> f64
      %15 = "vm.cmp.gt.f64.o"(%12, %14) : (f64, f64) -> i32
      "vm.check.eq"(%15, %10) <{message = "-2 > 2"}> : (i32, i32) -> ()
      %16 = "vm.cmp.gt.f64.o"(%14, %12) : (f64, f64) -> i32
      "vm.check.eq"(%16, %9) <{message = "2 > -2"}> : (i32, i32) -> ()
      %17 = "vm.cmp.gt.f64.o"(%14, %14) : (f64, f64) -> i32
      "vm.check.eq"(%17, %10) <{message = "2 > 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_gt_f64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_gte_f64", function_ref = @test_cmp_gte_f64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %2 = "vm.const.f64"() <{value = -2.000000e+00 : f64}> : () -> f64
      %3 = "util.optimization_barrier"(%2) : (f64) -> f64
      %4 = "vm.const.f64"() <{value = 2.000000e+00 : f64}> : () -> f64
      %5 = "util.optimization_barrier"(%4) : (f64) -> f64
      %6 = "vm.cmp.gte.f64.o"(%3, %5) : (f64, f64) -> i32
      "vm.check.eq"(%6, %1) <{message = "-2 >= 2"}> : (i32, i32) -> ()
      %7 = "vm.cmp.gte.f64.o"(%5, %3) : (f64, f64) -> i32
      "vm.check.eq"(%7, %0) <{message = "2 >= -2"}> : (i32, i32) -> ()
      %8 = "vm.cmp.gte.f64.o"(%5, %5) : (f64, f64) -> i32
      "vm.check.eq"(%8, %0) <{message = "2 >= 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_gte_f64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

