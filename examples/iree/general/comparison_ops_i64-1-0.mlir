"builtin.module"() ({
  "vm.module"() <{sym_name = "comparison_ops_i64"}> ({
    "vm.export"() <{export_name = "test_cmp_lt_s_0_i64", function_ref = @test_cmp_lt_s_0_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %66 = "vm.const.i64"() <{value = 4294967295 : i64}> : () -> i64
      %67 = "util.optimization_barrier"(%66) : (i64) -> i64
      %68 = "vm.const.i64"() <{value = -4294967295 : i64}> : () -> i64
      %69 = "util.optimization_barrier"(%68) : (i64) -> i64
      %70 = "vm.cmp.lt.i64.s"(%67, %69) : (i64, i64) -> i32
      %71 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%70, %71) <{message = "4294967295 (UINT_MAX) < -4294967295 (UINT_MAX)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_s_0_i64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_s_1_i64", function_ref = @test_cmp_lt_s_1_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %60 = "vm.const.i64"() <{value = -4294967295 : i64}> : () -> i64
      %61 = "util.optimization_barrier"(%60) : (i64) -> i64
      %62 = "vm.const.i64"() <{value = 4294967295 : i64}> : () -> i64
      %63 = "util.optimization_barrier"(%62) : (i64) -> i64
      %64 = "vm.cmp.lt.i64.s"(%61, %63) : (i64, i64) -> i32
      %65 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%64, %65) <{message = "-4294967295 (UINT_MAX) < 4294967295 (UINT_MAX)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_s_1_i64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_s_2_i64", function_ref = @test_cmp_lt_s_2_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %54 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %55 = "util.optimization_barrier"(%54) : (i64) -> i64
      %56 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %57 = "util.optimization_barrier"(%56) : (i64) -> i64
      %58 = "vm.cmp.lt.i64.s"(%55, %57) : (i64, i64) -> i32
      %59 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%58, %59) <{message = "18446744073709551615 (ULONG_MAX) < 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_s_2_i64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_u_0_i64", function_ref = @test_cmp_lt_u_0_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %48 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %49 = "util.optimization_barrier"(%48) : (i64) -> i64
      %50 = "vm.const.i64"() <{value = -2 : i64}> : () -> i64
      %51 = "util.optimization_barrier"(%50) : (i64) -> i64
      %52 = "vm.cmp.lt.i64.u"(%49, %51) : (i64, i64) -> i32
      %53 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%52, %53) <{message = "2 < -2 (as unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_u_0_i64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_u_1_i64", function_ref = @test_cmp_lt_u_1_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %42 = "vm.const.i64"() <{value = -2 : i64}> : () -> i64
      %43 = "util.optimization_barrier"(%42) : (i64) -> i64
      %44 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %45 = "util.optimization_barrier"(%44) : (i64) -> i64
      %46 = "vm.cmp.lt.i64.u"(%43, %45) : (i64, i64) -> i32
      %47 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%46, %47) <{message = "-2 < 2 (as unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_u_1_i64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_u_2_i64", function_ref = @test_cmp_lt_u_2_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %36 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %37 = "util.optimization_barrier"(%36) : (i64) -> i64
      %38 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %39 = "util.optimization_barrier"(%38) : (i64) -> i64
      %40 = "vm.cmp.lt.i64.u"(%37, %39) : (i64, i64) -> i32
      %41 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%40, %41) <{message = "18446744073709551615 (ULONG_MAX) < 2 (as unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_u_2_i64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lte_i64", function_ref = @test_cmp_lte_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %24 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %25 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %26 = "vm.const.i64"() <{value = -2 : i64}> : () -> i64
      %27 = "util.optimization_barrier"(%26) : (i64) -> i64
      %28 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %29 = "util.optimization_barrier"(%28) : (i64) -> i64
      %30 = "vm.cmp.lte.i64.s"(%27, %29) : (i64, i64) -> i32
      "vm.check.eq"(%30, %24) <{message = "-2 <= 2"}> : (i32, i32) -> ()
      %31 = "vm.cmp.lte.i64.s"(%29, %27) : (i64, i64) -> i32
      "vm.check.eq"(%31, %25) <{message = "2 <= -2"}> : (i32, i32) -> ()
      %32 = "vm.cmp.lte.i64.s"(%29, %29) : (i64, i64) -> i32
      "vm.check.eq"(%32, %24) <{message = "2 <= 2"}> : (i32, i32) -> ()
      %33 = "vm.cmp.lte.i64.u"(%27, %29) : (i64, i64) -> i32
      "vm.check.eq"(%33, %25) <{message = "-2 <= 2 (unsigned)"}> : (i32, i32) -> ()
      %34 = "vm.cmp.lte.i64.u"(%29, %27) : (i64, i64) -> i32
      "vm.check.eq"(%34, %24) <{message = "2 <= -2 (unsigned)"}> : (i32, i32) -> ()
      %35 = "vm.cmp.lte.i64.u"(%29, %29) : (i64, i64) -> i32
      "vm.check.eq"(%35, %24) <{message = "2 <= 2 (unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lte_i64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_gt_i64", function_ref = @test_cmp_gt_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %13 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %14 = "vm.const.i64"() <{value = -2 : i64}> : () -> i64
      %15 = "util.optimization_barrier"(%14) : (i64) -> i64
      %16 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %17 = "util.optimization_barrier"(%16) : (i64) -> i64
      %18 = "vm.cmp.gt.i64.s"(%15, %17) : (i64, i64) -> i32
      "vm.check.eq"(%18, %13) <{message = "-2 > 2"}> : (i32, i32) -> ()
      %19 = "vm.cmp.gt.i64.s"(%17, %15) : (i64, i64) -> i32
      "vm.check.eq"(%19, %12) <{message = "2 > -2"}> : (i32, i32) -> ()
      %20 = "vm.cmp.gt.i64.s"(%17, %17) : (i64, i64) -> i32
      "vm.check.eq"(%20, %13) <{message = "2 > 2"}> : (i32, i32) -> ()
      %21 = "vm.cmp.gt.i64.u"(%15, %17) : (i64, i64) -> i32
      "vm.check.eq"(%21, %12) <{message = "-2 > 2 (unsigned)"}> : (i32, i32) -> ()
      %22 = "vm.cmp.gt.i64.u"(%17, %15) : (i64, i64) -> i32
      "vm.check.eq"(%22, %13) <{message = "2 > -2 (unsigned)"}> : (i32, i32) -> ()
      %23 = "vm.cmp.gt.i64.u"(%17, %17) : (i64, i64) -> i32
      "vm.check.eq"(%23, %13) <{message = "2 > 2 (unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_gt_i64"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_gte_i64", function_ref = @test_cmp_gte_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %2 = "vm.const.i64"() <{value = -2 : i64}> : () -> i64
      %3 = "util.optimization_barrier"(%2) : (i64) -> i64
      %4 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %5 = "util.optimization_barrier"(%4) : (i64) -> i64
      %6 = "vm.cmp.gte.i64.s"(%3, %5) : (i64, i64) -> i32
      "vm.check.eq"(%6, %1) <{message = "-2 >= 2"}> : (i32, i32) -> ()
      %7 = "vm.cmp.gte.i64.s"(%5, %3) : (i64, i64) -> i32
      "vm.check.eq"(%7, %0) <{message = "2 >= -2"}> : (i32, i32) -> ()
      %8 = "vm.cmp.gte.i64.s"(%5, %5) : (i64, i64) -> i32
      "vm.check.eq"(%8, %0) <{message = "2 >= 2"}> : (i32, i32) -> ()
      %9 = "vm.cmp.gte.i64.u"(%3, %5) : (i64, i64) -> i32
      "vm.check.eq"(%9, %0) <{message = "-2 >= 2 (unsigned)"}> : (i32, i32) -> ()
      %10 = "vm.cmp.gte.i64.u"(%5, %3) : (i64, i64) -> i32
      "vm.check.eq"(%10, %1) <{message = "2 >= -2 (unsigned)"}> : (i32, i32) -> ()
      %11 = "vm.cmp.gte.i64.u"(%5, %5) : (i64, i64) -> i32
      "vm.check.eq"(%11, %0) <{message = "2 >= 2 (unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_gte_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

