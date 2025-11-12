"builtin.module"() ({
  "vm.module"() <{sym_name = "comparison_ops_f32"}> ({
    "vm.export"() <{export_name = "test_cmp_lt_0_f32", function_ref = @test_cmp_lt_0_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %49 = "vm.const.f32"() <{value = 4.000000e+00 : f32}> : () -> f32
      %50 = "util.optimization_barrier"(%49) : (f32) -> f32
      %51 = "vm.const.f32"() <{value = -4.000000e+00 : f32}> : () -> f32
      %52 = "util.optimization_barrier"(%51) : (f32) -> f32
      %53 = "vm.cmp.lt.f32.o"(%50, %52) : (f32, f32) -> i32
      %54 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%53, %54) <{message = "4.0 < -4.0"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_0_f32"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_1_f32", function_ref = @test_cmp_lt_1_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %43 = "vm.const.f32"() <{value = -4.000000e+00 : f32}> : () -> f32
      %44 = "util.optimization_barrier"(%43) : (f32) -> f32
      %45 = "vm.const.f32"() <{value = 4.000000e+00 : f32}> : () -> f32
      %46 = "util.optimization_barrier"(%45) : (f32) -> f32
      %47 = "vm.cmp.lt.f32.o"(%44, %46) : (f32, f32) -> i32
      %48 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%47, %48) <{message = "-4.0 < 4.0"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_1_f32"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_eq_f32_near", function_ref = @test_cmp_eq_f32_near}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %27 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %28 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %29 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %30 = "util.optimization_barrier"(%29) : (f32) -> f32
      %31 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %32 = "util.optimization_barrier"(%31) : (f32) -> f32
      %33 = "vm.cmp.eq.f32.near"(%30, %32) : (f32, f32) -> i32
      "vm.check.eq"(%33, %28) <{message = "-2 !~ 2"}> : (i32, i32) -> ()
      %34 = "vm.cmp.eq.f32.near"(%32, %30) : (f32, f32) -> i32
      "vm.check.eq"(%34, %28) <{message = "2 !~ -2"}> : (i32, i32) -> ()
      %35 = "vm.cmp.eq.f32.near"(%32, %32) : (f32, f32) -> i32
      "vm.check.eq"(%35, %27) <{message = "2 ~ 2"}> : (i32, i32) -> ()
      %36 = "vm.cmp.eq.f32.near"(%30, %30) : (f32, f32) -> i32
      "vm.check.eq"(%36, %27) <{message = "-2 ~ -2"}> : (i32, i32) -> ()
      %37 = "vm.const.f32"() <{value = 1.000020e+00 : f32}> : () -> f32
      %38 = "util.optimization_barrier"(%37) : (f32) -> f32
      %39 = "vm.const.f32"() <{value = 1.000030e+00 : f32}> : () -> f32
      %40 = "util.optimization_barrier"(%39) : (f32) -> f32
      %41 = "vm.cmp.eq.f32.near"(%38, %40) : (f32, f32) -> i32
      "vm.check.eq"(%41, %27) <{message = "1.00002 ~ 1.00003"}> : (i32, i32) -> ()
      %42 = "vm.cmp.eq.f32.near"(%38, %32) : (f32, f32) -> i32
      "vm.check.eq"(%42, %28) <{message = "1.00002 !~ 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_eq_f32_near"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lte_f32", function_ref = @test_cmp_lte_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %18 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %19 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %20 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %21 = "util.optimization_barrier"(%20) : (f32) -> f32
      %22 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %23 = "util.optimization_barrier"(%22) : (f32) -> f32
      %24 = "vm.cmp.lte.f32.o"(%21, %23) : (f32, f32) -> i32
      "vm.check.eq"(%24, %18) <{message = "-2 <= 2"}> : (i32, i32) -> ()
      %25 = "vm.cmp.lte.f32.o"(%23, %21) : (f32, f32) -> i32
      "vm.check.eq"(%25, %19) <{message = "2 <= -2"}> : (i32, i32) -> ()
      %26 = "vm.cmp.lte.f32.o"(%23, %23) : (f32, f32) -> i32
      "vm.check.eq"(%26, %18) <{message = "2 <= 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lte_f32"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_gt_f32", function_ref = @test_cmp_gt_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %9 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %10 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %11 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %12 = "util.optimization_barrier"(%11) : (f32) -> f32
      %13 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %14 = "util.optimization_barrier"(%13) : (f32) -> f32
      %15 = "vm.cmp.gt.f32.o"(%12, %14) : (f32, f32) -> i32
      "vm.check.eq"(%15, %10) <{message = "-2 > 2"}> : (i32, i32) -> ()
      %16 = "vm.cmp.gt.f32.o"(%14, %12) : (f32, f32) -> i32
      "vm.check.eq"(%16, %9) <{message = "2 > -2"}> : (i32, i32) -> ()
      %17 = "vm.cmp.gt.f32.o"(%14, %14) : (f32, f32) -> i32
      "vm.check.eq"(%17, %10) <{message = "2 > 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_gt_f32"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_gte_f32", function_ref = @test_cmp_gte_f32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %2 = "vm.const.f32"() <{value = -2.000000e+00 : f32}> : () -> f32
      %3 = "util.optimization_barrier"(%2) : (f32) -> f32
      %4 = "vm.const.f32"() <{value = 2.000000e+00 : f32}> : () -> f32
      %5 = "util.optimization_barrier"(%4) : (f32) -> f32
      %6 = "vm.cmp.gte.f32.o"(%3, %5) : (f32, f32) -> i32
      "vm.check.eq"(%6, %1) <{message = "-2 >= 2"}> : (i32, i32) -> ()
      %7 = "vm.cmp.gte.f32.o"(%5, %3) : (f32, f32) -> i32
      "vm.check.eq"(%7, %0) <{message = "2 >= -2"}> : (i32, i32) -> ()
      %8 = "vm.cmp.gte.f32.o"(%5, %5) : (f32, f32) -> i32
      "vm.check.eq"(%8, %0) <{message = "2 >= 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_gte_f32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

