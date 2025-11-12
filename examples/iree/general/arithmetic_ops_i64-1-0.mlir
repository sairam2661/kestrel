"builtin.module"() ({
  "vm.module"() <{sym_name = "arithmetic_ops_i64"}> ({
    "vm.export"() <{export_name = "test_add_i64", function_ref = @test_add_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %100 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %101 = "util.optimization_barrier"(%100) : (i64) -> i64
      %102 = "vm.add.i64"(%101, %101) : (i64, i64) -> i64
      %103 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      "vm.check.eq"(%102, %103) <{message = "1+1=2"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_add_i64"} : () -> ()
    "vm.export"() <{export_name = "test_sub_i64", function_ref = @test_sub_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %94 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %95 = "util.optimization_barrier"(%94) : (i64) -> i64
      %96 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %97 = "util.optimization_barrier"(%96) : (i64) -> i64
      %98 = "vm.sub.i64"(%95, %97) : (i64, i64) -> i64
      %99 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      "vm.check.eq"(%98, %99) <{message = "3-2=1"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_sub_i64"} : () -> ()
    "vm.export"() <{export_name = "test_mul_i64", function_ref = @test_mul_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %90 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %91 = "util.optimization_barrier"(%90) : (i64) -> i64
      %92 = "vm.mul.i64"(%91, %91) : (i64, i64) -> i64
      %93 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      "vm.check.eq"(%92, %93) <{message = "2*2=4"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_mul_i64"} : () -> ()
    "vm.export"() <{export_name = "test_div_i64s", function_ref = @test_div_i64s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %84 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %85 = "util.optimization_barrier"(%84) : (i64) -> i64
      %86 = "vm.const.i64"() <{value = -2 : i64}> : () -> i64
      %87 = "util.optimization_barrier"(%86) : (i64) -> i64
      %88 = "vm.div.i64.s"(%85, %87) : (i64, i64) -> i64
      %89 = "vm.const.i64"() <{value = -2 : i64}> : () -> i64
      "vm.check.eq"(%88, %89) <{message = "4/-2=-2"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_div_i64s"} : () -> ()
    "vm.export"() <{export_name = "test_div_i64u", function_ref = @test_div_i64u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %78 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %79 = "util.optimization_barrier"(%78) : (i64) -> i64
      %80 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %81 = "util.optimization_barrier"(%80) : (i64) -> i64
      %82 = "vm.div.i64.u"(%79, %81) : (i64, i64) -> i64
      %83 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      "vm.check.eq"(%82, %83) <{message = "4/2=2"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_div_i64u"} : () -> ()
    "vm.export"() <{export_name = "test_rem_i64s", function_ref = @test_rem_i64s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %72 = "vm.const.i64"() <{value = -3 : i64}> : () -> i64
      %73 = "util.optimization_barrier"(%72) : (i64) -> i64
      %74 = "vm.const.i64"() <{value = -2 : i64}> : () -> i64
      %75 = "util.optimization_barrier"(%74) : (i64) -> i64
      %76 = "vm.rem.i64.s"(%73, %75) : (i64, i64) -> i64
      %77 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      "vm.check.eq"(%76, %77) <{message = "-3%-2=-1"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_rem_i64s"} : () -> ()
    "vm.export"() <{export_name = "test_rem_i64u", function_ref = @test_rem_i64u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %66 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %67 = "util.optimization_barrier"(%66) : (i64) -> i64
      %68 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %69 = "util.optimization_barrier"(%68) : (i64) -> i64
      %70 = "vm.rem.i64.u"(%67, %69) : (i64, i64) -> i64
      %71 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      "vm.check.eq"(%70, %71) <{message = "3%2=1"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_rem_i64u"} : () -> ()
    "vm.export"() <{export_name = "test_fma_i64", function_ref = @test_fma_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %58 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %59 = "util.optimization_barrier"(%58) : (i64) -> i64
      %60 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %61 = "util.optimization_barrier"(%60) : (i64) -> i64
      %62 = "vm.const.i64"() <{value = 5 : i64}> : () -> i64
      %63 = "util.optimization_barrier"(%62) : (i64) -> i64
      %64 = "vm.fma.i64"(%59, %61, %63) : (i64, i64, i64) -> i64
      %65 = "vm.const.i64"() <{value = 11 : i64}> : () -> i64
      "vm.check.eq"(%64, %65) <{message = "2*3+5=11"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_fma_i64"} : () -> ()
    "vm.export"() <{export_name = "test_abs_i64", function_ref = @test_abs_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %54 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %55 = "util.optimization_barrier"(%54) : (i64) -> i64
      %56 = "vm.abs.i64"(%55) : (i64) -> i64
      %57 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      "vm.check.eq"(%56, %57) <{message = "abs(-1)=1"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_abs_i64"} : () -> ()
    "vm.export"() <{export_name = "test_min_i64s", function_ref = @test_min_i64s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %49 = "vm.const.i64"() <{value = -3 : i64}> : () -> i64
      %50 = "util.optimization_barrier"(%49) : (i64) -> i64
      %51 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %52 = "util.optimization_barrier"(%51) : (i64) -> i64
      %53 = "vm.min.i64.s"(%50, %52) : (i64, i64) -> i64
      "vm.check.eq"(%53, %49) <{message = "smin(-3,2)=-3"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_min_i64s"} : () -> ()
    "vm.export"() <{export_name = "test_min_i64u", function_ref = @test_min_i64u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %44 = "vm.const.i64"() <{value = -3 : i64}> : () -> i64
      %45 = "util.optimization_barrier"(%44) : (i64) -> i64
      %46 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %47 = "util.optimization_barrier"(%46) : (i64) -> i64
      %48 = "vm.min.i64.u"(%45, %47) : (i64, i64) -> i64
      "vm.check.eq"(%48, %46) <{message = "umin(-3,2)=2"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_min_i64u"} : () -> ()
    "vm.export"() <{export_name = "test_max_i64s", function_ref = @test_max_i64s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %39 = "vm.const.i64"() <{value = -3 : i64}> : () -> i64
      %40 = "util.optimization_barrier"(%39) : (i64) -> i64
      %41 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %42 = "util.optimization_barrier"(%41) : (i64) -> i64
      %43 = "vm.max.i64.s"(%40, %42) : (i64, i64) -> i64
      "vm.check.eq"(%43, %41) <{message = "smax(-3,2)=2"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_max_i64s"} : () -> ()
    "vm.export"() <{export_name = "test_max_i64u", function_ref = @test_max_i64u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %34 = "vm.const.i64"() <{value = -3 : i64}> : () -> i64
      %35 = "util.optimization_barrier"(%34) : (i64) -> i64
      %36 = "vm.const.i64"() <{value = 2 : i64}> : () -> i64
      %37 = "util.optimization_barrier"(%36) : (i64) -> i64
      %38 = "vm.max.i64.u"(%35, %37) : (i64, i64) -> i64
      "vm.check.eq"(%38, %34) <{message = "umax(-3,2)=-3"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_max_i64u"} : () -> ()
    "vm.export"() <{export_name = "test_not_i64", function_ref = @test_not_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %30 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %31 = "util.optimization_barrier"(%30) : (i64) -> i64
      %32 = "vm.not.i64"(%31) : (i64) -> i64
      %33 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      "vm.check.eq"(%32, %33) <{message = "~0=-1"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_not_i64"} : () -> ()
    "vm.export"() <{export_name = "test_and_i64", function_ref = @test_and_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %24 = "vm.const.i64"() <{value = 5 : i64}> : () -> i64
      %25 = "util.optimization_barrier"(%24) : (i64) -> i64
      %26 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %27 = "util.optimization_barrier"(%26) : (i64) -> i64
      %28 = "vm.and.i64"(%25, %27) : (i64, i64) -> i64
      %29 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      "vm.check.eq"(%28, %29) <{message = "5&3=1"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_and_i64"} : () -> ()
    "vm.export"() <{export_name = "test_or_i64", function_ref = @test_or_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %18 = "vm.const.i64"() <{value = 5 : i64}> : () -> i64
      %19 = "util.optimization_barrier"(%18) : (i64) -> i64
      %20 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %21 = "util.optimization_barrier"(%20) : (i64) -> i64
      %22 = "vm.or.i64"(%19, %21) : (i64, i64) -> i64
      %23 = "vm.const.i64"() <{value = 7 : i64}> : () -> i64
      "vm.check.eq"(%22, %23) <{message = "5|3=7"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_or_i64"} : () -> ()
    "vm.export"() <{export_name = "test_xor_i64", function_ref = @test_xor_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.i64"() <{value = 5 : i64}> : () -> i64
      %13 = "util.optimization_barrier"(%12) : (i64) -> i64
      %14 = "vm.const.i64"() <{value = 3 : i64}> : () -> i64
      %15 = "util.optimization_barrier"(%14) : (i64) -> i64
      %16 = "vm.xor.i64"(%13, %15) : (i64, i64) -> i64
      %17 = "vm.const.i64"() <{value = 6 : i64}> : () -> i64
      "vm.check.eq"(%16, %17) <{message = "5^3=6"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_xor_i64"} : () -> ()
    "vm.export"() <{export_name = "test_ctlz_i64_const_zero", function_ref = @test_ctlz_i64_const_zero}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %8 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %9 = "util.optimization_barrier"(%8) : (i64) -> i64
      %10 = "vm.ctlz.i64"(%9) : (i64) -> i64
      %11 = "vm.const.i64"() <{value = 64 : i64}> : () -> i64
      "vm.check.eq"(%10, %11) <{message = "ctlz(0)=64"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_ctlz_i64_const_zero"} : () -> ()
    "vm.export"() <{export_name = "test_ctlz_i64_const_1", function_ref = @test_ctlz_i64_const_1}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %4 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %5 = "util.optimization_barrier"(%4) : (i64) -> i64
      %6 = "vm.ctlz.i64"(%5) : (i64) -> i64
      %7 = "vm.const.i64"() <{value = 63 : i64}> : () -> i64
      "vm.check.eq"(%6, %7) <{message = "ctlz(1)=63"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_ctlz_i64_const_1"} : () -> ()
    "vm.export"() <{export_name = "test_ctlz_i64_const_ffffffffffffffff", function_ref = @test_ctlz_i64_const_ffffffffffffffff}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %1 = "util.optimization_barrier"(%0) : (i64) -> i64
      %2 = "vm.ctlz.i64"(%1) : (i64) -> i64
      %3 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      "vm.check.eq"(%2, %3) <{message = "ctlz(0xFFFFFFFFFFFFFFFF)=0"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_ctlz_i64_const_ffffffffffffffff"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

