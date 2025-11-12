"builtin.module"() ({
  "vm.module"() <{sym_name = "comparison_ops"}> ({
    "vm.export"() <{export_name = "test_cmp_lt_s_0", function_ref = @test_cmp_lt_s_0}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %66 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %67 = "util.optimization_barrier"(%66) : (i32) -> i32
      %68 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %69 = "util.optimization_barrier"(%68) : (i32) -> i32
      %70 = "vm.cmp.lt.i32.s"(%67, %69) : (i32, i32) -> i32
      %71 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%70, %71) <{message = "2 < -2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_s_0"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_s_1", function_ref = @test_cmp_lt_s_1}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %60 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %61 = "util.optimization_barrier"(%60) : (i32) -> i32
      %62 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %63 = "util.optimization_barrier"(%62) : (i32) -> i32
      %64 = "vm.cmp.lt.i32.s"(%61, %63) : (i32, i32) -> i32
      %65 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%64, %65) <{message = "-2 < 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_s_1"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_s_2", function_ref = @test_cmp_lt_s_2}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %54 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %55 = "util.optimization_barrier"(%54) : (i32) -> i32
      %56 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %57 = "util.optimization_barrier"(%56) : (i32) -> i32
      %58 = "vm.cmp.lt.i32.s"(%55, %57) : (i32, i32) -> i32
      %59 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%58, %59) <{message = "4294967295 (UINT_MAX) < 2"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_s_2"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_u_0", function_ref = @test_cmp_lt_u_0}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %48 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %49 = "util.optimization_barrier"(%48) : (i32) -> i32
      %50 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %51 = "util.optimization_barrier"(%50) : (i32) -> i32
      %52 = "vm.cmp.lt.i32.u"(%49, %51) : (i32, i32) -> i32
      %53 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%52, %53) <{message = "2 < -2 (as unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_u_0"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_u_1", function_ref = @test_cmp_lt_u_1}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %42 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %43 = "util.optimization_barrier"(%42) : (i32) -> i32
      %44 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %45 = "util.optimization_barrier"(%44) : (i32) -> i32
      %46 = "vm.cmp.lt.i32.u"(%43, %45) : (i32, i32) -> i32
      %47 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%46, %47) <{message = "-2 < 2 (as unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_u_1"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lt_u_2", function_ref = @test_cmp_lt_u_2}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %36 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %37 = "util.optimization_barrier"(%36) : (i32) -> i32
      %38 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %39 = "util.optimization_barrier"(%38) : (i32) -> i32
      %40 = "vm.cmp.lt.i32.u"(%37, %39) : (i32, i32) -> i32
      %41 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      "vm.check.eq"(%40, %41) <{message = "4294967295 (UINT_MAX) < 2 (as unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lt_u_2"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_lte", function_ref = @test_cmp_lte}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %24 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %25 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %26 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %27 = "util.optimization_barrier"(%26) : (i32) -> i32
      %28 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %29 = "util.optimization_barrier"(%28) : (i32) -> i32
      %30 = "vm.cmp.lte.i32.s"(%27, %29) : (i32, i32) -> i32
      "vm.check.eq"(%30, %24) <{message = "-2 <= 2"}> : (i32, i32) -> ()
      %31 = "vm.cmp.lte.i32.s"(%29, %27) : (i32, i32) -> i32
      "vm.check.eq"(%31, %25) <{message = "2 <= -2"}> : (i32, i32) -> ()
      %32 = "vm.cmp.lte.i32.s"(%29, %29) : (i32, i32) -> i32
      "vm.check.eq"(%32, %24) <{message = "2 <= 2"}> : (i32, i32) -> ()
      %33 = "vm.cmp.lte.i32.u"(%27, %29) : (i32, i32) -> i32
      "vm.check.eq"(%33, %25) <{message = "-2 <= 2 (unsigned)"}> : (i32, i32) -> ()
      %34 = "vm.cmp.lte.i32.u"(%29, %27) : (i32, i32) -> i32
      "vm.check.eq"(%34, %24) <{message = "2 <= -2 (unsigned)"}> : (i32, i32) -> ()
      %35 = "vm.cmp.lte.i32.u"(%29, %29) : (i32, i32) -> i32
      "vm.check.eq"(%35, %24) <{message = "2 <= 2 (unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_lte"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_gt", function_ref = @test_cmp_gt}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %13 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %14 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %15 = "util.optimization_barrier"(%14) : (i32) -> i32
      %16 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %17 = "util.optimization_barrier"(%16) : (i32) -> i32
      %18 = "vm.cmp.gt.i32.s"(%15, %17) : (i32, i32) -> i32
      "vm.check.eq"(%18, %13) <{message = "-2 > 2"}> : (i32, i32) -> ()
      %19 = "vm.cmp.gt.i32.s"(%17, %15) : (i32, i32) -> i32
      "vm.check.eq"(%19, %12) <{message = "2 > -2"}> : (i32, i32) -> ()
      %20 = "vm.cmp.gt.i32.s"(%17, %17) : (i32, i32) -> i32
      "vm.check.eq"(%20, %13) <{message = "2 > 2"}> : (i32, i32) -> ()
      %21 = "vm.cmp.gt.i32.u"(%15, %17) : (i32, i32) -> i32
      "vm.check.eq"(%21, %12) <{message = "-2 > 2 (unsigned)"}> : (i32, i32) -> ()
      %22 = "vm.cmp.gt.i32.u"(%17, %15) : (i32, i32) -> i32
      "vm.check.eq"(%22, %13) <{message = "2 > -2 (unsigned)"}> : (i32, i32) -> ()
      %23 = "vm.cmp.gt.i32.u"(%17, %17) : (i32, i32) -> i32
      "vm.check.eq"(%23, %13) <{message = "2 > 2 (unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_gt"} : () -> ()
    "vm.export"() <{export_name = "test_cmp_gte", function_ref = @test_cmp_gte}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %2 = "vm.const.i32"() <{value = -2 : i32}> : () -> i32
      %3 = "util.optimization_barrier"(%2) : (i32) -> i32
      %4 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %5 = "util.optimization_barrier"(%4) : (i32) -> i32
      %6 = "vm.cmp.gte.i32.s"(%3, %5) : (i32, i32) -> i32
      "vm.check.eq"(%6, %1) <{message = "-2 >= 2"}> : (i32, i32) -> ()
      %7 = "vm.cmp.gte.i32.s"(%5, %3) : (i32, i32) -> i32
      "vm.check.eq"(%7, %0) <{message = "2 >= -2"}> : (i32, i32) -> ()
      %8 = "vm.cmp.gte.i32.s"(%5, %5) : (i32, i32) -> i32
      "vm.check.eq"(%8, %0) <{message = "2 >= 2"}> : (i32, i32) -> ()
      %9 = "vm.cmp.gte.i32.u"(%3, %5) : (i32, i32) -> i32
      "vm.check.eq"(%9, %0) <{message = "-2 >= 2 (unsigned)"}> : (i32, i32) -> ()
      %10 = "vm.cmp.gte.i32.u"(%5, %3) : (i32, i32) -> i32
      "vm.check.eq"(%10, %1) <{message = "2 >= -2 (unsigned)"}> : (i32, i32) -> ()
      %11 = "vm.cmp.gte.i32.u"(%5, %5) : (i32, i32) -> i32
      "vm.check.eq"(%11, %0) <{message = "2 >= 2 (unsigned)"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_cmp_gte"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

